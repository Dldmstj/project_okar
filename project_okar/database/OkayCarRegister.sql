-- 판매등록차량정보
CREATE TABLE OKAY_CAR_REGISTER(
	CAR_NUM VARCHAR2(10) PRIMARY KEY, -- 차량번호 중복불가
	MANUFACTOR VARCHAR2(50) NOT NULL,
	MODEL VARCHAR2(50) NOT NULL,
	VOLUME VARCHAR2(50) NOT NULL,
	PRICE NUMBER NOT NULL,
	ACCIDENT_CNT NUMBER NOT NULL,
	DRIVE_DIST NUMBER(6) NOT NULL,
	REGIST_TIME DATE NOT NULL, -- 등록시간을 기준으로 정렬가능
	SELL_OR_NOT VARCHAR2(1) NOT NULL,
	-- 차량 이미지 외래키 설정
	FOREIGN KEY (MODEL) REFERENCES CAR_IMG (MODEL)
);

-- 차량이미지
CREATE TABLE CAR_IMG(
	MODEL VARCHAR2(50) PRIMARY KEY,
	IMG_SRC VARCHAR2(100)
);

-- 테이블 삭제
DROP TABLE CAR_IMG;
DROP TABLE OKAY_CAR_REGISTER ;

DELETE FROM OKAY_CAR_REGISTER WHERE car_num = '12가1234';
DELETE FROM CAR_IMG ci  WHERE MODEL = 'k5';

-- 테이블 조회
SELECT * FROM CAR_IMG ci ;
SELECT * FROM OKAY_CAR_REGISTER ocr ;

-- 임시데이터 삽입 
INSERT INTO CAR_IMG VALUES ('쏘나타','');
INSERT INTO CAR_IMG VALUES ('K5','');
INSERT INTO CAR_IMG VALUES ('K8','');
INSERT INTO OKAY_CAR_REGISTER VALUES 
('12가1234','기아','K5','2.0 가솔린',650,1,68000,SYSDATE,'N');
INSERT INTO OKAY_CAR_REGISTER VALUES 
('33바5424','기아','K8','3.3 가솔린',3200,0,14300,SYSDATE,'N');
INSERT INTO OKAY_CAR_REGISTER VALUES 
('17고4433','기아','K5','2.0 가솔린',1400,1,24700,SYSDATE,'N');
INSERT INTO OKAY_CAR_REGISTER VALUES 
('43로5614','현대','쏘나타','2.0 가솔린',2800,1,24700,SYSDATE,'N');

-- join sql문
SELECT ci.img_src,ok.* FROM car_img ci, OKAY_CAR_REGISTER ok WHERE ci.model=ok.model

/*
INSERT INTO OKAY_CAR_REGISTER VALUES 
(?,?,?,?,?,?,?,SYSDATE,'N')
 */

/*
	private String manufactor;	// 제조사
	private String model;	// 모델명
	private String volume;	// 배기량
	private int price;	// 가격
	private int accident_cnt;	// 사고횟수
	private int drive_dist;	// 주행거리
	private Date regist_time;	// 차량등록일자
	private String sell_or_not;	// 판매여부
 */
SELECT * FROM OKAY_CAR_REGISTER;

SELECT *
FROM OKAY_CAR_REGISTER
WHERE MANUFACTOR LIKE '%%'
AND MODEL LIKE '%%'
AND VOLUME LIKE '%%'
AND PRICE > 1000
AND ACCIDENT_CNT > 0
AND DRIVE_DIST > 10000;

SELECT *
FROM OKAY_CAR_REGISTER ocr, CAR_IMG ci
WHERE ocr.MANUFACTOR IN ('기아')
AND ocr.MODEL IN ('K5')
AND ocr.VOLUME IN ('2.0 가솔린')
AND ocr.PRICE > 0
AND ocr.ACCIDENT_CNT > 0
AND ocr.DRIVE_DIST > 0
AND ocr.model = ci.model;

SELECT *
FROM OKAY_CAR_REGISTER
WHERE MANUFACTOR IN ('','기아')
AND MODEL IN ('K5','K8')
AND VOLUME IN ('2.0 가솔린');

AND PRICE > 1000
AND ACCIDENT_CNT > 0
AND DRIVE_DIST > 10000;

SELECT * from
(SELECT * FROM OKAY_CAR_REGISTER
	WHERE MANUFACTOR LIKE '%현대%'
	OR MODEL LIKE '%현대%'
	OR VOLUME LIKE '%현대%'
) ocr, CAR_IMG ci
WHERE ocr.model = ci.model;

/*
SELECT *
FROM OKAY_CAR_REGISTER
WHERE MANUFACTOR LIKE '%%'
AND MODEL LIKE '%%'
AND VOLUME LIKE '%%'
AND PRICE > 1000
AND ACCIDENT_CNT > 0
AND DRIVE_DIST > 10000;
*/

