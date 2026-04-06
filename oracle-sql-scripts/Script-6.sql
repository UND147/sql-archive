-- 260327
SELECT 'Oracle',
	   LPAD('Oracle', 10, '#') AS LPAD1,
	   RPAD('Oracle', 10, '#') AS RPAD1,
	   LPAD('Oracle', 10) AS LPAD2,
	   RPAD('Oracle', 10) AS RPAD2
FROM DUAL;
-- 사원번호와 사원이름을 함께 출력 . 값 상수 변수 연산식 함수  
SELECT CONCAT(EMPNO, ENAME) AS EMP1,
       CONCAT(EMPNO, CONCAT(':', ENAME)) AS EMP2,
       EMPNO || ' : ' || ENAME AS EMP3,
       EMPNO || ENAME || AS EMP4
FROM EMP
WHERE UPPER(ENAME) = 'SCOTT';
-- TRIM 문자
SELECT '  _  _  ORACLE  _  _  ' AS TEXT,
       TRIM('  _  _  ORACLE  _  _  ') AS "D",
       TRIM(LEADING FROM '  _  _  ORACLE  _  _  ') AS TRIM_L,
       TRIM(TRAILING FROM '  _  _  ORACLE  _  _  ') AS TRIM_R,
       TRIM(BOTH FROM '  _  _  ORACLE  _  _  ') AS BOTH
FROM DUAL;
--  _  _  ORACLE  _  _  /
--_  _  ORACLE  _  _/
--_  _  ORACLE  _  _  /
--  _  _  ORACLE  _  _/
--_  _  ORACLE  _  _/
SELECT '_  _  ORACLE  _  _' AS TEXT,
       TRIM ('_' FROM '_  _  ORACLE  _  _') AS TRIM,
       TRIM (LEADING '_' FROM '_  _  ORACLE  _  _') AS TRIML,
       TRIM (TRAILING '_' FROM '_  _  ORACLE  _  _') AS TRIMR,
       TRIM (BOTH '_' FROM '_  _  ORACLE  _  _') AS B
FROM DUAL;
-- LTRIM RTRIM 문자열
SELECT '_  _  ORACLE  _  _' AS TEXT,
       LTRIM('_  _  ORACLE  _  _', ' _') AS LTRIM,
       RTRIM('_  _  ORACLE  _  _', '_ ') AS RTRIM,
       LTRIM(RTRIM('_  _  ORACLE  _  _', ' _'), ' _') AS B
FROM DUAL;
SELECT '_ < _ < % ORACLE  _ < %_' AS TEXT,
	   LTRIM('_ < _ < % ORACLE  _ < %_', '%_ <') AS LTRIM,
	   RTRIM('_ < _ < % ORACLE  _ < %_', '% _ <') AS RTRIM
FROM DUAL;
