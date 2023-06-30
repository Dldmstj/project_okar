-- 회원정보
CREATE TABLE MEM_INFO(
	MEM_ID VARCHAR2(30) PRIMARY KEY,
	MEM_PASS VARCHAR2(20) NOT NULL,
	LICENSE_ID NUMBER(15) UNIQUE,
	MNAME VARCHAR2(30) NOT NULL,
	EMAIL VARCHAR2(50) NOT NULL,
	PHONE VARCHAR2(11) NOT NULL,
	AUTH VARCHAR2(20) NOT NULL
);

-- 회원등록차량정보
CREATE TABLE MEM_CAR_REGISTER(
	REGIST_ID VARCHAR2(7) PRIMARY KEY,
	MEM_ID VARCHAR2(30),
	CAR_NUM VARCHAR2(10) UNIQUE,
	MODEL VARCHAR2(50) NOT NULL,
	DRIVE_DIST NUMBER(6),
	ADDRESS VARCHAR2(30) NOT NULL,
	WANT_TIME DATE,
	REG_TIME DATE,
	FOREIGN KEY (MEM_ID) REFERENCES MEM_INFO (MEM_ID)
);

-- REGIST_ID에 사용할 시퀀스
CREATE SEQUENCE REGIST_SEQ
	START WITH 1
	MAXVALUE 999;
	
