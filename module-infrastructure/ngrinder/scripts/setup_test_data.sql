INSERT INTO tb_users (id, kakao_id, social_id, email, profile_image, refresh_token, nickname, created_at, updated_at)
VALUES 
  -- meetingId 1: userId 1~10
  (1, 'test_kakao_1', 'test_social_1', 'test1@example.com', 'https://example.com/profile/1.jpg', NULL, '테스트유저1', NOW(), NOW()),
  (2, 'test_kakao_2', 'test_social_2', 'test2@example.com', 'https://example.com/profile/2.jpg', NULL, '테스트유저2', NOW(), NOW()),
  (3, 'test_kakao_3', 'test_social_3', 'test3@example.com', 'https://example.com/profile/3.jpg', NULL, '테스트유저3', NOW(), NOW()),
  (4, 'test_kakao_4', 'test_social_4', 'test4@example.com', 'https://example.com/profile/4.jpg', NULL, '테스트유저4', NOW(), NOW()),
  (5, 'test_kakao_5', 'test_social_5', 'test5@example.com', 'https://example.com/profile/5.jpg', NULL, '테스트유저5', NOW(), NOW()),
  (6, 'test_kakao_6', 'test_social_6', 'test6@example.com', 'https://example.com/profile/6.jpg', NULL, '테스트유저6', NOW(), NOW()),
  (7, 'test_kakao_7', 'test_social_7', 'test7@example.com', 'https://example.com/profile/7.jpg', NULL, '테스트유저7', NOW(), NOW()),
  (8, 'test_kakao_8', 'test_social_8', 'test8@example.com', 'https://example.com/profile/8.jpg', NULL, '테스트유저8', NOW(), NOW()),
  (9, 'test_kakao_9', 'test_social_9', 'test9@example.com', 'https://example.com/profile/9.jpg', NULL, '테스트유저9', NOW(), NOW()),
  (10, 'test_kakao_10', 'test_social_10', 'test10@example.com', 'https://example.com/profile/10.jpg', NULL, '테스트유저10', NOW(), NOW()),
  
  -- meetingId 2: userId 11~20
  (11, 'test_kakao_11', 'test_social_11', 'test11@example.com', 'https://example.com/profile/11.jpg', NULL, '테스트유저11', NOW(), NOW()),
  (12, 'test_kakao_12', 'test_social_12', 'test12@example.com', 'https://example.com/profile/12.jpg', NULL, '테스트유저12', NOW(), NOW()),
  (13, 'test_kakao_13', 'test_social_13', 'test13@example.com', 'https://example.com/profile/13.jpg', NULL, '테스트유저13', NOW(), NOW()),
  (14, 'test_kakao_14', 'test_social_14', 'test14@example.com', 'https://example.com/profile/14.jpg', NULL, '테스트유저14', NOW(), NOW()),
  (15, 'test_kakao_15', 'test_social_15', 'test15@example.com', 'https://example.com/profile/15.jpg', NULL, '테스트유저15', NOW(), NOW()),
  (16, 'test_kakao_16', 'test_social_16', 'test16@example.com', 'https://example.com/profile/16.jpg', NULL, '테스트유저16', NOW(), NOW()),
  (17, 'test_kakao_17', 'test_social_17', 'test17@example.com', 'https://example.com/profile/17.jpg', NULL, '테스트유저17', NOW(), NOW()),
  (18, 'test_kakao_18', 'test_social_18', 'test18@example.com', 'https://example.com/profile/18.jpg', NULL, '테스트유저18', NOW(), NOW()),
  (19, 'test_kakao_19', 'test_social_19', 'test19@example.com', 'https://example.com/profile/19.jpg', NULL, '테스트유저19', NOW(), NOW()),
  (20, 'test_kakao_20', 'test_social_20', 'test20@example.com', 'https://example.com/profile/20.jpg', NULL, '테스트유저20', NOW(), NOW()),
  
  -- meetingId 3: userId 21~30
  (21, 'test_kakao_21', 'test_social_21', 'test21@example.com', 'https://example.com/profile/21.jpg', NULL, '테스트유저21', NOW(), NOW()),
  (22, 'test_kakao_22', 'test_social_22', 'test22@example.com', 'https://example.com/profile/22.jpg', NULL, '테스트유저22', NOW(), NOW()),
  (23, 'test_kakao_23', 'test_social_23', 'test23@example.com', 'https://example.com/profile/23.jpg', NULL, '테스트유저23', NOW(), NOW()),
  (24, 'test_kakao_24', 'test_social_24', 'test24@example.com', 'https://example.com/profile/24.jpg', NULL, '테스트유저24', NOW(), NOW()),
  (25, 'test_kakao_25', 'test_social_25', 'test25@example.com', 'https://example.com/profile/25.jpg', NULL, '테스트유저25', NOW(), NOW()),
  (26, 'test_kakao_26', 'test_social_26', 'test26@example.com', 'https://example.com/profile/26.jpg', NULL, '테스트유저26', NOW(), NOW()),
  (27, 'test_kakao_27', 'test_social_27', 'test27@example.com', 'https://example.com/profile/27.jpg', NULL, '테스트유저27', NOW(), NOW()),
  (28, 'test_kakao_28', 'test_social_28', 'test28@example.com', 'https://example.com/profile/28.jpg', NULL, '테스트유저28', NOW(), NOW()),
  (29, 'test_kakao_29', 'test_social_29', 'test29@example.com', 'https://example.com/profile/29.jpg', NULL, '테스트유저29', NOW(), NOW()),
  (30, 'test_kakao_30', 'test_social_30', 'test30@example.com', 'https://example.com/profile/30.jpg', NULL, '테스트유저30', NOW(), NOW()),
  
  -- meetingId 4: userId 31~40
  (31, 'test_kakao_31', 'test_social_31', 'test31@example.com', 'https://example.com/profile/31.jpg', NULL, '테스트유저31', NOW(), NOW()),
  (32, 'test_kakao_32', 'test_social_32', 'test32@example.com', 'https://example.com/profile/32.jpg', NULL, '테스트유저32', NOW(), NOW()),
  (33, 'test_kakao_33', 'test_social_33', 'test33@example.com', 'https://example.com/profile/33.jpg', NULL, '테스트유저33', NOW(), NOW()),
  (34, 'test_kakao_34', 'test_social_34', 'test34@example.com', 'https://example.com/profile/34.jpg', NULL, '테스트유저34', NOW(), NOW()),
  (35, 'test_kakao_35', 'test_social_35', 'test35@example.com', 'https://example.com/profile/35.jpg', NULL, '테스트유저35', NOW(), NOW()),
  (36, 'test_kakao_36', 'test_social_36', 'test36@example.com', 'https://example.com/profile/36.jpg', NULL, '테스트유저36', NOW(), NOW()),
  (37, 'test_kakao_37', 'test_social_37', 'test37@example.com', 'https://example.com/profile/37.jpg', NULL, '테스트유저37', NOW(), NOW()),
  (38, 'test_kakao_38', 'test_social_38', 'test38@example.com', 'https://example.com/profile/38.jpg', NULL, '테스트유저38', NOW(), NOW()),
  (39, 'test_kakao_39', 'test_social_39', 'test39@example.com', 'https://example.com/profile/39.jpg', NULL, '테스트유저39', NOW(), NOW()),
  (40, 'test_kakao_40', 'test_social_40', 'test40@example.com', 'https://example.com/profile/40.jpg', NULL, '테스트유저40', NOW(), NOW()),
  
  -- meetingId 5: userId 41~50
  (41, 'test_kakao_41', 'test_social_41', 'test41@example.com', 'https://example.com/profile/41.jpg', NULL, '테스트유저41', NOW(), NOW()),
  (42, 'test_kakao_42', 'test_social_42', 'test42@example.com', 'https://example.com/profile/42.jpg', NULL, '테스트유저42', NOW(), NOW()),
  (43, 'test_kakao_43', 'test_social_43', 'test43@example.com', 'https://example.com/profile/43.jpg', NULL, '테스트유저43', NOW(), NOW()),
  (44, 'test_kakao_44', 'test_social_44', 'test44@example.com', 'https://example.com/profile/44.jpg', NULL, '테스트유저44', NOW(), NOW()),
  (45, 'test_kakao_45', 'test_social_45', 'test45@example.com', 'https://example.com/profile/45.jpg', NULL, '테스트유저45', NOW(), NOW()),
  (46, 'test_kakao_46', 'test_social_46', 'test46@example.com', 'https://example.com/profile/46.jpg', NULL, '테스트유저46', NOW(), NOW()),
  (47, 'test_kakao_47', 'test_social_47', 'test47@example.com', 'https://example.com/profile/47.jpg', NULL, '테스트유저47', NOW(), NOW()),
  (48, 'test_kakao_48', 'test_social_48', 'test48@example.com', 'https://example.com/profile/48.jpg', NULL, '테스트유저48', NOW(), NOW()),
  (49, 'test_kakao_49', 'test_social_49', 'test49@example.com', 'https://example.com/profile/49.jpg', NULL, '테스트유저49', NOW(), NOW()),
  (50, 'test_kakao_50', 'test_social_50', 'test50@example.com', 'https://example.com/profile/50.jpg', NULL, '테스트유저50', NOW(), NOW()),
  
  -- meetingId 6: userId 51~60
  (51, 'test_kakao_51', 'test_social_51', 'test51@example.com', 'https://example.com/profile/51.jpg', NULL, '테스트유저51', NOW(), NOW()),
  (52, 'test_kakao_52', 'test_social_52', 'test52@example.com', 'https://example.com/profile/52.jpg', NULL, '테스트유저52', NOW(), NOW()),
  (53, 'test_kakao_53', 'test_social_53', 'test53@example.com', 'https://example.com/profile/53.jpg', NULL, '테스트유저53', NOW(), NOW()),
  (54, 'test_kakao_54', 'test_social_54', 'test54@example.com', 'https://example.com/profile/54.jpg', NULL, '테스트유저54', NOW(), NOW()),
  (55, 'test_kakao_55', 'test_social_55', 'test55@example.com', 'https://example.com/profile/55.jpg', NULL, '테스트유저55', NOW(), NOW()),
  (56, 'test_kakao_56', 'test_social_56', 'test56@example.com', 'https://example.com/profile/56.jpg', NULL, '테스트유저56', NOW(), NOW()),
  (57, 'test_kakao_57', 'test_social_57', 'test57@example.com', 'https://example.com/profile/57.jpg', NULL, '테스트유저57', NOW(), NOW()),
  (58, 'test_kakao_58', 'test_social_58', 'test58@example.com', 'https://example.com/profile/58.jpg', NULL, '테스트유저58', NOW(), NOW()),
  (59, 'test_kakao_59', 'test_social_59', 'test59@example.com', 'https://example.com/profile/59.jpg', NULL, '테스트유저59', NOW(), NOW()),
  (60, 'test_kakao_60', 'test_social_60', 'test60@example.com', 'https://example.com/profile/60.jpg', NULL, '테스트유저60', NOW(), NOW()),
  
  -- meetingId 7: userId 61~70
  (61, 'test_kakao_61', 'test_social_61', 'test61@example.com', 'https://example.com/profile/61.jpg', NULL, '테스트유저61', NOW(), NOW()),
  (62, 'test_kakao_62', 'test_social_62', 'test62@example.com', 'https://example.com/profile/62.jpg', NULL, '테스트유저62', NOW(), NOW()),
  (63, 'test_kakao_63', 'test_social_63', 'test63@example.com', 'https://example.com/profile/63.jpg', NULL, '테스트유저63', NOW(), NOW()),
  (64, 'test_kakao_64', 'test_social_64', 'test64@example.com', 'https://example.com/profile/64.jpg', NULL, '테스트유저64', NOW(), NOW()),
  (65, 'test_kakao_65', 'test_social_65', 'test65@example.com', 'https://example.com/profile/65.jpg', NULL, '테스트유저65', NOW(), NOW()),
  (66, 'test_kakao_66', 'test_social_66', 'test66@example.com', 'https://example.com/profile/66.jpg', NULL, '테스트유저66', NOW(), NOW()),
  (67, 'test_kakao_67', 'test_social_67', 'test67@example.com', 'https://example.com/profile/67.jpg', NULL, '테스트유저67', NOW(), NOW()),
  (68, 'test_kakao_68', 'test_social_68', 'test68@example.com', 'https://example.com/profile/68.jpg', NULL, '테스트유저68', NOW(), NOW()),
  (69, 'test_kakao_69', 'test_social_69', 'test69@example.com', 'https://example.com/profile/69.jpg', NULL, '테스트유저69', NOW(), NOW()),
  (70, 'test_kakao_70', 'test_social_70', 'test70@example.com', 'https://example.com/profile/70.jpg', NULL, '테스트유저70', NOW(), NOW()),
  
  -- meetingId 8: userId 71~80
  (71, 'test_kakao_71', 'test_social_71', 'test71@example.com', 'https://example.com/profile/71.jpg', NULL, '테스트유저71', NOW(), NOW()),
  (72, 'test_kakao_72', 'test_social_72', 'test72@example.com', 'https://example.com/profile/72.jpg', NULL, '테스트유저72', NOW(), NOW()),
  (73, 'test_kakao_73', 'test_social_73', 'test73@example.com', 'https://example.com/profile/73.jpg', NULL, '테스트유저73', NOW(), NOW()),
  (74, 'test_kakao_74', 'test_social_74', 'test74@example.com', 'https://example.com/profile/74.jpg', NULL, '테스트유저74', NOW(), NOW()),
  (75, 'test_kakao_75', 'test_social_75', 'test75@example.com', 'https://example.com/profile/75.jpg', NULL, '테스트유저75', NOW(), NOW()),
  (76, 'test_kakao_76', 'test_social_76', 'test76@example.com', 'https://example.com/profile/76.jpg', NULL, '테스트유저76', NOW(), NOW()),
  (77, 'test_kakao_77', 'test_social_77', 'test77@example.com', 'https://example.com/profile/77.jpg', NULL, '테스트유저77', NOW(), NOW()),
  (78, 'test_kakao_78', 'test_social_78', 'test78@example.com', 'https://example.com/profile/78.jpg', NULL, '테스트유저78', NOW(), NOW()),
  (79, 'test_kakao_79', 'test_social_79', 'test79@example.com', 'https://example.com/profile/79.jpg', NULL, '테스트유저79', NOW(), NOW()),
  (80, 'test_kakao_80', 'test_social_80', 'test80@example.com', 'https://example.com/profile/80.jpg', NULL, '테스트유저80', NOW(), NOW()),
  
  -- meetingId 9: userId 81~90
  (81, 'test_kakao_81', 'test_social_81', 'test81@example.com', 'https://example.com/profile/81.jpg', NULL, '테스트유저81', NOW(), NOW()),
  (82, 'test_kakao_82', 'test_social_82', 'test82@example.com', 'https://example.com/profile/82.jpg', NULL, '테스트유저82', NOW(), NOW()),
  (83, 'test_kakao_83', 'test_social_83', 'test83@example.com', 'https://example.com/profile/83.jpg', NULL, '테스트유저83', NOW(), NOW()),
  (84, 'test_kakao_84', 'test_social_84', 'test84@example.com', 'https://example.com/profile/84.jpg', NULL, '테스트유저84', NOW(), NOW()),
  (85, 'test_kakao_85', 'test_social_85', 'test85@example.com', 'https://example.com/profile/85.jpg', NULL, '테스트유저85', NOW(), NOW()),
  (86, 'test_kakao_86', 'test_social_86', 'test86@example.com', 'https://example.com/profile/86.jpg', NULL, '테스트유저86', NOW(), NOW()),
  (87, 'test_kakao_87', 'test_social_87', 'test87@example.com', 'https://example.com/profile/87.jpg', NULL, '테스트유저87', NOW(), NOW()),
  (88, 'test_kakao_88', 'test_social_88', 'test88@example.com', 'https://example.com/profile/88.jpg', NULL, '테스트유저88', NOW(), NOW()),
  (89, 'test_kakao_89', 'test_social_89', 'test89@example.com', 'https://example.com/profile/89.jpg', NULL, '테스트유저89', NOW(), NOW()),
  (90, 'test_kakao_90', 'test_social_90', 'test90@example.com', 'https://example.com/profile/90.jpg', NULL, '테스트유저90', NOW(), NOW()),
  
  -- meetingId 10: userId 91~100
  (91, 'test_kakao_91', 'test_social_91', 'test91@example.com', 'https://example.com/profile/91.jpg', NULL, '테스트유저91', NOW(), NOW()),
  (92, 'test_kakao_92', 'test_social_92', 'test92@example.com', 'https://example.com/profile/92.jpg', NULL, '테스트유저92', NOW(), NOW()),
  (93, 'test_kakao_93', 'test_social_93', 'test93@example.com', 'https://example.com/profile/93.jpg', NULL, '테스트유저93', NOW(), NOW()),
  (94, 'test_kakao_94', 'test_social_94', 'test94@example.com', 'https://example.com/profile/94.jpg', NULL, '테스트유저94', NOW(), NOW()),
  (95, 'test_kakao_95', 'test_social_95', 'test95@example.com', 'https://example.com/profile/95.jpg', NULL, '테스트유저95', NOW(), NOW()),
  (96, 'test_kakao_96', 'test_social_96', 'test96@example.com', 'https://example.com/profile/96.jpg', NULL, '테스트유저96', NOW(), NOW()),
  (97, 'test_kakao_97', 'test_social_97', 'test97@example.com', 'https://example.com/profile/97.jpg', NULL, '테스트유저97', NOW(), NOW()),
  (98, 'test_kakao_98', 'test_social_98', 'test98@example.com', 'https://example.com/profile/98.jpg', NULL, '테스트유저98', NOW(), NOW()),
  (99, 'test_kakao_99', 'test_social_99', 'test99@example.com', 'https://example.com/profile/99.jpg', NULL, '테스트유저99', NOW(), NOW()),
  (100, 'test_kakao_100', 'test_social_100', 'test100@example.com', 'https://example.com/profile/100.jpg', NULL, '테스트유저100', NOW(), NOW());

-- ============================================
-- 4. 모임 데이터 생성 (10개)
-- ============================================
-- 각 모임의 host_user_id는 해당 모임의 첫 번째 사용자로 설정
INSERT INTO tb_meetings (id, name, attendee_count, is_closed, end_at, host_user_id, station_id, created_at, updated_at)
VALUES 
  (1, '부하테스트 모임 1', 10, false, NULL, 1, 1, NOW(), NOW()),
  (2, '부하테스트 모임 2', 10, false, NULL, 11, 2, NOW(), NOW()),
  (3, '부하테스트 모임 3', 10, false, NULL, 21, 3, NOW(), NOW()),
  (4, '부하테스트 모임 4', 10, false, NULL, 31, 4, NOW(), NOW()),
  (5, '부하테스트 모임 5', 10, false, NULL, 41, 5, NOW(), NOW()),
  (6, '부하테스트 모임 6', 10, false, NULL, 51, 6, NOW(), NOW()),
  (7, '부하테스트 모임 7', 10, false, NULL, 61, 7, NOW(), NOW()),
  (8, '부하테스트 모임 8', 10, false, NULL, 71, 8, NOW(), NOW()),
  (9, '부하테스트 모임 9', 10, false, NULL, 81, 9, NOW(), NOW()),
  (10, '부하테스트 모임 10', 10, false, NULL, 91, 10, NOW(), NOW());

-- ============================================
-- 5. 모임 참석자 데이터 생성 (100개)
-- ============================================
-- 각 모임당 10명씩 참석자 생성
-- meetingId 1 → userId 1~10 → meetingAttendeeId 1~10
-- meetingId 2 → userId 11~20 → meetingAttendeeId 11~20
-- ...
INSERT INTO tb_meeting_attendees (id, meeting_id, user_id, attendee_nickname, muzzi_color, created_at, updated_at)
SELECT 
  u.id AS id,
  FLOOR((u.id - 1) / 10) + 1 AS meeting_id,
  u.id AS user_id,
  u.nickname AS attendee_nickname,
  'DEFAULT' AS muzzi_color,
  NOW() AS created_at,
  NOW() AS updated_at
FROM tb_users u
WHERE u.id BETWEEN 1 AND 100;

-- ============================================
-- 6. 음식 카테고리 마스터 데이터 생성 (5개)
-- ============================================
-- 설문 카테고리: 한식, 양식, 일식, 중식, 아시아음식
-- level은 LEAF (최종 카테고리)
INSERT INTO tb_survey_category_master (id, parent_id, level, name, sort_order, is_deleted, created_at, updated_at)
VALUES 
  (1, NULL, 'LEAF', '한식', 1, false, NOW(), NOW()),
  (2, NULL, 'LEAF', '양식', 2, false, NOW(), NOW()),
  (3, NULL, 'LEAF', '일식', 3, false, NOW(), NOW()),
  (4, NULL, 'LEAF', '중식', 4, false, NOW(), NOW()),
  (5, NULL, 'LEAF', '아시아음식', 5, false, NOW(), NOW());

-- ============================================
-- 7. 설문 데이터 생성 (100개)
-- ============================================
-- 각 모임당 10개 설문 생성
-- 설문 응답 분포:
--  - 한식: 30% (3명)
--  - 양식: 20% (2명)
--  - 일식: 20% (2명)
--  - 중식: 20% (2명)
--  - 아시아음식: 10% (1명)

-- meetingId 1: 한식 중심
INSERT INTO tb_surveys (id, meeting_id, participant_id, created_at, updated_at)
VALUES 
  (1, 1, 1, NOW(), NOW()),
  (2, 1, 2, NOW(), NOW()),
  (3, 1, 3, NOW(), NOW()),
  (4, 1, 4, NOW(), NOW()),
  (5, 1, 5, NOW(), NOW()),
  (6, 1, 6, NOW(), NOW()),
  (7, 1, 7, NOW(), NOW()),
  (8, 1, 8, NOW(), NOW()),
  (9, 1, 9, NOW(), NOW()),
  (10, 1, 10, NOW(), NOW());

-- meetingId 2: 양식 중심
INSERT INTO tb_surveys (id, meeting_id, participant_id, created_at, updated_at)
VALUES 
  (11, 2, 11, NOW(), NOW()),
  (12, 2, 12, NOW(), NOW()),
  (13, 2, 13, NOW(), NOW()),
  (14, 2, 14, NOW(), NOW()),
  (15, 2, 15, NOW(), NOW()),
  (16, 2, 16, NOW(), NOW()),
  (17, 2, 17, NOW(), NOW()),
  (18, 2, 18, NOW(), NOW()),
  (19, 2, 19, NOW(), NOW()),
  (20, 2, 20, NOW(), NOW());

-- meetingId 3: 일식 중심
INSERT INTO tb_surveys (id, meeting_id, participant_id, created_at, updated_at)
VALUES 
  (21, 3, 21, NOW(), NOW()),
  (22, 3, 22, NOW(), NOW()),
  (23, 3, 23, NOW(), NOW()),
  (24, 3, 24, NOW(), NOW()),
  (25, 3, 25, NOW(), NOW()),
  (26, 3, 26, NOW(), NOW()),
  (27, 3, 27, NOW(), NOW()),
  (28, 3, 28, NOW(), NOW()),
  (29, 3, 29, NOW(), NOW()),
  (30, 3, 30, NOW(), NOW());

-- meetingId 4: 중식 중심
INSERT INTO tb_surveys (id, meeting_id, participant_id, created_at, updated_at)
VALUES 
  (31, 4, 31, NOW(), NOW()),
  (32, 4, 32, NOW(), NOW()),
  (33, 4, 33, NOW(), NOW()),
  (34, 4, 34, NOW(), NOW()),
  (35, 4, 35, NOW(), NOW()),
  (36, 4, 36, NOW(), NOW()),
  (37, 4, 37, NOW(), NOW()),
  (38, 4, 38, NOW(), NOW()),
  (39, 4, 39, NOW(), NOW()),
  (40, 4, 40, NOW(), NOW());

-- meetingId 5~10: 혼합 (한식 30%, 양식 20%, 일식 20%, 중식 20%, 아시아음식 10%)
INSERT INTO tb_surveys (id, meeting_id, participant_id, created_at, updated_at)
SELECT 
  u.id AS id,
  FLOOR((u.id - 1) / 10) + 1 AS meeting_id,
  u.id AS participant_id,
  NOW() AS created_at,
  NOW() AS updated_at
FROM tb_users u
WHERE u.id BETWEEN 41 AND 100;

-- ============================================
-- 8. 설문 결과 데이터 생성 (100개)
-- ============================================
-- 각 설문당 1개 카테고리 선택
-- meetingId 1: 한식 3명, 양식 2명, 일식 2명, 중식 2명, 아시아음식 1명
INSERT INTO tb_survey_result (id, survey_id, survey_category_id, created_at, updated_at)
VALUES 
  -- meetingId 1
  (1, 1, 1, NOW(), NOW()),   -- 한식
  (2, 2, 1, NOW(), NOW()),   -- 한식
  (3, 3, 1, NOW(), NOW()),   -- 한식
  (4, 4, 2, NOW(), NOW()),   -- 양식
  (5, 5, 2, NOW(), NOW()),   -- 양식
  (6, 6, 3, NOW(), NOW()),   -- 일식
  (7, 7, 3, NOW(), NOW()),   -- 일식
  (8, 8, 4, NOW(), NOW()),   -- 중식
  (9, 9, 4, NOW(), NOW()),   -- 중식
  (10, 10, 5, NOW(), NOW()), -- 아시아음식
  
  -- meetingId 2: 양식 중심
  (11, 11, 2, NOW(), NOW()),  -- 양식
  (12, 12, 2, NOW(), NOW()),  -- 양식
  (13, 13, 2, NOW(), NOW()),  -- 양식
  (14, 14, 1, NOW(), NOW()),  -- 한식
  (15, 15, 1, NOW(), NOW()),  -- 한식
  (16, 16, 3, NOW(), NOW()),  -- 일식
  (17, 17, 3, NOW(), NOW()),  -- 일식
  (18, 18, 4, NOW(), NOW()),  -- 중식
  (19, 19, 4, NOW(), NOW()),  -- 중식
  (20, 20, 5, NOW(), NOW()),  -- 아시아음식
  
  -- meetingId 3: 일식 중심
  (21, 21, 3, NOW(), NOW()),  -- 일식
  (22, 22, 3, NOW(), NOW()),  -- 일식
  (23, 23, 3, NOW(), NOW()),  -- 일식
  (24, 24, 1, NOW(), NOW()),  -- 한식
  (25, 25, 1, NOW(), NOW()),  -- 한식
  (26, 26, 2, NOW(), NOW()),  -- 양식
  (27, 27, 2, NOW(), NOW()),  -- 양식
  (28, 28, 4, NOW(), NOW()),  -- 중식
  (29, 29, 4, NOW(), NOW()),  -- 중식
  (30, 30, 5, NOW(), NOW()),  -- 아시아음식
  
  -- meetingId 4: 중식 중심
  (31, 31, 4, NOW(), NOW()),  -- 중식
  (32, 32, 4, NOW(), NOW()),  -- 중식
  (33, 33, 4, NOW(), NOW()),  -- 중식
  (34, 34, 1, NOW(), NOW()),  -- 한식
  (35, 35, 1, NOW(), NOW()),  -- 한식
  (36, 36, 2, NOW(), NOW()),  -- 양식
  (37, 37, 2, NOW(), NOW()),  -- 양식
  (38, 38, 3, NOW(), NOW()),  -- 일식
  (39, 39, 3, NOW(), NOW()),  -- 일식
  (40, 40, 5, NOW(), NOW());  -- 아시아음식

-- meetingId 5~10: 혼합 (한식 30%, 양식 20%, 일식 20%, 중식 20%, 아시아음식 10%)
INSERT INTO tb_survey_result (id, survey_id, survey_category_id, created_at, updated_at)
SELECT 
  s.id AS id,
  s.id AS survey_id,
  CASE 
    WHEN MOD(s.id, 10) IN (1, 2, 3) THEN 1  -- 한식
    WHEN MOD(s.id, 10) IN (4, 5) THEN 2     -- 양식
    WHEN MOD(s.id, 10) IN (6, 7) THEN 3     -- 일식
    WHEN MOD(s.id, 10) IN (8, 9) THEN 4     -- 중식
    ELSE 5                                   -- 아시아음식
  END AS survey_category_id,
  NOW() AS created_at,
  NOW() AS updated_at
FROM tb_surveys s
WHERE s.id BETWEEN 41 AND 100;