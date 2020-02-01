DROP SEQUENCE MEMBER_SEQ;
DROP SEQUENCE CAFE_SEQ;
DROP SEQUENCE CAFE_MEMBER_SEQ;
DROP SEQUENCE CAFE_MENU_SEQ;
DROP SEQUENCE CAFE_BOARD_SEQ;
DROP SEQUENCE CAFE_THUMB_SEQ;
DROP SEQUENCE CAFE_BACKGROUND_SEQ;

CREATE SEQUENCE MEMBER_SEQ;
CREATE SEQUENCE CAFE_SEQ;
CREATE SEQUENCE CAFE_THUMB_SEQ;
CREATE SEQUENCE CAFE_BACKGROUND_SEQ;
CREATE SEQUENCE CAFE_MEMBER_SEQ;
CREATE SEQUENCE CAFE_MENU_SEQ;
CREATE SEQUENCE CAFE_BOARD_SEQ;


DROP TABLE MEMBER;
DROP TABLE CAFE;
DROP TABLE CAFE_MEMBER;
DROP TABLE CAFE_MENU;
DROP TABLE CAFE_BOARD;


CREATE TABLE MEMBER(
MEMBER_NO INT PRIMARY KEY,
ID VARCHAR2(100) UNIQUE,
PWD VARCHAR2(100) NOT NULL,
NAME VARCHAR2(100) NOT NULL

);

--카페번호, 카페명, 주인장, 소개, 썸네일, 배경, 가입제한, 검색어태그
CREATE TABLE CAFE(
CAFE_NO INT PRIMARY KEY,
TITLE VARCHAR2(100) UNIQUE,
ADMIN VARCHAR2(100) UNIQUE,
INTRO VARCHAR2(200) NOT NULL,
THUMB VARCHAR2(100) NOT NULL,
BACKGROUND VARCHAR2(100) NOT NULL,
RESTRICTION VARCHAR2(100) NOT NULL,
KEYWORD VARCHAR2(200)
);

--메뉴번호, 카페번호, 메뉴이름, 글쓰기권한
CREATE TABLE CAFE_MENU(
CAFE_MENU_NO INT PRIMARY KEY,
CAFE_NO INT REFERENCES CAFE(CAFE_NO),
NAME VARCHAR2(100) NOT NULL,
AUTHORITY VARCHAR2(100) NOT NULL,
CATEGORY VARCHAR2(100) NOT NULL,
UNIQUE (CAFE_NO, NAME)
);

--카페글번호, 카페번호, 카테고리, 제목, 내용, 작성자, 작성일
CREATE TABLE CAFE_BOARD(
CAFE_BOARD_NO INT PRIMARY KEY,
CAFE_NO INT REFERENCES CAFE(CAFE_NO),
CATEGORY VARCHAR2(100) NOT NULL,
TITLE VARCHAR2(100),
CONTENT VARCHAR2(4000),
WRITER VARCHAR2(100),
REGDATE DATE

);

--카페번호, 멤버번호
CREATE TABLE CAFE_MEMBER(
CAFE_NO INT REFERENCES CAFE(CAFE_NO),
MEMBER_NO INT REFERENCES MEMBER(MEMBER_NO)

);

INSERT INTO MEMBER VALUES(member_seq.nextval, 'user1', '1234', '유저1');
INSERT INTO MEMBER VALUES(member_seq.nextval, 'user2', '1234', '유저2');


