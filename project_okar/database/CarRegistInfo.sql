-- 차량등록정보 ==> 필터링에 사용하셈
CREATE TABLE CAR_REGIST_INFO(
   CRI_NO NUMBER(4) PRIMARY KEY,
   NAME VARCHAR2(50) NOT NULL,
   REFNO NUMBER(4)
);

DROP TABLE CAR_REGIST_INFO;

-------------------------------------------------
SELECT * FROM CAR_REGIST_INFO
WHERE REFNO = 0
ORDER BY REFNO ASC;

SELECT * FROM CAR_REGIST_INFO;

SELECT
LEVEL, cri.*
FROM CAR_REGIST_INFO cri
START WITH refno = 0
CONNECT BY PRIOR CRI_NO = REFNO;

SELECT
LEVEL, cri.*
FROM CAR_REGIST_INFO cri
START WITH refno = 0
CONNECT BY PRIOR CRI_NO = REFNO
AND LEVEL = 1;

INSERT all
INTO CAR_REGIST_INFO VALUES (1000,'현대',0)
INTO CAR_REGIST_INFO VALUES (2000,'기아',0)
INTO CAR_REGIST_INFO VALUES (3000,'쉐보레',0)
INTO CAR_REGIST_INFO VALUES (4000,'폭스바겐',0)
SELECT * FROM dual;

INSERT ALL
INTO CAR_REGIST_INFO VALUES (1100,'아반떼',1000)
INTO CAR_REGIST_INFO VALUES (1200,'쏘나타',1000)
INTO CAR_REGIST_INFO VALUES (1300,'그랜저',1000)
INTO CAR_REGIST_INFO VALUES (2100,'K3',2000)
INTO CAR_REGIST_INFO VALUES (2200,'K5',2000)
INTO CAR_REGIST_INFO VALUES (2300,'K9',2000)
INTO CAR_REGIST_INFO VALUES (3100,'크루즈',3000)
INTO CAR_REGIST_INFO VALUES (3200,'말리부',3000)
INTO CAR_REGIST_INFO VALUES (3300,'임팔라',3000)
INTO CAR_REGIST_INFO VALUES (4100,'제타',4000)
INTO CAR_REGIST_INFO VALUES (4200,'파사트',4000)
INTO CAR_REGIST_INFO VALUES (4300,'골프',4000)
SELECT * FROM dual;

INSERT ALL 
INTO CAR_REGIST_INFO VALUES (1110,'1.6 가솔린',1100)
INTO CAR_REGIST_INFO VALUES (1120,'1.6 LPi',1100)
INTO CAR_REGIST_INFO VALUES (1210,'2.0 가솔린',1200)
INTO CAR_REGIST_INFO VALUES (1220,'2.0 LPi',1200)
INTO CAR_REGIST_INFO VALUES (1230,'1.6 가솔린 터보',1200)
INTO CAR_REGIST_INFO VALUES (1240,'2.5 가솔린 터보',1200)
INTO CAR_REGIST_INFO VALUES (1310,'2.5 가솔린',1300)
INTO CAR_REGIST_INFO VALUES (1320,'3.5 가솔린',1300)
INTO CAR_REGIST_INFO VALUES (1330,'3.5 가솔린 AWD',1300)
INTO CAR_REGIST_INFO VALUES (1340,'3.5 LPG',1300)
INTO CAR_REGIST_INFO VALUES (2110,'1.6 가솔린',2100)
INTO CAR_REGIST_INFO VALUES (2210,'1.6 가솔린 터보',2200)
INTO CAR_REGIST_INFO VALUES (2220,'2.0 가솔린',2200)
INTO CAR_REGIST_INFO VALUES (2230,'2.0 LPi',2200)
INTO CAR_REGIST_INFO VALUES (2310,'3.3 가솔린 터보',2300)
INTO CAR_REGIST_INFO VALUES (2320,'3.3 가솔린 터보 AWD',2300)
INTO CAR_REGIST_INFO VALUES (2330,'3.8 가솔린',2300)
INTO CAR_REGIST_INFO VALUES (2340,'3.8 가솔린 AWD',2300)
INTO CAR_REGIST_INFO VALUES (3110,'1.4 터보',3100)
INTO CAR_REGIST_INFO VALUES (3120,'1.6 디젤',3100)
INTO CAR_REGIST_INFO VALUES (3210,'1.35 가솔린 터보',3200)
INTO CAR_REGIST_INFO VALUES (3220,'2.0 가솔린 터보',3200)
INTO CAR_REGIST_INFO VALUES (3310,'2.5 가솔린',3300)
INTO CAR_REGIST_INFO VALUES (3320,'3.6 가솔린',3300)
INTO CAR_REGIST_INFO VALUES (4110,'1.5 TSI',4100)
INTO CAR_REGIST_INFO VALUES (4210,'2.0 TDI',4200)
INTO CAR_REGIST_INFO VALUES (4220,'2.0 TDI 4Motion',4200)
INTO CAR_REGIST_INFO VALUES (4310,'2.0 TDI',4300)
SELECT * FROM dual;