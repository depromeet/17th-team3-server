package org.depromeet.team3.place.application.execution

import org.depromeet.team3.place.PlaceQuery
import org.slf4j.LoggerFactory
import org.springframework.stereotype.Service

@Service
class PlacePhotoService(
    private val placeQuery: PlaceQuery
) {
    private val logger = LoggerFactory.getLogger(PlacePhotoService::class.java)

    /**
     * 장소 사진 데이터를 조회합니다.
     * @param photoName 구글 플레이스 사진 리소스 이름
     * @return 사진 바이너리 데이터, 검증 실패 시 null
     */
    suspend fun getPhoto(photoName: String): ByteArray? {
        // 1. 비즈니스 검증: photoName은 반드시 'places/'로 시작해야 함
        if (!photoName.startsWith("places/")) {
            logger.warn("잘못된 사진 요청 형식: photoName={}", photoName)
            return null
        }

        // 2. 인프라 계층을 통해 데이터 조회
        return placeQuery.fetchPhoto(photoName)
    }
}
