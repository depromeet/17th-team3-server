import static net.grinder.script.Grinder.grinder

import net.grinder.plugin.http.HTTPPluginControl
import net.grinder.plugin.http.HTTPRequest
import net.grinder.script.GTest
import net.grinder.scriptengine.groovy.junit.GrinderRunner
import net.grinder.scriptengine.groovy.junit.annotation.BeforeProcess
import net.grinder.scriptengine.groovy.junit.annotation.BeforeThread
import org.junit.Test
import org.junit.runner.RunWith

/**
 * Place 검색 부하 테스트 - Sequential (순차 처리) 모드
 * 
 * 기본값: processingMode=sequential
 * 
 * 사용 방법:
 *  - nGrinder에서 이 스크립트를 선택하고 테스트 실행
 *  - 스크립트 리소스 입력 불필요 (기본값으로 sequential 사용)
 */
@RunWith(GrinderRunner)
class PlaceMockLoadSequentialScenario {

    private static final GTest TEST_PLACE_SEARCH = new GTest(1, "Place 검색 (Sequential)")
    private static final Map<Long, List<Long>> MEETING_TO_USERS = new HashMap<>()
    private static HTTPRequest request
    private static String baseUrl
    private static long thinkTimeMs
    private static String mockMode
    private static String processingMode
    private static boolean enableCache
    private static int meetingCount
    private static int userCount

    // 성능 측정용 통계
    private static final Object statsLock = new Object()
    private static long totalRequests = 0
    private static long successRequests = 0
    private static long totalResponseTime = 0

    @BeforeProcess
    static void beforeProcess() {
        HTTPPluginControl.getConnectionDefaults().setTimeout(60_000)  // 60초 타임아웃 (순차 처리 고려)
        
        baseUrl = System.getProperty("baseUrl", "http://host.docker.internal:8080").trim()
        processingMode = System.getProperty("processingMode", "sequential").trim().toLowerCase()  // 기본값: sequential
        thinkTimeMs = Long.parseLong(System.getProperty("thinkTimeMs", "100"))
        mockMode = System.getProperty("mockMode", "stub")
        enableCache = Boolean.parseBoolean(System.getProperty("enableCache", "false"))
        meetingCount = Integer.parseInt(System.getProperty("meetingCount", "10"))
        userCount = Integer.parseInt(System.getProperty("userCount", "10"))

        // 10명짜리 모임 10개 설정 (meetingId 1~10, userId 1~100)
        MEETING_TO_USERS.clear()
        for (int meetingId = 1; meetingId <= meetingCount; meetingId++) {
            List<Long> users = new ArrayList<>()
            int baseUserId = (meetingId - 1) * userCount
            for (int i = 1; i <= userCount; i++) {
                users.add((long) (baseUserId + i))
            }
            MEETING_TO_USERS.put((long) meetingId, users)
        }

        request = new HTTPRequest()
        TEST_PLACE_SEARCH.record(request)

        grinder.logger.info("================================================")
        grinder.logger.info("===== Place 검색 부하 테스트 (SEQUENTIAL) =====")
        grinder.logger.info("================================================")
        grinder.logger.info("Base URL: ${baseUrl}")
        grinder.logger.info("Processing Mode: ${processingMode.toUpperCase()}")
        grinder.logger.info("Meeting Count: ${meetingCount}")
        grinder.logger.info("User Count per Meeting: ${userCount}")
        grinder.logger.info("Total Users: ${meetingCount * userCount}")
        grinder.logger.info("================================================")
    }

    @BeforeThread
    static void beforeThread() {
        grinder.statistics.delayReports = true
    }

    @Test
    void execute() {
        def startTime = System.currentTimeMillis()
        
        // 라운드 로빈으로 모임과 사용자 선택
        def meetingId = pickMeetingId()
        def userId = pickUserId(meetingId)
        
        def url = "${baseUrl}/api/v1/places?meetingId=${meetingId}"
        
        // 헤더 설정 (nGrinder 방식: HTTPClient.NVPair 배열 사용)
        def headers = []
        headers.add(new HTTPClient.NVPair("Content-Type", "application/json"))
        headers.add(new HTTPClient.NVPair("Accept", "application/json"))
        headers.add(new HTTPClient.NVPair("X-Mock-Mode", mockMode))
        headers.add(new HTTPClient.NVPair("X-Processing-Mode", processingMode))
        headers.add(new HTTPClient.NVPair("X-User-Id", String.valueOf(userId)))
        
        if (!enableCache) {
            headers.add(new HTTPClient.NVPair("Cache-Control", "no-cache"))
        }
        
        request.setHeaders(headers as HTTPClient.NVPair[])
        def response = request.GET(url)
        
        def elapsedTime = System.currentTimeMillis() - startTime

        // 통계 업데이트
        synchronized(statsLock) {
            totalRequests++
            totalResponseTime += elapsedTime
            
            if (response.statusCode == 200) {
                successRequests++
            }
        }

        // 응답 검증
        def slowThreshold = 10000
        
        if (response.statusCode != 200) {
            grinder.logger.warn("[SEQUENTIAL] 요청 실패 - Status: ${response.statusCode}, meetingId: ${meetingId}, userId: ${userId}, 응답시간: ${elapsedTime}ms")
        } else if (elapsedTime > slowThreshold) {
            grinder.logger.warn("[SEQUENTIAL] 느린 응답 - meetingId: ${meetingId}, userId: ${userId}, 응답시간: ${elapsedTime}ms")
        } else {
            grinder.logger.debug("[SEQUENTIAL] 성공 - meetingId: ${meetingId}, userId: ${userId}, 응답시간: ${elapsedTime}ms")
        }

        // 주기적으로 통계 출력 (100번째 요청마다)
        if (totalRequests % 100 == 0) {
            synchronized(statsLock) {
                def avgResponseTime = totalResponseTime / totalRequests
                def successRate = (successRequests * 100.0 / totalRequests)
                grinder.logger.info("===============================================")
                grinder.logger.info("===== [SEQUENTIAL] 진행 상황 (${totalRequests}건) =====")
                grinder.logger.info("평균 응답시간: ${String.format('%.0f', avgResponseTime)}ms")
                grinder.logger.info("성공률: ${String.format('%.2f', successRate)}%")
                grinder.logger.info("성공: ${successRequests}, 실패: ${totalRequests - successRequests}")
                grinder.logger.info("===============================================")
            }
        }

        grinder.sleep(thinkTimeMs)
    }

    /**
     * 라운드 로빈으로 모임 ID 선택
     */
    private static long pickMeetingId() {
        int index = (grinder.threadNumber + grinder.runNumber) % meetingCount
        return (long) (index + 1)
    }

    /**
     * 모임에 속한 사용자 중 한 명 선택
     */
    private static long pickUserId(long meetingId) {
        def users = MEETING_TO_USERS.get(meetingId)
        if (users == null || users.isEmpty()) {
            return 1L
        }
        int index = grinder.runNumber % users.size()
        return users.get(index)
    }
}
