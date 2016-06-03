  CREATE TABLE "PP_ADDR" 
   (	"ADDRESS" VARCHAR2(1000 BYTE), 
	"ICIJ_ID" VARCHAR2(500 BYTE), 
	"VALID_UNTIL" VARCHAR2(500 BYTE), 
	"COUNTRY_CODES" VARCHAR2(30 BYTE), 
	"COUNTRIES" VARCHAR2(1000 BYTE), 
	"NODE_ID" NUMBER(10,0), 
	"SOURCEID" VARCHAR2(100 BYTE), 
	 CONSTRAINT "PK_PP_ADDR" PRIMARY KEY ("NODE_ID")
   )  ;


  CREATE TABLE "PP_EDGES" 
   (	"NODE_1" NUMBER(10,0), 
	"REL_TYPE" VARCHAR2(500 BYTE), 
	"NODE_2" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
 ;


  CREATE TABLE "PP_ENTITIES" 
   (	"NAME" VARCHAR2(1000 BYTE), 
	"ORIGINAL_NAME" VARCHAR2(1000 BYTE), 
	"FORMER_NAME" VARCHAR2(1000 BYTE), 
	"JURISDICTION" VARCHAR2(100 BYTE), 
	"JURISDICTION_DESCRIPTION" VARCHAR2(1000 BYTE), 
	"COMPANY_TYPE" VARCHAR2(1000 BYTE), 
	"ADDRESS" VARCHAR2(1000 BYTE), 
	"INTERNAL_ID" NUMBER(10,0), 
	"INCORPORATION_DATE" DATE, 
	"INACTIVATION_DATE" DATE, 
	"STRUCK_OFF_DATE" DATE, 
	"DORM_DATE" VARCHAR2(1000 BYTE), 
	"STATUS" VARCHAR2(1000 BYTE), 
	"SERVICE_PROVIDER" VARCHAR2(100 BYTE), 
	"IBCRUC" VARCHAR2(1000 BYTE), 
	"COUNTRY_CODES" VARCHAR2(30 BYTE), 
	"COUNTRIES" VARCHAR2(1000 BYTE), 
	"NOTE" VARCHAR2(1000 BYTE), 
	"VALID_UNTIL" VARCHAR2(100 BYTE), 
	"NODE_ID" NUMBER(10,0), 
	"SOURCEID" VARCHAR2(100 BYTE), 
	 CONSTRAINT "PK_PP_ENT" PRIMARY KEY ("NODE_ID")
   )  ;


  CREATE TABLE "PP_INTERMED" 
   (	"NAME" VARCHAR2(1000 BYTE), 
	"INTERNAL_ID" VARCHAR2(100 BYTE), 
	"ADDRESS" VARCHAR2(1000 BYTE), 
	"VALID_UNTIL" VARCHAR2(128 BYTE), 
	"COUNTRY_CODES" VARCHAR2(100 BYTE), 
	"COUNTRIES" VARCHAR2(1000 BYTE), 
	"STATUS" VARCHAR2(100 BYTE), 
	"NODE_ID" NUMBER(10,0), 
	"SOURCEID" VARCHAR2(100 BYTE), 
	 CONSTRAINT "PK_PP_INT" PRIMARY KEY ("NODE_ID")
   )  ;


  CREATE TABLE "PP_OFFICERS" 
   (	"NAME" VARCHAR2(1000 BYTE), 
	"ICIJ_ID" VARCHAR2(500 BYTE), 
	"VALID_UNTIL" VARCHAR2(128 BYTE), 
	"COUNTRY_CODES" VARCHAR2(500 BYTE), 
	"COUNTRIES" VARCHAR2(500 BYTE), 
	"NODE_ID" NUMBER(10,0), 
	"SOURCEID" VARCHAR2(100 BYTE), 
	 CONSTRAINT "PK_PP_OFC" PRIMARY KEY ("NODE_ID")
   )  ;