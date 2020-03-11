--------------------------------------------------------
--  File created - Monday-March-09-2020   
--------------------------------------------------------
DROP TABLE "CHARACTER" cascade constraints;
DROP TABLE "DIRECTOR" cascade constraints;
DROP TABLE "GENRE" cascade constraints;
DROP TABLE "JOB_CATEGORY" cascade constraints;
DROP TABLE "PERSON" cascade constraints;
DROP TABLE "PERSON_PROFESSION" cascade constraints;
DROP TABLE "PERSON_TITLE" cascade constraints;
DROP TABLE "PRINCIPAL" cascade constraints;
DROP TABLE "PROFESSION" cascade constraints;
DROP TABLE "RATING" cascade constraints;
DROP TABLE "RATING_VOTES" cascade constraints;
DROP TABLE "TITLE" cascade constraints;
DROP TABLE "TITLE_CHARACTER" cascade constraints;
DROP TABLE "TITLE_DIRECTOR" cascade constraints;
DROP TABLE "TITLE_GENRE" cascade constraints;
DROP TABLE "TITLE_JOB_CATEGORY" cascade constraints;
DROP TABLE "TITLE_PRINCIPAL" cascade constraints;
DROP TABLE "TITLE_RATING" cascade constraints;
DROP TABLE "TITLE_WRITER" cascade constraints;
DROP TABLE "WRITER" cascade constraints;
--------------------------------------------------------
--  DDL for Table CHARACTER
--------------------------------------------------------

  CREATE TABLE "CHARACTER" 
   (	"CHARACTER_ID" UROWID (20), 
	"CHARACTER" CLOB
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" 
 LOB ("CHARACTER") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES ) ;
--------------------------------------------------------
--  DDL for Table DIRECTOR
--------------------------------------------------------

  CREATE TABLE "DIRECTOR" 
   (	"DIRECTOR_ID" UROWID (4000), 
	"PERSON_ID" UROWID (4000)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table GENRE
--------------------------------------------------------

  CREATE TABLE "GENRE" 
   (	"GENRE_ID" UROWID (20), 
	"GENRE" CLOB
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" 
 LOB ("GENRE") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES ) ;
--------------------------------------------------------
--  DDL for Table JOB_CATEGORY
--------------------------------------------------------

  CREATE TABLE "JOB_CATEGORY" 
   (	"JOB_CATEGORY_ID" UROWID (20), 
	"JOB_CATEGORY" CLOB
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" 
 LOB ("JOB_CATEGORY") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES ) ;
--------------------------------------------------------
--  DDL for Table PERSON
--------------------------------------------------------

  CREATE TABLE "PERSON" 
   (	"PERSON_ID" UROWID (4000), 
	"NAME" VARCHAR2(35 BYTE), 
	"BIRTH_YEAR" DATE, 
	"DEATH_YEAR" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PERSON_PROFESSION
--------------------------------------------------------

  CREATE TABLE "PERSON_PROFESSION" 
   (	"PERSON_ID" UROWID (4000), 
	"PROFESSION_ID" UROWID (4000)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PERSON_TITLE
--------------------------------------------------------

  CREATE TABLE "PERSON_TITLE" 
   (	"PERSON_ID" UROWID (20), 
	"TITLE_ID" UROWID (20)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PRINCIPAL
--------------------------------------------------------

  CREATE TABLE "PRINCIPAL" 
   (	"PRINCIPAL_ID" UROWID (20), 
	"PERSON_ID" UROWID (20)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PROFESSION
--------------------------------------------------------

  CREATE TABLE "PROFESSION" 
   (	"PROFESSION_ID" UROWID (4000), 
	"PROFESSION" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table RATING
--------------------------------------------------------

  CREATE TABLE "RATING" 
   (	"RATING_ID" UROWID (20), 
	"AVERAGE_RATING" NUMBER(2,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table RATING_VOTES
--------------------------------------------------------

  CREATE TABLE "RATING_VOTES" 
   (	"RATING_ID" UROWID (20), 
	"NUMVOTES" NUMBER(*,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TITLE
--------------------------------------------------------

  CREATE TABLE "TITLE" 
   (	"TITLE_ID" UROWID (4000), 
	"TITLE" CLOB, 
	"RELEASED" DATE, 
	"RUNTIME" NUMBER(*,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" 
 LOB ("TITLE") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES ) ;
--------------------------------------------------------
--  DDL for Table TITLE_CHARACTER
--------------------------------------------------------

  CREATE TABLE "TITLE_CHARACTER" 
   (	"TITLE_ID" UROWID (20), 
	"CHARACTER_ID" UROWID (20)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TITLE_DIRECTOR
--------------------------------------------------------

  CREATE TABLE "TITLE_DIRECTOR" 
   (	"TITLE_ID" UROWID (20), 
	"DIRECTOR_ID" UROWID (20)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TITLE_GENRE
--------------------------------------------------------

  CREATE TABLE "TITLE_GENRE" 
   (	"TITLE_ID" UROWID (20), 
	"GENRE_ID" UROWID (20)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TITLE_JOB_CATEGORY
--------------------------------------------------------

  CREATE TABLE "TITLE_JOB_CATEGORY" 
   (	"TITLE_ID" UROWID (20), 
	"JOB_CATEGORY_ID" UROWID (20)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TITLE_PRINCIPAL
--------------------------------------------------------

  CREATE TABLE "TITLE_PRINCIPAL" 
   (	"PRINCIPAL_ID" UROWID (20), 
	"TITLE_ID" UROWID (20)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TITLE_RATING
--------------------------------------------------------

  CREATE TABLE "TITLE_RATING" 
   (	"TITLE_ID" UROWID (20), 
	"RATING_ID" UROWID (20)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TITLE_WRITER
--------------------------------------------------------

  CREATE TABLE "TITLE_WRITER" 
   (	"TITLE_ID" UROWID (20), 
	"WRITER_ID" UROWID (20)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;

   COMMENT ON TABLE "TITLE_WRITER"  IS 'When title is deleted, do not delete the person';
--------------------------------------------------------
--  DDL for Table WRITER
--------------------------------------------------------

  CREATE TABLE "WRITER" 
   (	"PERSON_ID" UROWID (4000), 
	"WRITER_ID" UROWID (4000)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
REM INSERTING into CHARACTER
SET DEFINE OFF;
REM INSERTING into DIRECTOR
SET DEFINE OFF;
REM INSERTING into GENRE
SET DEFINE OFF;
REM INSERTING into JOB_CATEGORY
SET DEFINE OFF;
REM INSERTING into PERSON
SET DEFINE OFF;
REM INSERTING into PERSON_PROFESSION
SET DEFINE OFF;
REM INSERTING into PERSON_TITLE
SET DEFINE OFF;
REM INSERTING into PRINCIPAL
SET DEFINE OFF;
REM INSERTING into PROFESSION
SET DEFINE OFF;
REM INSERTING into RATING
SET DEFINE OFF;
REM INSERTING into RATING_VOTES
SET DEFINE OFF;
REM INSERTING into TITLE
SET DEFINE OFF;
REM INSERTING into TITLE_CHARACTER
SET DEFINE OFF;
REM INSERTING into TITLE_DIRECTOR
SET DEFINE OFF;
REM INSERTING into TITLE_GENRE
SET DEFINE OFF;
REM INSERTING into TITLE_JOB_CATEGORY
SET DEFINE OFF;
REM INSERTING into TITLE_PRINCIPAL
SET DEFINE OFF;
REM INSERTING into TITLE_RATING
SET DEFINE OFF;
REM INSERTING into TITLE_WRITER
SET DEFINE OFF;
REM INSERTING into WRITER
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index CHARACTER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CHARACTER_PK" ON "CHARACTER" ("CHARACTER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index DIRECTOR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DIRECTOR_PK" ON "DIRECTOR" ("DIRECTOR_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 167 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index GENRE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "GENRE_PK" ON "GENRE" ("GENRE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index JOB_CATEGORY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "JOB_CATEGORY_PK" ON "JOB_CATEGORY" ("JOB_CATEGORY_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PERSON_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PERSON_PK" ON "PERSON" ("PERSON_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 167 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PRINCIPAL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PRINCIPAL_PK" ON "PRINCIPAL" ("PRINCIPAL_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PROFESSION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROFESSION_PK" ON "PROFESSION" ("PROFESSION_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 167 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index RATING_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "RATING_PK" ON "RATING" ("RATING_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index RATING_VOTES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "RATING_VOTES_PK" ON "RATING_VOTES" ("RATING_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TITLE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TITLE_PK" ON "TITLE" ("TITLE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 167 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index WRITER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "WRITER_PK" ON "WRITER" ("WRITER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 167 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table TITLE
--------------------------------------------------------

  ALTER TABLE "TITLE" MODIFY ("TITLE_ID" NOT NULL ENABLE);
  ALTER TABLE "TITLE" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "TITLE" ADD CONSTRAINT "TITLE_PK" PRIMARY KEY ("TITLE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 167 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PERSON_PROFESSION
--------------------------------------------------------

  ALTER TABLE "PERSON_PROFESSION" MODIFY ("PERSON_ID" NOT NULL ENABLE);
  ALTER TABLE "PERSON_PROFESSION" MODIFY ("PROFESSION_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PERSON_TITLE
--------------------------------------------------------

  ALTER TABLE "PERSON_TITLE" MODIFY ("PERSON_ID" NOT NULL ENABLE);
  ALTER TABLE "PERSON_TITLE" MODIFY ("TITLE_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DIRECTOR
--------------------------------------------------------

  ALTER TABLE "DIRECTOR" MODIFY ("DIRECTOR_ID" NOT NULL ENABLE);
  ALTER TABLE "DIRECTOR" MODIFY ("PERSON_ID" NOT NULL ENABLE);
  ALTER TABLE "DIRECTOR" ADD CONSTRAINT "DIRECTOR_PK" PRIMARY KEY ("DIRECTOR_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 167 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table RATING_VOTES
--------------------------------------------------------

  ALTER TABLE "RATING_VOTES" MODIFY ("RATING_ID" NOT NULL ENABLE);
  ALTER TABLE "RATING_VOTES" MODIFY ("NUMVOTES" NOT NULL ENABLE);
  ALTER TABLE "RATING_VOTES" ADD CONSTRAINT "RATING_VOTES_PK" PRIMARY KEY ("RATING_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PRINCIPAL
--------------------------------------------------------

  ALTER TABLE "PRINCIPAL" MODIFY ("PRINCIPAL_ID" NOT NULL ENABLE);
  ALTER TABLE "PRINCIPAL" MODIFY ("PERSON_ID" NOT NULL ENABLE);
  ALTER TABLE "PRINCIPAL" ADD CONSTRAINT "PRINCIPAL_PK" PRIMARY KEY ("PRINCIPAL_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table RATING
--------------------------------------------------------

  ALTER TABLE "RATING" MODIFY ("RATING_ID" NOT NULL ENABLE);
  ALTER TABLE "RATING" MODIFY ("AVERAGE_RATING" NOT NULL ENABLE);
  ALTER TABLE "RATING" ADD CONSTRAINT "RATING_PK" PRIMARY KEY ("RATING_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PROFESSION
--------------------------------------------------------

  ALTER TABLE "PROFESSION" MODIFY ("PROFESSION_ID" NOT NULL ENABLE);
  ALTER TABLE "PROFESSION" MODIFY ("PROFESSION" NOT NULL ENABLE);
  ALTER TABLE "PROFESSION" ADD CONSTRAINT "PROFESSION_PK" PRIMARY KEY ("PROFESSION_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 167 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table JOB_CATEGORY
--------------------------------------------------------

  ALTER TABLE "JOB_CATEGORY" MODIFY ("JOB_CATEGORY_ID" NOT NULL ENABLE);
  ALTER TABLE "JOB_CATEGORY" MODIFY ("JOB_CATEGORY" NOT NULL ENABLE);
  ALTER TABLE "JOB_CATEGORY" ADD CONSTRAINT "JOB_CATEGORY_PK" PRIMARY KEY ("JOB_CATEGORY_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TITLE_JOB_CATEGORY
--------------------------------------------------------

  ALTER TABLE "TITLE_JOB_CATEGORY" MODIFY ("TITLE_ID" NOT NULL ENABLE);
  ALTER TABLE "TITLE_JOB_CATEGORY" MODIFY ("JOB_CATEGORY_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PERSON
--------------------------------------------------------

  ALTER TABLE "PERSON" MODIFY ("PERSON_ID" NOT NULL ENABLE);
  ALTER TABLE "PERSON" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "PERSON" MODIFY ("BIRTH_YEAR" NOT NULL ENABLE);
  ALTER TABLE "PERSON" ADD CONSTRAINT "PERSON_PK" PRIMARY KEY ("PERSON_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 167 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table GENRE
--------------------------------------------------------

  ALTER TABLE "GENRE" MODIFY ("GENRE_ID" NOT NULL ENABLE);
  ALTER TABLE "GENRE" MODIFY ("GENRE" NOT NULL ENABLE);
  ALTER TABLE "GENRE" ADD CONSTRAINT "GENRE_PK" PRIMARY KEY ("GENRE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table WRITER
--------------------------------------------------------

  ALTER TABLE "WRITER" MODIFY ("PERSON_ID" NOT NULL ENABLE);
  ALTER TABLE "WRITER" MODIFY ("WRITER_ID" NOT NULL ENABLE);
  ALTER TABLE "WRITER" ADD CONSTRAINT "WRITER_PK" PRIMARY KEY ("WRITER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 167 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CHARACTER
--------------------------------------------------------

  ALTER TABLE "CHARACTER" MODIFY ("CHARACTER_ID" NOT NULL ENABLE);
  ALTER TABLE "CHARACTER" MODIFY ("CHARACTER" NOT NULL ENABLE);
  ALTER TABLE "CHARACTER" ADD CONSTRAINT "CHARACTER_PK" PRIMARY KEY ("CHARACTER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TITLE_DIRECTOR
--------------------------------------------------------

  ALTER TABLE "TITLE_DIRECTOR" MODIFY ("TITLE_ID" NOT NULL ENABLE);
  ALTER TABLE "TITLE_DIRECTOR" MODIFY ("DIRECTOR_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TITLE_GENRE
--------------------------------------------------------

  ALTER TABLE "TITLE_GENRE" MODIFY ("GENRE_ID" NOT NULL ENABLE);
  ALTER TABLE "TITLE_GENRE" MODIFY ("TITLE_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TITLE_WRITER
--------------------------------------------------------

  ALTER TABLE "TITLE_WRITER" MODIFY ("TITLE_ID" NOT NULL ENABLE);
  ALTER TABLE "TITLE_WRITER" MODIFY ("WRITER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TITLE_PRINCIPAL
--------------------------------------------------------

  ALTER TABLE "TITLE_PRINCIPAL" MODIFY ("TITLE_ID" NOT NULL ENABLE);
  ALTER TABLE "TITLE_PRINCIPAL" MODIFY ("PRINCIPAL_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TITLE_CHARACTER
--------------------------------------------------------

  ALTER TABLE "TITLE_CHARACTER" MODIFY ("TITLE_ID" NOT NULL ENABLE);
  ALTER TABLE "TITLE_CHARACTER" MODIFY ("CHARACTER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TITLE_RATING
--------------------------------------------------------

  ALTER TABLE "TITLE_RATING" MODIFY ("TITLE_ID" NOT NULL ENABLE);
  ALTER TABLE "TITLE_RATING" MODIFY ("RATING_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table DIRECTOR
--------------------------------------------------------

  ALTER TABLE "DIRECTOR" ADD CONSTRAINT "DIRECTOR_FK1" FOREIGN KEY ("PERSON_ID")
	  REFERENCES "PERSON" ("PERSON_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PERSON_PROFESSION
--------------------------------------------------------

  ALTER TABLE "PERSON_PROFESSION" ADD CONSTRAINT "PEOPLE_PROFESSION_PERSON_FK" FOREIGN KEY ("PERSON_ID")
	  REFERENCES "PERSON" ("PERSON_ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "PERSON_PROFESSION" ADD CONSTRAINT "PEOPLE_PROFESSION_PROFESSION_FK" FOREIGN KEY ("PROFESSION_ID")
	  REFERENCES "PROFESSION" ("PROFESSION_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PERSON_TITLE
--------------------------------------------------------

  ALTER TABLE "PERSON_TITLE" ADD CONSTRAINT "PERSON_TITLE_FK1" FOREIGN KEY ("PERSON_ID")
	  REFERENCES "PERSON" ("PERSON_ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "PERSON_TITLE" ADD CONSTRAINT "PERSON_TITLE_FK2" FOREIGN KEY ("TITLE_ID")
	  REFERENCES "TITLE" ("TITLE_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PRINCIPAL
--------------------------------------------------------

  ALTER TABLE "PRINCIPAL" ADD CONSTRAINT "PRINCIPAL_PERSON_FK" FOREIGN KEY ("PERSON_ID")
	  REFERENCES "PERSON" ("PERSON_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RATING_VOTES
--------------------------------------------------------

  ALTER TABLE "RATING_VOTES" ADD CONSTRAINT "RATING_PK_FK1" FOREIGN KEY ("RATING_ID")
	  REFERENCES "RATING" ("RATING_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TITLE_CHARACTER
--------------------------------------------------------

  ALTER TABLE "TITLE_CHARACTER" ADD CONSTRAINT "TITLE_CHARACTER_FK1" FOREIGN KEY ("CHARACTER_ID")
	  REFERENCES "CHARACTER" ("CHARACTER_ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "TITLE_CHARACTER" ADD CONSTRAINT "TITLE_CHARACTER_FK2" FOREIGN KEY ("TITLE_ID")
	  REFERENCES "TITLE" ("TITLE_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TITLE_DIRECTOR
--------------------------------------------------------

  ALTER TABLE "TITLE_DIRECTOR" ADD CONSTRAINT "TITLE_DIRECTOR_FK1" FOREIGN KEY ("TITLE_ID")
	  REFERENCES "TITLE" ("TITLE_ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "TITLE_DIRECTOR" ADD CONSTRAINT "TITLE_DIRECTOR_FK2" FOREIGN KEY ("DIRECTOR_ID")
	  REFERENCES "DIRECTOR" ("DIRECTOR_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TITLE_GENRE
--------------------------------------------------------

  ALTER TABLE "TITLE_GENRE" ADD CONSTRAINT "TITLE_GENRE_FK1" FOREIGN KEY ("GENRE_ID")
	  REFERENCES "GENRE" ("GENRE_ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "TITLE_GENRE" ADD CONSTRAINT "TITLE_GENRE_FK2" FOREIGN KEY ("TITLE_ID")
	  REFERENCES "TITLE" ("TITLE_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TITLE_JOB_CATEGORY
--------------------------------------------------------

  ALTER TABLE "TITLE_JOB_CATEGORY" ADD CONSTRAINT "TITLE_JOB_CATEGORY_FK1" FOREIGN KEY ("JOB_CATEGORY_ID")
	  REFERENCES "JOB_CATEGORY" ("JOB_CATEGORY_ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "TITLE_JOB_CATEGORY" ADD CONSTRAINT "TITLE_JOB_CATEGORY_FK2" FOREIGN KEY ("TITLE_ID")
	  REFERENCES "TITLE" ("TITLE_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TITLE_PRINCIPAL
--------------------------------------------------------

  ALTER TABLE "TITLE_PRINCIPAL" ADD CONSTRAINT "TITLE_PRINCIPAL_FK1" FOREIGN KEY ("TITLE_ID")
	  REFERENCES "TITLE" ("TITLE_ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "TITLE_PRINCIPAL" ADD CONSTRAINT "TITLE_PRINCIPAL_FK2" FOREIGN KEY ("PRINCIPAL_ID")
	  REFERENCES "PRINCIPAL" ("PRINCIPAL_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TITLE_RATING
--------------------------------------------------------

  ALTER TABLE "TITLE_RATING" ADD CONSTRAINT "TITLE_TITLE_FK1" FOREIGN KEY ("TITLE_ID")
	  REFERENCES "TITLE" ("TITLE_ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "TITLE_RATING" ADD CONSTRAINT "TITLE_RATING_FK1" FOREIGN KEY ("RATING_ID")
	  REFERENCES "RATING" ("RATING_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TITLE_WRITER
--------------------------------------------------------

  ALTER TABLE "TITLE_WRITER" ADD CONSTRAINT "TITLE_WRITER_TITLE_FK1" FOREIGN KEY ("TITLE_ID")
	  REFERENCES "TITLE" ("TITLE_ID") ENABLE;
  ALTER TABLE "TITLE_WRITER" ADD CONSTRAINT "TITLE_WRITER_WRTIER_FK1" FOREIGN KEY ("WRITER_ID")
	  REFERENCES "WRITER" ("WRITER_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table WRITER
--------------------------------------------------------

  ALTER TABLE "WRITER" ADD CONSTRAINT "WRITER_FK1" FOREIGN KEY ("PERSON_ID")
	  REFERENCES "PERSON" ("PERSON_ID") ON DELETE CASCADE ENABLE;
