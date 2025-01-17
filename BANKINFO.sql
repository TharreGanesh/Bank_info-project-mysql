create database BMS_DB1;
show databases;
use BMS_DB1;
--CUSTOMER_PERSONAL_INFO
CREATE TABLE CUSTOMER_PERSONAL_INFO
(
CUSTOMER_ID VARCHAR(5),
CUSTOMER_NAME VARCHAR(30),
DATE_OF_BIRTH DATE,
GUARDIAN_NAME VARCHAR(30),
ADDRESS VARCHAR(50),
CONTACT_NO BIGINT(10),
MAIL_ID VARCHAR(30),
GENDER CHAR(1),
MARTIAL_STATUS VARCHAR(10),
IDENTIFICATION_DOC_TYPE VARCHAR(20),
ID_DOC_NO VARCHAR(20),
CITIZENSHIP VARCHAR(10),
CONSTRAINT CUST_PERS_INFO_PK PRIMARY KEY(CUSTOMER_ID));

show tables;

--CUSTOMER_REFERENCE_INFO
CREATE TABLE CUSTOMER_REFERENCE_INFO
(
CUSTOMER_ID VARCHAR(5),
REFERENCE_ACC_NAME VARCHAR(20),
REFERENCE_ACC_NO BIGINT(16),
REFERENCE_ACC_ADDRESS VARCHAR(50),
RELATION VARCHAR(25),
CONSTRAINT CUST_REF_INFO_FK FOREIGN KEY(CUSTOMER_ID)REFERENCES CUSTOMER_PERSONAL_INFO(CUSTOMER_ID)
);

show tables;
CREATE TABLE BANK_INFO
(
IFSC_CODE VARCHAR(15),
BANK_NAME VARCHAR(25),
BRANCH_NAME VARCHAR(25),
CONSTRAINT BANK_INFO_PK PRIMARY KEY(IFSC_CODE) 
);
show tables;
--ACCOUNT_INFO
CREATE TABLE ACCOUNT_INFO
(
ACCOUNT_NO BIGINT(16),
CUSTOMER_ID VARCHAR(5),
ACCOUNT_TYPE VARCHAR(10),
REGISTRATION_DATE DATE,
ACTIVATION_DATE DATE,
IFSC_CODE VARCHAR(10),
INTREST DECIMAL(7,2),
INITIAL_DEPOSIT BIGINT(10),
CONSTRAINT ACC_INFO_PK PRIMARY KEY(ACCOUNT_NO),
CONSTRAINT ACC_INFO_PERS_FK FOREIGN KEY(CUSTOMER_ID)REFERENCES CUSTOMER_REFERENCE_INFO(CUSTOMER_ID),
CONSTRAINT ACC_INFO_BANK_FK FOREIGN KEY(IFSC_CODE)REFERENCES BANK_INFO(IFSC_CODE)
);
show tables;

-- BANK INFO
INSERT INTO BANK_INFO(IFSC_CODE,BANK_NAME,BRANCH_NAME)VALUES('HDUL00R','HDFC','VISHAKAPATNAM');
INSERT INTO BANK_INFO(IFSC_CODE,BANK_NAME,BRANCH_NAME)VALUES('SBITNO123','SBI','VEMULAWADA');
INSERT INTO BANK_INFO(IFSC_CODE,BANK_NAME,BRANCH_NAME)VALUES('ICTN0232','ICICI','KARIMNAGAR');
INSERT INTO BANK_INFO(IFSC_CODE,BANK_NAME,BRANCH_NAME)VALUES('UBTNO453','UBI','WARANGAL');
INSERT INTO BANK_INFO(IFSC_CODE,BANK_NAME,BRANCH_NAME)VALUES('GYTN0767','GYB','HYDERABAD');
SELECT * FROM BANK_INFO;

--CUSTOMER PERSONAL_INFO
INSERT INTO CUSTOMER_PERSONAL_INFO(CUSTOMER_ID,CUSTOMER_NAME,DATE_OF_BIRTH,GUARDIAN_NAME,ADDRESS,CONTACT_NO,MAIL_ID,GENDER,MARTIAL_STATUS,IDENTIFICATION_DOC_TYPE,ID_DOC_NO,CITIZENSHIP)
VALUES('C-002','NAMI','2000-10-20','RAMU','2-56/2,SIRPUR','8768783401','NAMI13@GMAIL.COM','M','SINGLE','PANCARD','CVR128','INDIAN');
INSERT INTO CUSTOMER_PERSONAL_INFO(CUSTOMER_ID,CUSTOMER_NAME,DATE_OF_BIRTH,GUARDIAN_NAME,ADDRESS,CONTACT_NO,MAIL_ID,GENDER,MARTIAL_STATUS,IDENTIFICATION_DOC_TYPE,ID_DOC_NO,CITIZENSHIP)
VALUES('C-003','SAM','2001-10-23','RAJSHEKAR','3-56/7,SAINAGAR','8768783412','SAM3@GMAIL.COM','M','SINGLE','AADHARCARD','ADA123','INDIAN');
INSERT INTO CUSTOMER_PERSONAL_INFO(CUSTOMER_ID,CUSTOMER_NAME,DATE_OF_BIRTH,GUARDIAN_NAME,ADDRESS,CONTACT_NO,MAIL_ID,GENDER,MARTIAL_STATUS,IDENTIFICATION_DOC_TYPE,ID_DOC_NO,CITIZENSHIP)
VALUES('C-004','TINKU','2002-10-23','RAM','9-56/2,RAMNAGAR','8768783423','TINKU78@GMAIL.COM','M','SINGLE','PANCARD','CVR908','INDIAN');
INSERT INTO CUSTOMER_PERSONAL_INFO(CUSTOMER_ID,CUSTOMER_NAME,DATE_OF_BIRTH,GUARDIAN_NAME,ADDRESS,CONTACT_NO,MAIL_ID,GENDER,MARTIAL_STATUS,IDENTIFICATION_DOC_TYPE,ID_DOC_NO,CITIZENSHIP)
VALUES('C-005','VANI','2002-10-23','SUMESH','09-56/2,SIVANAGAR','8768783445','VANI3@GMAIL.COM','F','MARRIED','PANCARD','CVR002','INDIAN');



show tables;