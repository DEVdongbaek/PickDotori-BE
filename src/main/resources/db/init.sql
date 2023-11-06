SET REFERENTIAL_INTEGRITY False;
TRUNCATE TABLE certificate;
TRUNCATE TABLE profile;
TRUNCATE TABLE field;
TRUNCATE TABLE major;
TRUNCATE TABLE member_account;
TRUNCATE TABLE desired_field;
TRUNCATE TABLE member_major;
TRUNCATE TABLE menti;
TRUNCATE TABLE mento;
SET REFERENTIAL_INTEGRITY True;

INSERT INTO profile (created_at, updated_at, original_profile_name, profile_path, saved_profile_name)
VALUES (NOW(),NOW(),'default_profile', '/images/default_profile.png', 'default_profile.png');

INSERT INTO major (major_name)
VALUES
    ('소프트웨어공학과'),
    ('컴퓨터정보통신공학과'),
    ('전자공학과'),
    ('인공지능학부'),
    ('빅데이터융합학과'),
    ('빅데이터금융공학융합전공'),
    ('지능형모빌리티융합학과'),
    ('IOT인공지능융합전공'),
    ('로봇공학융합전공'),
    ('지능실감미디어융합전공'),
    ('융합바이오시스템기계공학과'),
    ('문헌정보학과'),
    ('교육학과'),
    ('멀티미디어전공'),
    ('전자상거래전공');

INSERT INTO field (field_name)
VALUES
    ('진로'),
    ('개발_언어'),
    ('경진대회'),
    ('외국어'),
    ('대외활동'),
    ('자격증'),
    ('공모전'),
    ('학교_생활'),
    ('기타');


INSERT INTO member_account (created_at, updated_at, email, login_id, member_role, member_type, password)
VALUES
    (NOW(), NOW(), 'dotoring1@naver.com', 'dotoring1', 'ROLE_MENTI', 'MENTI', '$2a$10$kDfEB/bhMpQzFHpFfQUTCumlXT13reHDzDB1QpgHgwHa.ES3Mmve.'),
    (NOW(), NOW(), 'dotoring2@naver.com', 'dotoring2', 'ROLE_MENTI', 'MENTI', '$2a$10$kDfEB/bhMpQzFHpFfQUTCumlXT13reHDzDB1QpgHgwHa.ES3Mmve.'),
    (NOW(), NOW(), 'dotoring3@naver.com', 'dotoring3', 'ROLE_MENTI', 'MENTI', '$2a$10$kDfEB/bhMpQzFHpFfQUTCumlXT13reHDzDB1QpgHgwHa.ES3Mmve.'),
    (NOW(), NOW(), 'dotoring4@naver.com', 'dotoring4', 'ROLE_MENTI', 'MENTI', '$2a$10$kDfEB/bhMpQzFHpFfQUTCumlXT13reHDzDB1QpgHgwHa.ES3Mmve.'),
    (NOW(), NOW(), 'dotoring5@naver.com', 'dotoring5', 'ROLE_MENTI', 'MENTI', '$2a$10$kDfEB/bhMpQzFHpFfQUTCumlXT13reHDzDB1QpgHgwHa.ES3Mmve.'),
    (NOW(), NOW(), 'dotoring6@naver.com', 'dotoring6', 'ROLE_MENTI', 'MENTI', '$2a$10$kDfEB/bhMpQzFHpFfQUTCumlXT13reHDzDB1QpgHgwHa.ES3Mmve.'),
    (NOW(), NOW(), 'dotoring7@naver.com', 'dotoring7', 'ROLE_MENTI', 'MENTI', '$2a$10$kDfEB/bhMpQzFHpFfQUTCumlXT13reHDzDB1QpgHgwHa.ES3Mmve.'),
    (NOW(), NOW(), 'dotoring8@naver.com', 'dotoring8', 'ROLE_MENTI', 'MENTI', '$2a$10$kDfEB/bhMpQzFHpFfQUTCumlXT13reHDzDB1QpgHgwHa.ES3Mmve.'),
    (NOW(), NOW(), 'dotoring9@naver.com', 'dotoring9', 'ROLE_MENTI', 'MENTI', '$2a$10$kDfEB/bhMpQzFHpFfQUTCumlXT13reHDzDB1QpgHgwHa.ES3Mmve.'),
    (NOW(), NOW(), 'dotoring10@naver.com', 'dotoring10', 'ROLE_MENTI', 'MENTO', '$2a$10$NlQCvjf.YuDNrCZVrKRikuEbbx.c/EhVMuvleJcbyCLW/T8sas2hm'),
    (NOW(), NOW(), 'dotoring11@naver.com', 'dotoring11', 'ROLE_MENTO', 'MENTO', '$2a$10$kDfEB/bhMpQzFHpFfQUTCumlXT13reHDzDB1QpgHgwHa.ES3Mmve.'),
    (NOW(), NOW(), 'dotoring12@naver.com', 'dotoring12', 'ROLE_MENTO', 'MENTO', '$2a$10$kDfEB/bhMpQzFHpFfQUTCumlXT13reHDzDB1QpgHgwHa.ES3Mmve.'),
    (NOW(), NOW(), 'dotoring13@naver.com', 'dotoring13', 'ROLE_MENTO', 'MENTO', '$2a$10$kDfEB/bhMpQzFHpFfQUTCumlXT13reHDzDB1QpgHgwHa.ES3Mmve.'),
    (NOW(), NOW(), 'dotoring14@naver.com', 'dotoring14', 'ROLE_MENTO', 'MENTO', '$2a$10$kDfEB/bhMpQzFHpFfQUTCumlXT13reHDzDB1QpgHgwHa.ES3Mmve.'),
    (NOW(), NOW(), 'dotoring15@naver.com', 'dotoring15', 'ROLE_MENTO', 'MENTO', '$2a$10$kDfEB/bhMpQzFHpFfQUTCumlXT13reHDzDB1QpgHgwHa.ES3Mmve.'),
    (NOW(), NOW(), 'dotoring16@naver.com', 'dotoring16', 'ROLE_MENTO', 'MENTO', '$2a$10$kDfEB/bhMpQzFHpFfQUTCumlXT13reHDzDB1QpgHgwHa.ES3Mmve.'),
    (NOW(), NOW(), 'dotoring17@naver.com', 'dotoring17', 'ROLE_MENTO', 'MENTO', '$2a$10$kDfEB/bhMpQzFHpFfQUTCumlXT13reHDzDB1QpgHgwHa.ES3Mmve.'),
    (NOW(), NOW(), 'dotoring18@naver.com', 'dotoring18', 'ROLE_MENTO', 'MENTO', '$2a$10$kDfEB/bhMpQzFHpFfQUTCumlXT13reHDzDB1QpgHgwHa.ES3Mmve.'),
    (NOW(), NOW(), 'dotoring19@naver.com', 'dotoring19', 'ROLE_MENTO', 'MENTO', '$2a$10$kDfEB/bhMpQzFHpFfQUTCumlXT13reHDzDB1QpgHgwHa.ES3Mmve.'),
    (NOW(), NOW(), 'dotoring20@naver.com', 'dotoring20', 'ROLE_MENTO', 'MENTO', '$2a$10$kDfEB/bhMpQzFHpFfQUTCumlXT13reHDzDB1QpgHgwHa.ES3Mmve.');



INSERT INTO menti (created_at, updated_at, grade, introduction, nickname, preferred_mentoring, profile_profile_id, school, status, view_count, member_account_id)
VALUES  (NOW(), NOW(), 3, '안녕하세요 전남대학교 3학년 도토링1입니다.', '도레미1', '선호하는 멘토링은 아무거나1입니다.', 1, '전남대학교', 'ACTIVE', 0, 1),
        (NOW(), NOW(), 3, '안녕하세요 전남대학교 3학년 도토링2입니다.', '도레미2', '선호하는 멘토링은 아무거나2입니다.', 1, '전남대학교', 'ACTIVE', 0, 2),
        (NOW(), NOW(), 3, '안녕하세요 전남대학교 3학년 도토링3입니다.', '도레미3', '선호하는 멘토링은 아무거나3입니다.', 1, '전남대학교', 'ACTIVE', 0, 3),
        (NOW(), NOW(), 3, '안녕하세요 전남대학교 3학년 도토링4입니다.', '도레미4', '선호하는 멘토링은 아무거나4입니다.', 1, '전남대학교', 'ACTIVE', 0, 4),
        (NOW(), NOW(), 3, '안녕하세요 전남대학교 3학년 도토링5입니다.', '도레미5', '선호하는 멘토링은 아무거나5입니다.', 1, '전남대학교', 'ACTIVE', 0, 5),
        (NOW(), NOW(), 3, '안녕하세요 전남대학교 3학년 도토링6입니다.', '도레미6', '선호하는 멘토링은 아무거나6입니다.', 1, '전남대학교', 'ACTIVE', 0, 6),
        (NOW(), NOW(), 3, '안녕하세요 전남대학교 3학년 도토링7입니다.', '도레미7', '선호하는 멘토링은 아무거나7입니다.', 1, '전남대학교', 'ACTIVE', 0, 7),
        (NOW(), NOW(), 3, '안녕하세요 전남대학교 3학년 도토링8입니다.', '도레미8', '선호하는 멘토링은 아무거나8입니다.', 1, '전남대학교', 'ACTIVE', 0, 8),
        (NOW(), NOW(), 3, '안녕하세요 전남대학교 3학년 도토링9입니다.', '도레미9', '선호하는 멘토링은 아무거나9입니다.', 1, '전남대학교', 'ACTIVE', 0, 9),
        (NOW(), NOW(), 3, '안녕하세요 전남대학교 3학년 도토링10입니다.', '도레미10', '선호하는 멘토링은 아무거나10입니다.', 1, '전남대학교', 'ACTIVE', 0, 10);


INSERT INTO mento (created_at, updated_at, grade, introduction, mentoring_count, mentoring_system, nickname, profile_profile_id, school, status, view_count, member_account_id)
VALUES  (NOW(),NOW(),3,'안녕하세요 전남대학교 3학년 가나다11입니다.',0,'아침, 점심, 저녁빼고 다 가능이요.. 정신 나갈 것 같아2','가나다2','1','전남대학교','ACTIVE',0,11),
        (NOW(),NOW(),3,'안녕하세요 전남대학교 3학년 가나다12입니다.',0,'아침, 점심, 저녁빼고 다 가능이요.. 정신 나갈 것 같아3','가나다3','1','전남대학교','ACTIVE',0,12),
        (NOW(),NOW(),3,'안녕하세요 전남대학교 3학년 가나다13입니다.',0,'아침, 점심, 저녁빼고 다 가능이요.. 정신 나갈 것 같아4','가나다4','1','전남대학교','ACTIVE',0,13),
        (NOW(),NOW(),3,'안녕하세요 전남대학교 3학년 가나다14입니다.',0,'아침, 점심, 저녁빼고 다 가능이요.. 정신 나갈 것 같아5','가나다5','1','전남대학교','ACTIVE',0,14),
        (NOW(),NOW(),3,'안녕하세요 전남대학교 3학년 가나다15입니다.',0,'아침, 점심, 저녁빼고 다 가능이요.. 정신 나갈 것 같아6','가나다6','1','전남대학교','ACTIVE',0,15),
        (NOW(),NOW(),3,'안녕하세요 전남대학교 3학년 가나다16입니다.',0,'아침, 점심, 저녁빼고 다 가능이요.. 정신 나갈 것 같아7','가나다7','1','전남대학교','ACTIVE',0,16),
        (NOW(),NOW(),3,'안녕하세요 전남대학교 3학년 가나다17입니다.',0,'아침, 점심, 저녁빼고 다 가능이요.. 정신 나갈 것 같아9','가나다8','1','전남대학교','ACTIVE',0,17),
        (NOW(),NOW(),3,'안녕하세요 전남대학교 3학년 가나다18입니다.',0,'아침, 점심, 저녁빼고 다 가능이요.. 정신 나갈 것 같아0','가나다9','1','전남대학교','ACTIVE',0,18),
        (NOW(),NOW(),3,'안녕하세요 전남대학교 3학년 가나다19입니다.',0,'아침, 점심, 저녁빼고 다 가능이요.. 정신 나갈 것 같아11','가나다10','1','전남대학교','ACTIVE',0,19),
        (NOW(),NOW(),3,'안녕하세요 전남대학교 3학년 가나다20입니다.',0,'아침, 점심, 저녁빼고 다 가능이요.. 정신 나갈 것 같아12','가나다11','1','전남대학교','ACTIVE',0,20);

INSERT INTO certificate (created_at, updated_at, member_id, original_file_name, save_file_name)
VALUES
    (NOW(), NOW(), 1, 'original_1.pdf', 'save_1.pdf'),
    (NOW(), NOW(), 2, 'original_2.pdf', 'save_2.pdf'),
    (NOW(), NOW(), 3, 'original_3.pdf', 'save_3.pdf'),
    (NOW(), NOW(), 4, 'original_4.pdf', 'save_4.pdf'),
    (NOW(), NOW(), 5, 'original_5.pdf', 'save_5.pdf'),
    (NOW(), NOW(), 6, 'original_6.pdf', 'save_6.pdf'),
    (NOW(), NOW(), 7, 'original_7.pdf', 'save_7.pdf'),
    (NOW(), NOW(), 8, 'original_8.pdf', 'save_8.pdf'),
    (NOW(), NOW(), 9, 'original_9.pdf', 'save_9.pdf'),
    (NOW(), NOW(), 10, 'original_10.pdf', 'save_10.pdf'),
    (NOW(), NOW(), 11, 'original_11.pdf', 'save_11.pdf'),
    (NOW(), NOW(), 12, 'original_12.pdf', 'save_12.pdf'),
    (NOW(), NOW(), 13, 'original_13.pdf', 'save_13.pdf'),
    (NOW(), NOW(), 14, 'original_14.pdf', 'save_14.pdf'),
    (NOW(), NOW(), 15, 'original_15.pdf', 'save_15.pdf'),
    (NOW(), NOW(), 16, 'original_16.pdf', 'save_16.pdf'),
    (NOW(), NOW(), 17, 'original_17.pdf', 'save_17.pdf'),
    (NOW(), NOW(), 18, 'original_18.pdf', 'save_18.pdf'),
    (NOW(), NOW(), 19, 'original_19.pdf', 'save_19.pdf'),
    (NOW(), NOW(), 20, 'original_20.pdf', 'save_20.pdf');


INSERT INTO member_major (major_name, menti_id, mento_id)
VALUES
    ('소프트웨어공학과', 1, NULL),
    ('컴퓨터정보통신공학과', 1, NULL),
    ('전자공학과', 1, NULL),
    ('인공지능학부', 1, NULL),
    ('소프트웨어공학과', 2, NULL),
    ('컴퓨터정보통신공학과', 2, NULL),
    ('전자공학과', 2, NULL),
    ('인공지능학부', 2, NULL),
    ('소프트웨어공학과', 3, NULL),
    ('컴퓨터정보통신공학과', 3, NULL),
    ('전자공학과', 3, NULL),
    ('인공지능학부', 3, NULL),
    ('소프트웨어공학과', 4, NULL),
    ('컴퓨터정보통신공학과', 4, NULL),
    ('전자공학과', 4, NULL),
    ('인공지능학부', 4, NULL),
    ('소프트웨어공학과', 5, NULL),
    ('컴퓨터정보통신공학과', 5, NULL),
    ('전자공학과', 5, NULL),
    ('인공지능학부', 5, NULL),
    ('소프트웨어공학과', 6, NULL),
    ('컴퓨터정보통신공학과', 6, NULL),
    ('전자공학과', 6, NULL),
    ('인공지능학부', 6, NULL),
    ('소프트웨어공학과', 7, NULL),
    ('컴퓨터정보통신공학과', 7, NULL),
    ('전자공학과', 7, NULL),
    ('인공지능학부', 7, NULL),
    ('소프트웨어공학과', 8, NULL),
    ('컴퓨터정보통신공학과', 8, NULL),
    ('전자공학과', 8, NULL),
    ('인공지능학부', 8, NULL),
    ('소프트웨어공학과', 9, NULL),
    ('컴퓨터정보통신공학과', 9, NULL),
    ('전자공학과', 9, NULL),
    ('인공지능학부', 9, NULL),
    ('소프트웨어공학과', 10, NULL),
    ('컴퓨터정보통신공학과', 10, NULL),
    ('전자공학과', 10, NULL),
    ('인공지능학부', 10, NULL),
    ('소프트웨어공학과', NULL, 11),
    ('컴퓨터정보통신공학과', NULL, 11),
    ('전자공학과', NULL, 11),
    ('인공지능학부', NULL, 11),
    ('소프트웨어공학과', NULL, 12),
    ('컴퓨터정보통신공학과', NULL, 12),
    ('전자공학과', NULL, 12),
    ('인공지능학부', NULL, 12),
    ('소프트웨어공학과', NULL, 13),
    ('컴퓨터정보통신공학과', NULL, 13),
    ('전자공학과', NULL, 13),
    ('인공지능학부', NULL, 13),
    ('소프트웨어공학과', NULL, 14),
    ('컴퓨터정보통신공학과', NULL, 14),
    ('전자공학과', NULL, 14),
    ('인공지능학부', NULL, 14),
    ('소프트웨어공학과', NULL, 15),
    ('컴퓨터정보통신공학과', NULL, 15),
    ('전자공학과', NULL, 15),
    ('인공지능학부', NULL, 15),
    ('소프트웨어공학과', NULL, 16),
    ('컴퓨터정보통신공학과', NULL, 16),
    ('전자공학과', NULL, 16),
    ('인공지능학부', NULL, 16),
    ('소프트웨어공학과', NULL, 17),
    ('컴퓨터정보통신공학과', NULL, 17),
    ('전자공학과', NULL, 17),
    ('인공지능학부', NULL, 17),
    ('소프트웨어공학과', NULL, 18),
    ('컴퓨터정보통신공학과', NULL, 18),
    ('전자공학과', NULL, 18),
    ('인공지능학부', NULL, 18),
    ('소프트웨어공학과', NULL, 19),
    ('컴퓨터정보통신공학과', NULL, 19),
    ('전자공학과', NULL, 19),
    ('인공지능학부', NULL, 19),
    ('소프트웨어공학과', NULL, 20),
    ('컴퓨터정보통신공학과', NULL, 20),
    ('전자공학과', NULL, 20),
    ('인공지능학부', NULL, 20);






