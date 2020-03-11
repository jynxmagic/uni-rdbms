--------------------------------------------------------
--  File created - Wednesday-March-11-2020   
--------------------------------------------------------
DROP SEQUENCE "PERSON_SEQ";
DROP SEQUENCE "TITLE_RATING_SEQ";
DROP SEQUENCE "TITLE_SEQ";
DROP TABLE "CHARACTER";
DROP TABLE "DIRECTOR";
DROP TABLE "GENRE";
DROP TABLE "JOB_CATEGORY";
DROP TABLE "PERSON";
DROP TABLE "PERSON_PROFESSION";
DROP TABLE "PERSON_TITLE";
DROP TABLE "PRINCIPAL";
DROP TABLE "PROFESSION";
DROP TABLE "RATING_VOTES";
DROP TABLE "TITLE";
DROP TABLE "TITLE_CHARACTER";
DROP TABLE "TITLE_DIRECTOR";
DROP TABLE "TITLE_GENRE";
DROP TABLE "TITLE_JOB_CATEGORY";
DROP TABLE "TITLE_PRINCIPAL";
DROP TABLE "TITLE_RATING";
DROP TABLE "TITLE_WRITER";
DROP TABLE "WRITER";
--------------------------------------------------------
--  DDL for Sequence PERSON_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "PERSON_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence TITLE_RATING_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TITLE_RATING_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 4981 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence TITLE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "TITLE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table CHARACTER
--------------------------------------------------------

  CREATE TABLE "CHARACTER" 
   (	"CHARACTER" VARCHAR2(255 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table DIRECTOR
--------------------------------------------------------

  CREATE TABLE "DIRECTOR" 
   (	"DIRECTOR" VARCHAR2(11 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table GENRE
--------------------------------------------------------

  CREATE TABLE "GENRE" 
   (	"GENRE" VARCHAR2(255 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table JOB_CATEGORY
--------------------------------------------------------

  CREATE TABLE "JOB_CATEGORY" 
   (	"JOB_CATEGORY" VARCHAR2(255 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table PERSON
--------------------------------------------------------

  CREATE TABLE "PERSON" 
   (	"PERSON_ID" VARCHAR2(11 BYTE), 
	"NAME" VARCHAR2(50 BYTE), 
	"BIRTH_YEAR" NUMBER(*,0), 
	"DEATH_YEAR" NUMBER(*,0)
   ) ;
--------------------------------------------------------
--  DDL for Table PERSON_PROFESSION
--------------------------------------------------------

  CREATE TABLE "PERSON_PROFESSION" 
   (	"PERSON_ID" VARCHAR2(25 BYTE), 
	"PROFESSION_ID" VARCHAR2(25 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table PERSON_TITLE
--------------------------------------------------------

  CREATE TABLE "PERSON_TITLE" 
   (	"PERSON_ID" VARCHAR2(11 BYTE), 
	"TITLE_ID" VARCHAR2(11 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table PRINCIPAL
--------------------------------------------------------

  CREATE TABLE "PRINCIPAL" 
   (	"PERSON_ID" VARCHAR2(11 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table PROFESSION
--------------------------------------------------------

  CREATE TABLE "PROFESSION" 
   (	"PROFESSION" VARCHAR2(30 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table RATING_VOTES
--------------------------------------------------------

  CREATE TABLE "RATING_VOTES" 
   (	"RATING_ID" VARCHAR2(11 BYTE), 
	"NUMVOTES" NUMBER(*,0)
   ) ;
--------------------------------------------------------
--  DDL for Table TITLE
--------------------------------------------------------

  CREATE TABLE "TITLE" 
   (	"TITLE_ID" VARCHAR2(11 BYTE), 
	"RELEASED" NUMBER(*,0), 
	"RUNTIME" NUMBER(*,0), 
	"TITLE" VARCHAR2(255 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table TITLE_CHARACTER
--------------------------------------------------------

  CREATE TABLE "TITLE_CHARACTER" 
   (	"TITLE_ID" VARCHAR2(11 BYTE), 
	"CHARACTER" VARCHAR2(50 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table TITLE_DIRECTOR
--------------------------------------------------------

  CREATE TABLE "TITLE_DIRECTOR" 
   (	"TITLE_ID" VARCHAR2(11 BYTE), 
	"DIRECTOR_ID" VARCHAR2(11 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table TITLE_GENRE
--------------------------------------------------------

  CREATE TABLE "TITLE_GENRE" 
   (	"TITLE_ID" VARCHAR2(11 BYTE), 
	"GENRE_ID" VARCHAR2(11 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table TITLE_JOB_CATEGORY
--------------------------------------------------------

  CREATE TABLE "TITLE_JOB_CATEGORY" 
   (	"TITLE_ID" VARCHAR2(11 BYTE), 
	"JOB_CATEGORY_ID" VARCHAR2(25 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table TITLE_PRINCIPAL
--------------------------------------------------------

  CREATE TABLE "TITLE_PRINCIPAL" 
   (	"PRINCIPAL_ID" VARCHAR2(11 BYTE), 
	"TITLE_ID" VARCHAR2(11 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table TITLE_RATING
--------------------------------------------------------

  CREATE TABLE "TITLE_RATING" 
   (	"TITLE_ID" VARCHAR2(11 BYTE), 
	"RATING_ID" VARCHAR2(11 BYTE), 
	"AVERAGE_RATING" FLOAT(4)
   ) ;
--------------------------------------------------------
--  DDL for Table TITLE_WRITER
--------------------------------------------------------

  CREATE TABLE "TITLE_WRITER" 
   (	"TITLE_ID" VARCHAR2(11 BYTE), 
	"WRITER_ID" VARCHAR2(11 BYTE)
   ) ;

   COMMENT ON TABLE "TITLE_WRITER"  IS 'When title is deleted, do not delete the person';
--------------------------------------------------------
--  DDL for Table WRITER
--------------------------------------------------------

  CREATE TABLE "WRITER" 
   (	"PERSON_ID" VARCHAR2(11 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Index CHARACTER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CHARACTER_PK" ON "CHARACTER" ("CHARACTER") 
  ;
--------------------------------------------------------
--  DDL for Index DIRECTOR_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DIRECTOR_PK" ON "DIRECTOR" ("DIRECTOR") 
  ;
--------------------------------------------------------
--  DDL for Index GENRE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "GENRE_PK" ON "GENRE" ("GENRE") 
  ;
--------------------------------------------------------
--  DDL for Index JOB_CATEGORY_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "JOB_CATEGORY_PK" ON "JOB_CATEGORY" ("JOB_CATEGORY") 
  ;
--------------------------------------------------------
--  DDL for Index PERSON_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PERSON_PK" ON "PERSON" ("PERSON_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PRINCIPAL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PRINCIPAL_PK" ON "PRINCIPAL" ("PERSON_ID") 
  ;
--------------------------------------------------------
--  DDL for Index PROFESSION_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PROFESSION_PK" ON "PROFESSION" ("PROFESSION") 
  ;
--------------------------------------------------------
--  DDL for Index RATING_VOTES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "RATING_VOTES_PK" ON "RATING_VOTES" ("RATING_ID") 
  ;
--------------------------------------------------------
--  DDL for Index TITLE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TITLE_PK" ON "TITLE" ("TITLE_ID") 
  ;
--------------------------------------------------------
--  DDL for Index TITLE_RATING_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TITLE_RATING_PK" ON "TITLE_RATING" ("RATING_ID") 
  ;
--------------------------------------------------------
--  DDL for Index WRITER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "WRITER_PK" ON "WRITER" ("PERSON_ID") 
  ;
--------------------------------------------------------
--  DDL for Trigger PERSON_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "PERSON_TRG" 
BEFORE INSERT ON PERSON 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.PERSON_ID IS NULL THEN
      SELECT PERSON_SEQ.NEXTVAL INTO :NEW.PERSON_ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "PERSON_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TITLE_RATING_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "TITLE_RATING_TRG" 
BEFORE INSERT ON TITLE_RATING 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.RATING_ID IS NULL THEN
      SELECT TITLE_RATING_SEQ.NEXTVAL INTO :NEW.RATING_ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "TITLE_RATING_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TITLE_TRG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "TITLE_TRG" 
BEFORE INSERT ON TITLE 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.TITLE_ID IS NULL THEN
      SELECT TITLE_SEQ.NEXTVAL INTO :NEW.TITLE_ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "TITLE_TRG" ENABLE;
--------------------------------------------------------
--  Constraints for Table CHARACTER
--------------------------------------------------------

  ALTER TABLE "CHARACTER" ADD CONSTRAINT "CHARACTER_PK" PRIMARY KEY ("CHARACTER")
  USING INDEX  ENABLE;
  ALTER TABLE "CHARACTER" MODIFY ("CHARACTER" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DIRECTOR
--------------------------------------------------------

  ALTER TABLE "DIRECTOR" ADD CONSTRAINT "DIRECTOR_PK" PRIMARY KEY ("DIRECTOR")
  USING INDEX  ENABLE;
  ALTER TABLE "DIRECTOR" MODIFY ("DIRECTOR" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table GENRE
--------------------------------------------------------

  ALTER TABLE "GENRE" ADD CONSTRAINT "GENRE_PK" PRIMARY KEY ("GENRE")
  USING INDEX  ENABLE;
  ALTER TABLE "GENRE" MODIFY ("GENRE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table JOB_CATEGORY
--------------------------------------------------------

  ALTER TABLE "JOB_CATEGORY" ADD CONSTRAINT "JOB_CATEGORY_PK" PRIMARY KEY ("JOB_CATEGORY")
  USING INDEX  ENABLE;
  ALTER TABLE "JOB_CATEGORY" MODIFY ("JOB_CATEGORY" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PERSON
--------------------------------------------------------

  ALTER TABLE "PERSON" MODIFY ("PERSON_ID" NOT NULL ENABLE);
  ALTER TABLE "PERSON" ADD CONSTRAINT "PERSON_PK" PRIMARY KEY ("PERSON_ID")
  USING INDEX  ENABLE;
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
--  Constraints for Table PRINCIPAL
--------------------------------------------------------

  ALTER TABLE "PRINCIPAL" ADD CONSTRAINT "PRINCIPAL_PK" PRIMARY KEY ("PERSON_ID")
  USING INDEX  ENABLE;
  ALTER TABLE "PRINCIPAL" MODIFY ("PERSON_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PROFESSION
--------------------------------------------------------

  ALTER TABLE "PROFESSION" ADD CONSTRAINT "PROFESSION_PK" PRIMARY KEY ("PROFESSION")
  USING INDEX  ENABLE;
  ALTER TABLE "PROFESSION" MODIFY ("PROFESSION" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RATING_VOTES
--------------------------------------------------------

  ALTER TABLE "RATING_VOTES" MODIFY ("RATING_ID" NOT NULL ENABLE);
  ALTER TABLE "RATING_VOTES" MODIFY ("NUMVOTES" NOT NULL ENABLE);
  ALTER TABLE "RATING_VOTES" ADD CONSTRAINT "RATING_VOTES_PK" PRIMARY KEY ("RATING_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table TITLE
--------------------------------------------------------

  ALTER TABLE "TITLE" MODIFY ("TITLE_ID" NOT NULL ENABLE);
  ALTER TABLE "TITLE" ADD CONSTRAINT "TITLE_PK" PRIMARY KEY ("TITLE_ID")
  USING INDEX  ENABLE;
--------------------------------------------------------
--  Constraints for Table TITLE_CHARACTER
--------------------------------------------------------

  ALTER TABLE "TITLE_CHARACTER" MODIFY ("TITLE_ID" NOT NULL ENABLE);
  ALTER TABLE "TITLE_CHARACTER" MODIFY ("CHARACTER" NOT NULL ENABLE);
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
--  Constraints for Table TITLE_JOB_CATEGORY
--------------------------------------------------------

  ALTER TABLE "TITLE_JOB_CATEGORY" MODIFY ("TITLE_ID" NOT NULL ENABLE);
  ALTER TABLE "TITLE_JOB_CATEGORY" MODIFY ("JOB_CATEGORY_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TITLE_PRINCIPAL
--------------------------------------------------------

  ALTER TABLE "TITLE_PRINCIPAL" MODIFY ("TITLE_ID" NOT NULL ENABLE);
  ALTER TABLE "TITLE_PRINCIPAL" MODIFY ("PRINCIPAL_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TITLE_RATING
--------------------------------------------------------

  ALTER TABLE "TITLE_RATING" ADD CONSTRAINT "TITLE_RATING_PK" PRIMARY KEY ("RATING_ID")
  USING INDEX  ENABLE;
  ALTER TABLE "TITLE_RATING" MODIFY ("TITLE_ID" NOT NULL ENABLE);
  ALTER TABLE "TITLE_RATING" MODIFY ("RATING_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TITLE_WRITER
--------------------------------------------------------

  ALTER TABLE "TITLE_WRITER" MODIFY ("TITLE_ID" NOT NULL ENABLE);
  ALTER TABLE "TITLE_WRITER" MODIFY ("WRITER_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table WRITER
--------------------------------------------------------

  ALTER TABLE "WRITER" MODIFY ("PERSON_ID" NOT NULL ENABLE);
  ALTER TABLE "WRITER" ADD CONSTRAINT "WRITER_PK" PRIMARY KEY ("PERSON_ID")
  USING INDEX  ENABLE;
