-- OpenAI LLM 요약 정보를 위한 PlaceEntity 스키마 변경
-- 실행 전 백업 권장

-- 1. LLM 요약 필드 추가
ALTER TABLE tb_place 
ADD COLUMN llm_summary_one_line VARCHAR(200) NULL COMMENT 'LLM 생성 한 줄 설명',
ADD COLUMN llm_summary_pros TEXT NULL COMMENT 'LLM 생성 장점 리스트 (JSON 배열)',
ADD COLUMN llm_summary_cons TEXT NULL COMMENT 'LLM 생성 단점 리스트 (JSON 배열)',
ADD COLUMN llm_summary_best_for TEXT NULL COMMENT 'LLM 생성 추천 상황 리스트 (JSON 배열)',
ADD COLUMN llm_summary_updated_at DATETIME NULL COMMENT 'LLM 요약 정보 최종 업데이트 시간';

-- 2. 인덱스 추가 (선택적, 조회 최적화용)
CREATE INDEX idx_llm_summary_updated_at ON tb_place(llm_summary_updated_at);

-- 3. 기존 데이터 확인 (선택적)
-- SELECT COUNT(*) FROM tb_place WHERE llm_summary_one_line IS NULL;

-- 4. 롤백 스크립트 (필요시)
-- ALTER TABLE tb_place 
-- DROP COLUMN llm_summary_one_line,
-- DROP COLUMN llm_summary_pros,
-- DROP COLUMN llm_summary_cons,
-- DROP COLUMN llm_summary_best_for,
-- DROP COLUMN llm_summary_updated_at;
-- DROP INDEX idx_llm_summary_updated_at ON tb_place;
