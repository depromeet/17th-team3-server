# OpenAI 호출량 최적화 전략 요약

## 🎯 핵심 결론

**DB 캐싱이 필수입니다.** 인메모리 캐싱만으로는 부족합니다.

### 이유
1. 서버 재시작 시 캐시 손실
2. 여러 서버 인스턴스 간 캐시 공유 불가
3. 기존 프로젝트가 이미 DB 캐싱 패턴 사용 (`PlaceEntity`에 30일 캐싱)

---

## 📐 필요한 DB 변경사항

### 1. PlaceEntity에 필드 추가 (5개)

```sql
ALTER TABLE tb_place 
ADD COLUMN llm_summary_one_line VARCHAR(200) NULL,
ADD COLUMN llm_summary_pros TEXT NULL,
ADD COLUMN llm_summary_cons TEXT NULL,
ADD COLUMN llm_summary_best_for TEXT NULL,
ADD COLUMN llm_summary_updated_at DATETIME NULL;
```

**저장 방식**:
- `oneLine`: 일반 문자열 (최대 200자)
- `pros`, `cons`, `bestFor`: JSON 배열 문자열
  - 예: `["맛있음", "친절함", "깨끗함"]`

**영향도**: 매우 낮음 (약 1KB/장소, 10,000개 기준 10MB)

### 2. 마이그레이션 스크립트
- `DB_MIGRATION_SCRIPT.sql` 파일 참고

---

## 🔄 캐싱 전략

### 2단계 캐싱 구조

```
사용자 요청
  ↓
1차: 인메모리 캐시 (Caffeine) - 빠른 접근
  ↓ 미스
2차: DB 캐시 (PlaceEntity) - 영구 저장
  ↓ 미스
3차: OpenAI API 호출
  ↓
결과를 인메모리 + DB에 모두 저장
```

### 예상 효과

**기존 (인메모리만)**:
- 검색 100회 × 8개 장소 = 800회 조회
- 캐시 히트율 50% → 400회 실제 호출

**개선 (DB 캐싱)**:
- 검색 100회 × 8개 장소 = 800회 조회
- DB 캐시 히트율 80% → 160회 실제 호출
- **75% 비용 절감**

---

## ⚙️ 배치 처리 (선택적)

### 목적
인기 장소를 미리 처리하여 실시간 호출 최소화

### 구현
- 매일 새벽 2시 실행
- LLM 요약이 없는 인기 장소 50개 처리
- 비용: 약 $0.01/일 (월 $0.30)

### 필요성
- **낮은 트래픽**: 배치 불필요 (DB 캐싱만으로 충분)
- **높은 트래픽**: 배치 권장 (비용 추가 절감)

---

## 📋 구현 체크리스트

### 필수 (Phase 1)
- [ ] DB 스키마 변경 (`DB_MIGRATION_SCRIPT.sql` 실행)
- [ ] `PlaceEntity`에 필드 추가
- [ ] `PlaceJpaRepository`에 `findByGooglePlaceId` 추가
- [ ] `ReviewSummaryCache`를 2단계 캐싱으로 변경
- [ ] `GooglePlacesClient`에 `getPlaceDetails` 메서드 추가
- [ ] `PlaceQuery`에 `getPlaceDetails` 메서드 추가

### 선택적 (Phase 2)
- [ ] 배치 스케줄러 구현 (`LLMSummaryBatchScheduler`)
- [ ] 배치용 JPA 쿼리 추가

---

## 💰 비용 예상

### DB 캐싱만 (Phase 1)
- **캐시 히트율**: 75-85% 예상
- **실제 호출**: 기존 대비 70% 감소
- **비용**: 월 $5-10 (소규모 서비스 기준)

### DB 캐싱 + 배치 (Phase 2)
- **캐시 히트율**: 85-95% 예상
- **실제 호출**: 기존 대비 80% 감소
- **비용**: 월 $2-5 (소규모 서비스 기준)
- **배치 비용**: 월 $0.30 추가

---

## 🚀 구현 순서

### 1단계: DB 스키마 변경
```bash
# 마이그레이션 스크립트 실행
mysql -u user -p database < DB_MIGRATION_SCRIPT.sql
```

### 2단계: Entity 수정
- `PlaceEntity.kt`에 필드 추가
- `PlaceJpaRepository.kt`에 메서드 추가

### 3단계: 캐싱 로직 개선
- `ReviewSummaryCache.kt`를 2단계 캐싱으로 변경
- `OPENAI_CACHING_AND_BATCH_STRATEGY.md` 참고

### 4단계: 테스트
- 단위 테스트 작성
- 통합 테스트 (실제 DB 사용)

### 5단계: 배포
- `enabled=false`로 배포
- 점진적 활성화

---

## 📊 모니터링

### 확인할 지표
1. **DB 캐시 히트율**: >80% 목표
2. **인메모리 캐시 히트율**: >50% 목표
3. **실제 LLM 호출 수**: 일일 실제 API 호출 횟수
4. **비용**: 일일/월별 OpenAI 사용 비용

### 로그 확인
```bash
# 캐시 히트율 확인
grep "캐시 히트" logs/application.log

# 실제 LLM 호출 확인
grep "OpenAI API 호출" logs/application.log
```

---

## ⚠️ 주의사항

1. **JSON 직렬화**: `pros`, `cons`, `bestFor`는 JSON 배열로 저장
2. **NULL 처리**: 필드가 NULL이면 LLM 요약 없음으로 처리
3. **동시성**: 배치와 실시간 요청이 동시 발생 가능 (트랜잭션으로 처리)
4. **데이터 일관성**: DB 저장 실패 시 인메모리 캐시만 저장

---

## 📚 참고 문서

- `OPENAI_CACHING_AND_BATCH_STRATEGY.md`: 상세 구현 가이드
- `DB_MIGRATION_SCRIPT.sql`: DB 스키마 변경 스크립트
- `OPENAI_INTEGRATION_PROPOSAL.md`: 전체 통합 방안

---

## ✅ 최종 권장사항

### 소규모 서비스 (현재 상황)
1. ✅ **DB 캐싱만 구현** (필수)
2. ❌ 배치 처리 생략 (트래픽이 적어서 불필요)

### 대규모 서비스 (향후)
1. ✅ DB 캐싱
2. ✅ 배치 처리 추가

**핵심**: DB 캐싱이 가장 중요하고 효과적입니다.
