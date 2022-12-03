CREATE TABLE PERSON(
    ID BIGINT NOT NULL UNIQUE,
    EMAIL VARCHAR(255),
    GENDER VARCHAR(255),
    LASTNAME VARCHAR(255),
    NAME VARCHAR(255),
    PASSWORD VARCHAR(255),
    TYPE VARCHAR(255)
);
ALTER TABLE PERSON ADD CONSTRAINT CONSTRAINT_8 PRIMARY KEY(ID);

CREATE TABLE POST(
    ID BIGINT NOT NULL,
    CONTENT VARCHAR(4048),
    CREATED_DATE DATE,
    IMAGE_URL VARCHAR(1023),
    LIKES BIGINT,
    NAME VARCHAR(255),
    POST_TYPE BOOLEAN NOT NULL,
    VISIBILITY BOOLEAN,
    PUBLISHER_ID BIGINT
);
ALTER TABLE POST ADD CONSTRAINT CONSTRAINT_2 PRIMARY KEY(ID);
ALTER TABLE POST ADD CONSTRAINT FK63QB7KN9O1ASQYH5F9A2I22RL FOREIGN KEY(PUBLISHER_ID) REFERENCES PERSON(ID);


CREATE TABLE COMMENT(
    ID BIGINT NOT NULL,
    CONTENT VARCHAR(255),
    TIMESTAMP DATE,
    POST_ID BIGINT,
    PUBLISHER_ID BIGINT
);
ALTER TABLE COMMENT ADD CONSTRAINT CONSTRAINT_6 PRIMARY KEY(ID);
ALTER TABLE COMMENT ADD CONSTRAINT FKS1SLVNKUEMJSQ2KJ4H3VHX7I1 FOREIGN KEY(POST_ID) REFERENCES POST(ID) ;
ALTER TABLE COMMENT ADD CONSTRAINT FKKTBOYGEISU7G9O3YNYMQ6VCF5 FOREIGN KEY(PUBLISHER_ID) REFERENCES PERSON(ID) ;

CREATE TABLE JOB(
    ID BIGINT NOT NULL,
    DESCRIPTION VARCHAR(255),
    JOB_TYPE VARCHAR(255),
    NAME VARCHAR(255),
    COMPANY_CONTACT_PERSON_ID BIGINT
);
ALTER TABLE JOB ADD CONSTRAINT CONSTRAINT_1 PRIMARY KEY(ID);
ALTER TABLE JOB ADD CONSTRAINT FKR0HMD2UX8C0NUU5CA9BA08WDQ FOREIGN KEY(COMPANY_CONTACT_PERSON_ID) REFERENCES PERSON(ID);


CREATE TABLE MESSAGE(
    ID BIGINT NOT NULL,
    CONTENT VARCHAR(255),
    CREATED_DATE DATE,
    ADDRESSEE_ID BIGINT,
    RECIPIENT_ID BIGINT
);
ALTER TABLE MESSAGE ADD CONSTRAINT CONSTRAINT_63 PRIMARY KEY(ID);
ALTER TABLE MESSAGE ADD CONSTRAINT FKKXJACBUILANIXYMIQ1KAE6OD2 FOREIGN KEY(RECIPIENT_ID) REFERENCES PERSON(ID);
ALTER TABLE MESSAGE ADD CONSTRAINT FKO4Q61M6NFT4EAFOSC63EI6COX FOREIGN KEY(ADDRESSEE_ID) REFERENCES PERSON(ID);

CREATE TABLE PERSON_POST_LIKES(
    ID BIGINT NOT NULL,
    CREATED_DATE DATE,
    PERSON_ID BIGINT,
    POST_ID BIGINT
);
ALTER TABLE PERSON_POST_LIKES ADD CONSTRAINT CONSTRAINT_10 PRIMARY KEY(ID);
ALTER TABLE PERSON_POST_LIKES ADD CONSTRAINT FKIC5QQKUKNPHYBWRUJEENQRXDS FOREIGN KEY(PERSON_ID) REFERENCES PERSON(ID);
ALTER TABLE PERSON_POST_LIKES ADD CONSTRAINT FK9UNK6KQE3UG1JN0O4YC910WV4 FOREIGN KEY(POST_ID) REFERENCES POST(ID);

CREATE TABLE PERSON_SKILLS(
    PERSON_ID BIGINT NOT NULL,
    SKILLS VARCHAR(255)
);
ALTER TABLE PERSON_SKILLS ADD CONSTRAINT FK6DV5CL64193GVOHGHNGE6IW31 FOREIGN KEY(PERSON_ID) REFERENCES PERSON(ID);