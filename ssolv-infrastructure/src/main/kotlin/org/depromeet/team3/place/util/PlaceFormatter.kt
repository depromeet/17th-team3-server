package org.depromeet.team3.place.util

import org.depromeet.team3.common.ContextConstants

/**
 * 장소 관련 포맷팅 및 단순 변환 담당
 */
object PlaceFormatter {
    
    /**
     * 네이버 플레이스 링크 생성
     */
    fun generateNaverPlaceLink(placeName: String): String {
        return "https://m.place.naver.com/place/list?query=$placeName"
    }

    /**
     * Google Places Photo URL 생성 (프록시 엔드포인트 사용)
     * Photo name 형식: places/{place_id}/photos/{photo_reference}
     */
    fun generatePhotoUrl(photoName: String, proxyBaseUrl: String): String {
        return "${proxyBaseUrl}${ContextConstants.API_VERSION_V1}/places/photos/${photoName}"
    }
    
    /**
     * 장소 이름에서 한국어 부분만 추출하고 특수문자 정리
     */
    fun extractKoreanName(fullName: String): String {
        val koreanPattern = Regex("[가-힣0-9\\s\\-]+")
        val matches = koreanPattern.findAll(fullName)
        
        val extracted = matches
            .map { it.value.trim() }
            .filter { it.isNotEmpty() }
            .firstOrNull()
            ?.trim()
            ?: fullName
        
        return extracted
            .replace(Regex("[()\\[\\]{},.;:!?\"'`~@#$%^&*+=/<>|\\\\]+$"), "")
            .replace(Regex("^[()\\[\\]{},.;:!?\"'`~@#$%^&*+=/<>|\\\\]+"), "")
            .trim()
    }
}
