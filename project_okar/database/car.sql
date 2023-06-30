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

CREATE TABLE CAR_IMG(
   MODEL VARCHAR2(50) PRIMARY KEY,
   IMG_SRC VARCHAR2(100)
);

DROP TABLE OKAY_CAR_REGISTER;
DROP TABLE CAR_IMG;

INSERT INTO CAR_IMG VALUES ('K5','../resources/static/car_Img/K5.png');
INSERT INTO CAR_IMG VALUES ('EV6','../resources/static/car_Img/EV6.png');
INSERT INTO CAR_IMG VALUES ('EV9','../resources/static/car_Img/EV9.png');
INSERT INTO CAR_IMG VALUES ('G80','../resources/static/car_Img/G80.png');
INSERT INTO CAR_IMG VALUES ('GV70','../resources/static/car_Img/GV70.png');
INSERT INTO CAR_IMG VALUES ('GV80','../resources/static/car_Img/GV80.png');
INSERT INTO CAR_IMG VALUES ('K3','../resources/static/car_Img/K3.png');
INSERT INTO CAR_IMG VALUES ('K8','../resources/static/car_Img/K8.png');
INSERT INTO CAR_IMG VALUES ('K9','../resources/static/car_Img/K9.png');
INSERT INTO CAR_IMG VALUES ('골프','../resources/static/car_Img/골프.png');
INSERT INTO CAR_IMG VALUES ('그랜저','../resources/static/car_Img/그랜저.png');
INSERT INTO CAR_IMG VALUES ('니로','../resources/static/car_Img/니로.png');
INSERT INTO CAR_IMG VALUES ('레이','../resources/static/car_Img/레이.png');
INSERT INTO CAR_IMG VALUES ('말리부','../resources/static/car_Img/말리부.png');
INSERT INTO CAR_IMG VALUES ('모하비','../resources/static/car_Img/모하비.png');
INSERT INTO CAR_IMG VALUES ('베뉴','../resources/static/car_Img/베뉴.png');
INSERT INTO CAR_IMG VALUES ('셀토스','../resources/static/car_Img/셀토스.png');
INSERT INTO CAR_IMG VALUES ('스포티지','../resources/static/car_Img/스포티지.png');
INSERT INTO CAR_IMG VALUES ('싼타페','../resources/static/car_Img/싼타페.png');
INSERT INTO CAR_IMG VALUES ('쏘나타','../resources/static/car_Img/쏘나타.png');
INSERT INTO CAR_IMG VALUES ('쏘렌토','../resources/static/car_Img/쏘렌토.png');
INSERT INTO CAR_IMG VALUES ('아반떼','../resources/static/car_Img/아반떼.png');
INSERT INTO CAR_IMG VALUES ('아이오닉5','../resources/static/car_Img/아이오닉5.png');
INSERT INTO CAR_IMG VALUES ('아이오닉6','../resources/static/car_Img/아이오닉6.png');
INSERT INTO CAR_IMG VALUES ('아테온','../resources/static/car_Img/아테온.png');
INSERT INTO CAR_IMG VALUES ('이쿼녹스','../resources/static/car_Img/이쿼녹스.png');
INSERT INTO CAR_IMG VALUES ('임팔라','../resources/static/car_Img/임팔라.png');
INSERT INTO CAR_IMG VALUES ('제타','../resources/static/car_Img/제타.png');
INSERT INTO CAR_IMG VALUES ('카니발','../resources/static/car_Img/카니발.png');
INSERT INTO CAR_IMG VALUES ('캐스퍼','../resources/static/car_Img/캐스퍼.png');
INSERT INTO CAR_IMG VALUES ('코나','../resources/static/car_Img/코나.png');
INSERT INTO CAR_IMG VALUES ('크루즈','../resources/static/car_Img/크루즈.png');
INSERT INTO CAR_IMG VALUES ('타호','../resources/static/car_Img/타호.png');
INSERT INTO CAR_IMG VALUES ('투싼','../resources/static/car_Img/투싼.png');
INSERT INTO CAR_IMG VALUES ('투아렉','../resources/static/car_Img/투아렉.png');
INSERT INTO CAR_IMG VALUES ('트래버스','../resources/static/car_Img/트래버스.png');
INSERT INTO CAR_IMG VALUES ('트랙스크로스오버','../resources/static/car_Img/트랙스 크로스오버.png');
INSERT INTO CAR_IMG VALUES ('트레일블레이저','../resources/static/car_Img/트레일블레이저.png');
INSERT INTO CAR_IMG VALUES ('티구안','../resources/static/car_Img/티구안.png');
INSERT INTO CAR_IMG VALUES ('파사트','../resources/static/car_Img/파사트.png');
INSERT INTO CAR_IMG VALUES ('팰리세이드','../resources/static/car_Img/팰리세이드.png');

SELECT * FROM car_img;

INSERT INTO OKAY_CAR_REGISTER VALUES ('12가1234','기아','K5','2.0 가솔린',650,1,15000,SYSDATE,'N');

SELECT * FROM OKAY_CAR_REGISTER o, CAR_IMG ci
WHERE SELL_OR_NOT='N'
AND o.model = ci.model
order by REGIST_TIME;

SELECT *
FROM OKAY_CAR_REGISTER o, CAR_IMG ci
WHERE car_num = '12가1234'
AND o.MODEL = ci.MODEL;