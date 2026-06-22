# Database Report — 제약조건 기반 테이블 설계

2026학년도 1학기 데이터베이스 과목 보고서 과제입니다. 부서·학생 두 테이블을 제약조건과 함께 설계하고, 기본적인 DML 연산을 수행합니다.

## 과제 개요

### 목적
- `PRIMARY KEY` / `FOREIGN KEY` / `NOT NULL` 제약조건을 사용한 테이블 설계
- 부서(`tblDuicaDept`)와 학생(`tblDuicaSt`) 간 **참조 무결성**(1:N) 구성
- `INSERT` / `UPDATE` / `SELECT` 및 `ALTER TABLE`, 형 변환(`TO_CHAR`, `TO_DATE`) 활용

### 테이블 구조
| 테이블 | 주요 컬럼 | 제약조건 |
|--------|-----------|----------|
| `tblDuicaDept` | `DEPTNO`(PK), `DNAME` | 기본키, `NOT NULL` |
| `tblDuicaSt` | `SNO`(PK), `SNAME`, `HIREDATE`, `MAJOR`(FK) | 기본키, `NOT NULL`, `MAJOR → DEPTNO` 외래키 |

### 수행 흐름
1. 두 테이블 생성 (제약조건 포함)
2. 부서 데이터 입력 (`INSERT`)
3. 학생 본인 정보 입력 (`SNO` 자릿수 `ALTER` 후 입력)
4. 입력 결과 조회 (`SELECT`, `TO_CHAR`)
5. 이름 변경 (`UPDATE`)
6. 변경 결과 확인

## 파일 구성
```
sql-exam-2026-1/
├── report_aa.sql                 # 보고서 SQL 스크립트
├── [AA]...과제.pdf               # 과제 보고서 (제출본)
└── README.md
```
