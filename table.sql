--------------------------------------------------------
--  DDL for Table CAREER
--------------------------------------------------------

  CREATE TABLE "SEBASTIAN_TAYLOR"."CAREER" 
   (	"ID_CAREER" VARCHAR2(10 BYTE), 
	"CAREER_NAME" VARCHAR2(100 BYTE), 
	"TITLE" VARCHAR2(30 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CAREER_COURSE
--------------------------------------------------------

  CREATE TABLE "SEBASTIAN_TAYLOR"."CAREER_COURSE" 
   (	"ID_CAREER_COURSE" NUMBER, 
	"ID_CAREER" VARCHAR2(10 BYTE), 
	"ID_CICLE" VARCHAR2(6 BYTE), 
	"ID_COURSE" VARCHAR2(10 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CICLE
--------------------------------------------------------

  CREATE TABLE "SEBASTIAN_TAYLOR"."CICLE" 
   (	"ID_CICLE" VARCHAR2(6 BYTE), 
	"NUMBER_CICLE" NUMBER, 
	"DATE_START" DATE, 
	"DATE_END" DATE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CLASS_GROUP
--------------------------------------------------------

  CREATE TABLE "SEBASTIAN_TAYLOR"."CLASS_GROUP" 
   (	"ID_CICLE" VARCHAR2(6 BYTE), 
	"ID_COURSE" VARCHAR2(10 BYTE), 
	"NUM_GROUP" NUMBER, 
	"TIMETABLE" VARCHAR2(20 BYTE), 
	"ID_PROFESSOR" VARCHAR2(10 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table COURSE
--------------------------------------------------------

  CREATE TABLE "SEBASTIAN_TAYLOR"."COURSE" 
   (	"ID_COURSE" VARCHAR2(10 BYTE), 
	"NAME_COURSE" VARCHAR2(100 BYTE), 
	"CREDITS" NUMBER, 
	"HOURS_COURSE" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table GROUP_STUDENT
--------------------------------------------------------

  CREATE TABLE "SEBASTIAN_TAYLOR"."GROUP_STUDENT" 
   (	"ID_STUDENT" VARCHAR2(10 BYTE), 
	"ID_GROUP" NUMBER, 
	"GRADE" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PROFESSOR
--------------------------------------------------------

  CREATE TABLE "SEBASTIAN_TAYLOR"."PROFESSOR" 
   (	"ID_USER" VARCHAR2(10 BYTE), 
	"USER_NAME" VARCHAR2(50 BYTE), 
	"PHONE" VARCHAR2(20 BYTE), 
	"EMAIL" VARCHAR2(191 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table STUDENT
--------------------------------------------------------

  CREATE TABLE "SEBASTIAN_TAYLOR"."STUDENT" 
   (	"ID_STUDENT" VARCHAR2(10 BYTE), 
	"NAME_STUDENT" VARCHAR2(100 BYTE), 
	"PHONE" VARCHAR2(20 BYTE), 
	"EMAIL" VARCHAR2(191 BYTE), 
	"BIRTHDATE" DATE, 
	"ID_CAREER" VARCHAR2(10 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table USER_ROLE
--------------------------------------------------------

  CREATE TABLE "SEBASTIAN_TAYLOR"."USER_ROLE" 
   (	"ID_ROLE" NUMBER(*,0), 
	"ROLE_NAME" VARCHAR2(50 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table USERS
--------------------------------------------------------

  CREATE TABLE "SEBASTIAN_TAYLOR"."USERS" 
   (	"ID_USER" VARCHAR2(10 BYTE), 
	"PASS" CHAR(40 BYTE), 
	"ID_ROLE" NUMBER(*,0)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C004040
--------------------------------------------------------

  CREATE UNIQUE INDEX "SEBASTIAN_TAYLOR"."SYS_C004040" ON "SEBASTIAN_TAYLOR"."CAREER" ("ID_CAREER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C004045
--------------------------------------------------------

  CREATE UNIQUE INDEX "SEBASTIAN_TAYLOR"."SYS_C004045" ON "SEBASTIAN_TAYLOR"."CICLE" ("ID_CICLE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C004069
--------------------------------------------------------

  CREATE UNIQUE INDEX "SEBASTIAN_TAYLOR"."SYS_C004069" ON "SEBASTIAN_TAYLOR"."CLASS_GROUP" ("NUM_GROUP") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C004050
--------------------------------------------------------

  CREATE UNIQUE INDEX "SEBASTIAN_TAYLOR"."SYS_C004050" ON "SEBASTIAN_TAYLOR"."COURSE" ("ID_COURSE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C004101
--------------------------------------------------------

  CREATE UNIQUE INDEX "SEBASTIAN_TAYLOR"."SYS_C004101" ON "SEBASTIAN_TAYLOR"."GROUP_STUDENT" ("ID_GROUP") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C004035
--------------------------------------------------------

  CREATE UNIQUE INDEX "SEBASTIAN_TAYLOR"."SYS_C004035" ON "SEBASTIAN_TAYLOR"."PROFESSOR" ("ID_USER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C004061
--------------------------------------------------------

  CREATE UNIQUE INDEX "SEBASTIAN_TAYLOR"."SYS_C004061" ON "SEBASTIAN_TAYLOR"."STUDENT" ("ID_STUDENT") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index USER_ROLE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SEBASTIAN_TAYLOR"."USER_ROLE_PK" ON "SEBASTIAN_TAYLOR"."USER_ROLE" ("ID_ROLE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index USERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SEBASTIAN_TAYLOR"."USERS_PK" ON "SEBASTIAN_TAYLOR"."USERS" ("ID_USER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
  
  create or replace PACKAGE TYPES

AS

TYPE REF_CURSOR IS REF CURSOR;

END;

  
  
--------------------------------------------------------
--  DDL for Function FUN_LIST_ROLE
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "SEBASTIAN_TAYLOR"."FUN_LIST_ROLE" 
return types.ref_cursor
as
cursor_user_role types.ref_cursor;
begin
  OPEN cursor_user_role FOR 

SELECT * FROM user_role;

RETURN cursor_user_role;
end fun_list_role;

/
--------------------------------------------------------
--  DDL for Function FUN_SEARCH_ROLE
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "SEBASTIAN_TAYLOR"."FUN_SEARCH_ROLE" (Pid in USER_ROLE.ID_ROLE%TYPE) 
return types.ref_cursor
as
cursor_user_role types.ref_cursor;
begin
  OPEN cursor_user_role FOR 

SELECT * FROM user_role WHERE id_role = Pid; 

RETURN cursor_user_role;
end fun_search_role;

/
--------------------------------------------------------
--  Constraints for Table CAREER
--------------------------------------------------------

  ALTER TABLE "SEBASTIAN_TAYLOR"."CAREER" MODIFY ("ID_CAREER" NOT NULL ENABLE);
 
  ALTER TABLE "SEBASTIAN_TAYLOR"."CAREER" MODIFY ("CAREER_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "SEBASTIAN_TAYLOR"."CAREER" MODIFY ("TITLE" NOT NULL ENABLE);
 
  ALTER TABLE "SEBASTIAN_TAYLOR"."CAREER" ADD PRIMARY KEY ("ID_CAREER")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CAREER_COURSE
--------------------------------------------------------

  ALTER TABLE "SEBASTIAN_TAYLOR"."CAREER_COURSE" MODIFY ("ID_CAREER_COURSE" NOT NULL ENABLE);
 
  ALTER TABLE "SEBASTIAN_TAYLOR"."CAREER_COURSE" MODIFY ("ID_CAREER" NOT NULL ENABLE);
 
  ALTER TABLE "SEBASTIAN_TAYLOR"."CAREER_COURSE" MODIFY ("ID_CICLE" NOT NULL ENABLE);
 
  ALTER TABLE "SEBASTIAN_TAYLOR"."CAREER_COURSE" MODIFY ("ID_COURSE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CICLE
--------------------------------------------------------

  ALTER TABLE "SEBASTIAN_TAYLOR"."CICLE" MODIFY ("ID_CICLE" NOT NULL ENABLE);
 
  ALTER TABLE "SEBASTIAN_TAYLOR"."CICLE" MODIFY ("NUMBER_CICLE" NOT NULL ENABLE);
 
  ALTER TABLE "SEBASTIAN_TAYLOR"."CICLE" MODIFY ("DATE_START" NOT NULL ENABLE);
 
  ALTER TABLE "SEBASTIAN_TAYLOR"."CICLE" MODIFY ("DATE_END" NOT NULL ENABLE);
 
  ALTER TABLE "SEBASTIAN_TAYLOR"."CICLE" ADD PRIMARY KEY ("ID_CICLE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CLASS_GROUP
--------------------------------------------------------

  ALTER TABLE "SEBASTIAN_TAYLOR"."CLASS_GROUP" MODIFY ("ID_CICLE" NOT NULL ENABLE);
 
  ALTER TABLE "SEBASTIAN_TAYLOR"."CLASS_GROUP" MODIFY ("ID_COURSE" NOT NULL ENABLE);
 
  ALTER TABLE "SEBASTIAN_TAYLOR"."CLASS_GROUP" MODIFY ("NUM_GROUP" NOT NULL ENABLE);
 
  ALTER TABLE "SEBASTIAN_TAYLOR"."CLASS_GROUP" MODIFY ("TIMETABLE" NOT NULL ENABLE);
 
  ALTER TABLE "SEBASTIAN_TAYLOR"."CLASS_GROUP" MODIFY ("ID_PROFESSOR" NOT NULL ENABLE);
 
  ALTER TABLE "SEBASTIAN_TAYLOR"."CLASS_GROUP" ADD PRIMARY KEY ("NUM_GROUP")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table COURSE
--------------------------------------------------------

  ALTER TABLE "SEBASTIAN_TAYLOR"."COURSE" MODIFY ("ID_COURSE" NOT NULL ENABLE);
 
  ALTER TABLE "SEBASTIAN_TAYLOR"."COURSE" MODIFY ("NAME_COURSE" NOT NULL ENABLE);
 
  ALTER TABLE "SEBASTIAN_TAYLOR"."COURSE" MODIFY ("CREDITS" NOT NULL ENABLE);
 
  ALTER TABLE "SEBASTIAN_TAYLOR"."COURSE" MODIFY ("HOURS_COURSE" NOT NULL ENABLE);
 
  ALTER TABLE "SEBASTIAN_TAYLOR"."COURSE" ADD PRIMARY KEY ("ID_COURSE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table GROUP_STUDENT
--------------------------------------------------------

  ALTER TABLE "SEBASTIAN_TAYLOR"."GROUP_STUDENT" MODIFY ("ID_STUDENT" NOT NULL ENABLE);
 
  ALTER TABLE "SEBASTIAN_TAYLOR"."GROUP_STUDENT" MODIFY ("ID_GROUP" NOT NULL ENABLE);
 
  ALTER TABLE "SEBASTIAN_TAYLOR"."GROUP_STUDENT" MODIFY ("GRADE" NOT NULL ENABLE);
 
  ALTER TABLE "SEBASTIAN_TAYLOR"."GROUP_STUDENT" ADD PRIMARY KEY ("ID_GROUP")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PROFESSOR
--------------------------------------------------------

  ALTER TABLE "SEBASTIAN_TAYLOR"."PROFESSOR" MODIFY ("ID_USER" NOT NULL ENABLE);
 
  ALTER TABLE "SEBASTIAN_TAYLOR"."PROFESSOR" MODIFY ("USER_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "SEBASTIAN_TAYLOR"."PROFESSOR" MODIFY ("PHONE" NOT NULL ENABLE);
 
  ALTER TABLE "SEBASTIAN_TAYLOR"."PROFESSOR" MODIFY ("EMAIL" NOT NULL ENABLE);
 
  ALTER TABLE "SEBASTIAN_TAYLOR"."PROFESSOR" ADD PRIMARY KEY ("ID_USER")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table STUDENT
--------------------------------------------------------

  ALTER TABLE "SEBASTIAN_TAYLOR"."STUDENT" MODIFY ("ID_STUDENT" NOT NULL ENABLE);
 
  ALTER TABLE "SEBASTIAN_TAYLOR"."STUDENT" MODIFY ("NAME_STUDENT" NOT NULL ENABLE);
 
  ALTER TABLE "SEBASTIAN_TAYLOR"."STUDENT" MODIFY ("PHONE" NOT NULL ENABLE);
 
  ALTER TABLE "SEBASTIAN_TAYLOR"."STUDENT" MODIFY ("EMAIL" NOT NULL ENABLE);
 
  ALTER TABLE "SEBASTIAN_TAYLOR"."STUDENT" MODIFY ("BIRTHDATE" NOT NULL ENABLE);
 
  ALTER TABLE "SEBASTIAN_TAYLOR"."STUDENT" ADD PRIMARY KEY ("ID_STUDENT")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table USER_ROLE
--------------------------------------------------------

  ALTER TABLE "SEBASTIAN_TAYLOR"."USER_ROLE" MODIFY ("ID_ROLE" NOT NULL ENABLE);
 
  ALTER TABLE "SEBASTIAN_TAYLOR"."USER_ROLE" MODIFY ("ROLE_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "SEBASTIAN_TAYLOR"."USER_ROLE" ADD CONSTRAINT "USER_ROLE_PK" PRIMARY KEY ("ID_ROLE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "SEBASTIAN_TAYLOR"."USERS" MODIFY ("ID_USER" NOT NULL ENABLE);
 
  ALTER TABLE "SEBASTIAN_TAYLOR"."USERS" MODIFY ("PASS" NOT NULL ENABLE);
 
  ALTER TABLE "SEBASTIAN_TAYLOR"."USERS" MODIFY ("ID_ROLE" NOT NULL ENABLE);
 
  ALTER TABLE "SEBASTIAN_TAYLOR"."USERS" ADD CONSTRAINT "USERS_PK" PRIMARY KEY ("ID_USER")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS"  ENABLE;


--------------------------------------------------------
--  DDL for Function FUN_LIST_ROLE
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "SEBASTIAN_TAYLOR"."FUN_LIST_ROLE" 
return types.ref_cursor
as
cursor_user_role types.ref_cursor;
begin
  OPEN cursor_user_role FOR 

SELECT * FROM user_role;

RETURN cursor_user_role;
end fun_list_role;

/
--------------------------------------------------------
--  DDL for Function FUN_SEARCH_ROLE
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "SEBASTIAN_TAYLOR"."FUN_SEARCH_ROLE" (Pid in USER_ROLE.ID_ROLE%TYPE) 
return types.ref_cursor
as
cursor_user_role types.ref_cursor;
begin
  OPEN cursor_user_role FOR 

SELECT * FROM user_role WHERE id_role = Pid; 

RETURN cursor_user_role;
end fun_search_role;

/


--------------------------------------------------------
--  DDL for Sequence SEC_ID_CAREER_COURE
--------------------------------------------------------

   CREATE SEQUENCE  "SEBASTIAN_TAYLOR"."SEC_ID_CAREER_COURE"  MINVALUE 1 MAXVALUE 999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
