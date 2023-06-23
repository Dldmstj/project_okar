CREATE TABLE manu_info(
	manu_name varchar2(50),
	PRIMARY KEY (manu_name)
);
INSERT INTO manu_info VALUES ('현대');
INSERT INTO manu_info VALUES ('기아');

CREATE TABLE model_info(
	manu_name varchar2(50),
	model_name varchar2(50),
	PRIMARY KEY (model_name),
	CONSTRAINT model_manu_fk FOREIGN KEY (manu_name) REFERENCES manu_info (manu_name)
);
INSERT INTO model_info VALUES ('현대','투싼'); 
INSERT INTO model_info VALUES ('현대','쏘나타'); 
INSERT INTO model_info VALUES ('기아','스포티지'); 
INSERT INTO model_info VALUES ('기아','K5'); 

CREATE TABLE grade_info(
	model_name varchar2(50),
	grade_name varchar2(50),
	PRIMARY KEY (grade_name),
	CONSTRAINT grade_model_fk FOREIGN KEY (model_name) REFERENCES model_info (model_name)
);
INSERT INTO grade_info VALUES ('투싼','모던');
INSERT INTO grade_info VALUES ('투싼','어드벤처');
INSERT INTO grade_info VALUES ('쏘나타','프리미엄');
INSERT INTO grade_info VALUES ('쏘나타','N Line');
INSERT INTO grade_info VALUES ('스포티지','트렌디');
INSERT INTO grade_info VALUES ('스포티지','시그니처');
INSERT INTO grade_info VALUES ('K5','프레스티지');
INSERT INTO grade_info VALUES ('K5','노블레스');
SELECT * FROM GRADE_INFO;
SELECT DISTINCT M.MANU_NAME FROM MANU_INFO M, MODEL_INFO M2, GRADE_INFO G
WHERE M.MANU_NAME = M2.MANU_NAME AND M2.MODEL_NAME = G.MODEL_NAME; 

SELECT M2.MODEL_NAME, GRADE_NAME FROM MANU_INFO M, MODEL_INFO M2, GRADE_INFO G
WHERE M.MANU_NAME = M2.MANU_NAME AND M2.MODEL_NAME = G.MODEL_NAME AND M.MANU_NAME = '현대'; 

CREATE TABLE VEHI_INFO(
	VEHI_NUM VARCHAR2(10),
	MANU_NAME VARCHAR2(50),
	MODEL_NAME VARCHAR2(50),
	GRADE_NAME VARCHAR2(50),
	PRIMARY KEY (VEHI_NUM)
);
CREATE SEQUENCE V_SEQ
	START WITH 1;
SELECT * FROM VEHI_INFO;
INSERT INTO VEHI_INFO VALUES ('VE-'||V_SEQ.NEXTVAL,'현대','쏘나타','시그니처');
-- INSERT INTO VEHI_INFO VALUES ('VE-'||V_SEQ.NEXTVAL,?,?,?)

-- 제조사명	모델명	등급명	등의 값을 지정하고 해당 값을 join sql의 List 받아서
-- select로 다중 정보를 처리하고(각 컬럼별 중복 값 없이 option 할당 필요), 
--							** 상위 SELECT 선택시 SUBMIT 되어 첫 SELECT값을 요청값으로 받아야 뒤 SELECT 값이 필터링 됌
-- 					https://que-n-a.tistory.com/entry/select-tag-option-%EC%84%A0%ED%83%9D-%EC%8B%9C-form-submit-%EB%B3%B4%EB%82%B4%EA%B8%B0

-- 차량 정보가 들어갈 테이블을 따로 생성(차량고유번호==> sequence 이용)
-- 프론트 단에서 select로 각 컬럼명을 선택하여 요청값으로 받아서 차량정보 테이블에 데이터 할당하는 모양새..

-- select 에 들어가야할 각 컬럼의 sql 문 
SELECT DISTINCT M.MANU_NAME FROM MANU_INFO M, MODEL_INFO M2, GRADE_INFO G
WHERE M.MANU_NAME = M2.MANU_NAME AND M2.MODEL_NAME = G.MODEL_NAME; -- 최상위 SELECT 기본 데이터

SELECT DISTINCT M2.MODEL_NAME FROM MANU_INFO M, MODEL_INFO M2, GRADE_INFO G
WHERE M.MANU_NAME = M2.MANU_NAME AND M2.MODEL_NAME = G.MODEL_NAME AND M.MANU_NAME = '현대'; -- 상위 SELECT에서 선택한 값으로 MANU 필터링

SELECT DISTINCT GRADE_NAME FROM MANU_INFO M, MODEL_INFO M2, GRADE_INFO G
WHERE M.MANU_NAME = M2.MANU_NAME AND M2.MODEL_NAME = G.MODEL_NAME AND M.MANU_NAME = '현대' AND M2.MODEL_NAME = '쏘나타';





