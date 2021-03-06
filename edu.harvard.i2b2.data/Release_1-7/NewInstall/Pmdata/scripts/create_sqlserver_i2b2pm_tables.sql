
CREATE TABLE PM_CELL_DATA ( 
	CELL_ID     	VARCHAR(50) NOT NULL,
	PROJECT_PATH	VARCHAR(255) NOT NULL,
	NAME        	VARCHAR(255) NULL,
	METHOD_CD      	VARCHAR(255) NULL,
	URL         	VARCHAR(255) NULL,
	CAN_OVERRIDE	INT NULL,
    CHANGE_DATE     DATETIME ,
    ENTRY_DATE      DATETIME ,
	CHANGEBY_CHAR   VARCHAR(50),
    STATUS_CD       VARCHAR(50)
	);
CREATE TABLE PM_CELL_PARAMS ( 
    ID                INT IDENTITY(1,1) PRIMARY KEY,
    DATATYPE_CD      VARCHAR(50) NULL,
    CELL_ID         VARCHAR(50) NOT NULL,
    PROJECT_PATH    VARCHAR(255) NOT NULL,
    PARAM_NAME_CD      VARCHAR(50) NOT NULL,
    VALUE           VARCHAR(MAX) NULL,
    CAN_OVERRIDE    INT NULL,
    CHANGE_DATE     DATETIME ,
    ENTRY_DATE      DATETIME ,
    CHANGEBY_CHAR   VARCHAR(50),
    STATUS_CD       VARCHAR(50)
    );
CREATE TABLE PM_GLOBAL_PARAMS ( 
    ID                INT IDENTITY(1,1) PRIMARY KEY,
    DATATYPE_CD      VARCHAR(50) NULL,
    PARAM_NAME_CD      VARCHAR(50) NOT NULL,
    PROJECT_PATH    VARCHAR(255) NOT NULL,
    VALUE           VARCHAR(MAX) NULL,
    CAN_OVERRIDE    INT NULL,
    CHANGE_DATE     DATETIME ,
    ENTRY_DATE      DATETIME ,
    CHANGEBY_CHAR   VARCHAR(50),
    STATUS_CD       VARCHAR(50)
    );
	
CREATE TABLE PM_HIVE_DATA ( 
	DOMAIN_ID  	VARCHAR(50) NOT NULL,
	HELPURL    	VARCHAR(255) NULL,
	DOMAIN_NAME	VARCHAR(255) NULL,
	ENVIRONMENT_CD	VARCHAR(255) NULL,
	ACTIVE     	INT NULL ,
    CHANGE_DATE     DATETIME ,
    ENTRY_DATE      DATETIME ,
	CHANGEBY_CHAR   VARCHAR(50),
    STATUS_CD       VARCHAR(50)
	);
CREATE TABLE PM_HIVE_PARAMS ( 
    ID                INT IDENTITY(1,1) PRIMARY KEY,
    DATATYPE_CD      VARCHAR(50) NULL,
    DOMAIN_ID         VARCHAR(50) NOT NULL,
    PARAM_NAME_CD    VARCHAR(50) NOT NULL,
    VALUE           VARCHAR(MAX) NULL,
    CHANGE_DATE     DATETIME ,
    ENTRY_DATE      DATETIME ,
    CHANGEBY_CHAR   VARCHAR(50),
    STATUS_CD       VARCHAR(50)
    );

CREATE TABLE PM_PROJECT_DATA ( 
	PROJECT_ID  	VARCHAR(50) NOT NULL,
	PROJECT_NAME	VARCHAR(255) NULL,
	PROJECT_WIKI	VARCHAR(255) NULL,
	PROJECT_KEY 	VARCHAR(255) NULL,
	PROJECT_PATH	VARCHAR(255) NULL,
	PROJECT_DESCRIPTION	VARCHAR(2000) NULL,
    CHANGE_DATE     DATETIME ,
    ENTRY_DATE     DATETIME ,
	CHANGEBY_CHAR   VARCHAR(50),
    STATUS_CD       VARCHAR(50)
	);
CREATE TABLE PM_PROJECT_PARAMS ( 
    ID                INT IDENTITY(1,1) PRIMARY KEY,
    DATATYPE_CD      VARCHAR(50) NULL,
    PROJECT_ID        VARCHAR(50) NOT NULL,
    PARAM_NAME_CD    VARCHAR(50) NOT NULL,
    VALUE           VARCHAR(MAX) NULL,
    CHANGE_DATE     DATETIME ,
    ENTRY_DATE      DATETIME ,
    CHANGEBY_CHAR   VARCHAR(50),
    STATUS_CD       VARCHAR(50)
    );

CREATE TABLE PM_PROJECT_USER_PARAMS ( 
    ID                INT IDENTITY(1,1) PRIMARY KEY,
    DATATYPE_CD      VARCHAR(50) NULL,
    PROJECT_ID    VARCHAR(50) NOT NULL,
    USER_ID       VARCHAR(50) NOT NULL,
    PARAM_NAME_CD    VARCHAR(50) NOT NULL,
    VALUE           VARCHAR(MAX) NULL,
    CHANGE_DATE     DATETIME ,
    ENTRY_DATE      DATETIME ,
    CHANGEBY_CHAR   VARCHAR(50),
    STATUS_CD       VARCHAR(50)
    );
CREATE TABLE PM_PROJECT_USER_ROLES ( 
	PROJECT_ID	VARCHAR(50) NOT NULL,
	USER_ID   	VARCHAR(50) NOT NULL,
	USER_ROLE_CD 	VARCHAR(255) NOT NULL,
    CHANGE_DATE     DATETIME ,
    ENTRY_DATE      DATETIME ,
	CHANGEBY_CHAR   VARCHAR(50),
    STATUS_CD       VARCHAR(50)
	);
CREATE TABLE PM_USER_DATA ( 
	USER_ID  	VARCHAR(50) NOT NULL,
	FULL_NAME	VARCHAR(255) NULL,
	PASSWORD 	VARCHAR(255) NULL,
	EMAIL	 	VARCHAR(255) NULL,
	PROJECT_PATH 	VARCHAR(255) NULL,
    CHANGE_DATE     DATETIME ,
    ENTRY_DATE      DATETIME ,
	CHANGEBY_CHAR   VARCHAR(50),
    STATUS_CD       VARCHAR(50)
	);
CREATE TABLE PM_USER_PARAMS ( 
    ID                INT IDENTITY(1,1) PRIMARY KEY,
    DATATYPE_CD      VARCHAR(50) NULL,
    USER_ID       VARCHAR(50) NOT NULL,
    PARAM_NAME_CD    VARCHAR(50) NOT NULL,
    VALUE           VARCHAR(MAX) NULL,
    CHANGE_DATE     DATETIME ,
    ENTRY_DATE      DATETIME ,
    CHANGEBY_CHAR   VARCHAR(50),
    STATUS_CD       VARCHAR(50)
    );
CREATE TABLE PM_ROLE_REQUIREMENT ( 
	TABLE_CD   	VARCHAR(50) NOT NULL,
	COLUMN_CD	VARCHAR(50) NOT NULL,
	READ_HIVEMGMT_CD     	VARCHAR(50) NOT NULL,
	WRITE_HIVEMGMT_CD     	VARCHAR(50) NOT NULL,
	NAME_CHAR     	VARCHAR(2000),
    CHANGE_DATE     DATETIME ,
    ENTRY_DATE     DATETIME ,
	CHANGEBY_CHAR   VARCHAR(50),
    STATUS_CD       VARCHAR(50)
	);	
CREATE TABLE PM_USER_SESSION ( 
	USER_ID 	VARCHAR(50) NOT NULL,
	SESSION_ID	VARCHAR(50) NOT NULL,
    EXPIRED_DATE         DATETIME ,
    CHANGE_DATE     DATETIME ,
    ENTRY_DATE      DATETIME ,
	CHANGEBY_CHAR   VARCHAR(50),
    STATUS_CD       VARCHAR(50)   
    );
CREATE TABLE PM_USER_LOGIN ( 
	USER_ID 	VARCHAR(50) NOT NULL,
	ATTEMPT_CD		VARCHAR(50) NOT NULL,
    ENTRY_DATE      DATETIME2 NOT NULL,
	CHANGEBY_CHAR   VARCHAR(50),
    STATUS_CD       VARCHAR(50)   
    );        
CREATE TABLE PM_APPROVALS ( 
	APPROVAL_ID     	VARCHAR(50) NOT NULL,
	APPROVAL_NAME	VARCHAR(255)  NULL,
	APPROVAL_DESCRIPTION        	VARCHAR(2000) NULL,
	APPROVAL_ACTIVATION_DATE      	DATETIME NULL,
	APPROVAL_EXPIRATION_DATE         	DATETIME NULL,
	OBJECT_CD		VARCHAR(50),
    CHANGE_DATE     DATETIME ,
    ENTRY_DATE      DATETIME ,
	CHANGEBY_CHAR   VARCHAR(50),
    STATUS_CD       VARCHAR(50)
	);
CREATE TABLE PM_APPROVALS_PARAMS ( 
    ID                INT IDENTITY(1,1) PRIMARY KEY,
	APPROVAL_ID     	VARCHAR(50) NOT NULL,
	PARAM_NAME_CD  	VARCHAR(50) NOT NULL,
	VALUE       	VARCHAR(MAX) NULL,
	ACTIVATION_DATE      	DATETIME NULL,
	EXPIRATION_DATE         	DATETIME NULL,
	DATATYPE_CD  	VARCHAR(50) NULL,
	OBJECT_CD		VARCHAR(50),
    CHANGE_DATE     DATETIME ,
    ENTRY_DATE      DATETIME ,
	CHANGEBY_CHAR   VARCHAR(50),
    STATUS_CD       VARCHAR(50)
	);
CREATE TABLE PM_PROJECT_REQUEST  ( 
    ID                INT IDENTITY(1,1) PRIMARY KEY,
	TITLE			VARCHAR(255) NULL,
	REQUEST_XML  	VARCHAR(MAX) NOT NULL,
	CHANGE_DATE  	DATETIME NULL,
	ENTRY_DATE   	DATETIME NULL,
	CHANGEBY_CHAR	VARCHAR(50) NULL,
	STATUS_CD    	VARCHAR(50) NULL,
	PROJECT_ID   	VARCHAR(50) NULL,
	SUBMIT_CHAR  	VARCHAR(50) NULL
);    
ALTER TABLE PM_USER_SESSION
	ADD  PRIMARY KEY (SESSION_ID, USER_ID);
CREATE INDEX PM_USER_LOGIN_IDX ON PM_USER_LOGIN(USER_ID, ENTRY_DATE);	
ALTER TABLE PM_CELL_DATA
	ADD  PRIMARY KEY (CELL_ID, PROJECT_PATH);
ALTER TABLE PM_HIVE_DATA
	ADD  PRIMARY KEY (DOMAIN_ID);
ALTER TABLE PM_PROJECT_DATA
	ADD  PRIMARY KEY (PROJECT_ID);
ALTER TABLE PM_PROJECT_USER_ROLES
	ADD  PRIMARY KEY (PROJECT_ID, USER_ID, USER_ROLE_CD);
ALTER TABLE PM_ROLE_REQUIREMENT
	ADD  PRIMARY KEY (TABLE_CD, COLUMN_CD, READ_HIVEMGMT_CD, WRITE_HIVEMGMT_CD);
ALTER TABLE PM_USER_DATA
	ADD  PRIMARY KEY (USER_ID);
INSERT INTO PM_USER_DATA (USER_ID, FULL_NAME, PASSWORD, STATUS_CD)
VALUES('i2b2', 'i2b2 Admin', '9117d59a69dc49807671a51f10ab7f', 'A');
INSERT INTO PM_USER_DATA (USER_ID, FULL_NAME, PASSWORD, STATUS_CD)
VALUES('AGG_SERVICE_ACCOUNT', 'AGG_SERVICE_ACCOUNT', '9117d59a69dc49807671a51f10ab7f', 'A');
INSERT INTO PM_HIVE_DATA (DOMAIN_ID, HELPURL, DOMAIN_NAME, ENVIRONMENT_CD, ACTIVE, STATUS_CD)
VALUES('i2b2', 'http://www.i2b2.org', 'i2b2demo', 'DEVELOPMENT', 1, 'A');
INSERT INTO PM_PROJECT_USER_ROLES (PROJECT_ID, USER_ID, USER_ROLE_CD, STATUS_CD)
VALUES('@', 'i2b2', 'ADMIN', 'A');
INSERT INTO PM_ROLE_REQUIREMENT(TABLE_CD, COLUMN_CD, READ_HIVEMGMT_CD, WRITE_HIVEMGMT_CD, NAME_CHAR, CHANGE_DATE, ENTRY_DATE, CHANGEBY_CHAR, STATUS_CD)
  VALUES('PM_HIVE_DATA', '@', '@', 'ADMIN', NULL, NULL, NULL, NULL, 'A');
INSERT INTO PM_ROLE_REQUIREMENT(TABLE_CD, COLUMN_CD, READ_HIVEMGMT_CD, WRITE_HIVEMGMT_CD, NAME_CHAR, CHANGE_DATE, ENTRY_DATE, CHANGEBY_CHAR, STATUS_CD)
  VALUES('PM_HIVE_PARAMS', '@', '@', 'ADMIN', NULL, NULL, NULL, NULL, 'A');
INSERT INTO PM_ROLE_REQUIREMENT(TABLE_CD, COLUMN_CD, READ_HIVEMGMT_CD, WRITE_HIVEMGMT_CD, NAME_CHAR, CHANGE_DATE, ENTRY_DATE, CHANGEBY_CHAR, STATUS_CD)
  VALUES('PM_PROJECT_DATA', '@', '@', 'MANAGER', NULL, NULL, NULL, NULL, 'A');
INSERT INTO PM_ROLE_REQUIREMENT(TABLE_CD, COLUMN_CD, READ_HIVEMGMT_CD, WRITE_HIVEMGMT_CD, NAME_CHAR, CHANGE_DATE, ENTRY_DATE, CHANGEBY_CHAR, STATUS_CD)
  VALUES('PM_PROJECT_USER_ROLES', '@', '@', 'MANAGER', NULL, NULL, NULL, NULL, 'A');
INSERT INTO PM_ROLE_REQUIREMENT(TABLE_CD, COLUMN_CD, READ_HIVEMGMT_CD, WRITE_HIVEMGMT_CD, NAME_CHAR, CHANGE_DATE, ENTRY_DATE, CHANGEBY_CHAR, STATUS_CD)
  VALUES('PM_USER_DATA', '@', '@', 'ADMIN', NULL, NULL, NULL, NULL, 'A');
INSERT INTO PM_ROLE_REQUIREMENT(TABLE_CD, COLUMN_CD, READ_HIVEMGMT_CD, WRITE_HIVEMGMT_CD, NAME_CHAR, CHANGE_DATE, ENTRY_DATE, CHANGEBY_CHAR, STATUS_CD)
  VALUES('PM_PROJECT_PARAMS', '@', '@', 'MANAGER', NULL, NULL, NULL, NULL, 'A');
INSERT INTO PM_ROLE_REQUIREMENT(TABLE_CD, COLUMN_CD, READ_HIVEMGMT_CD, WRITE_HIVEMGMT_CD, NAME_CHAR, CHANGE_DATE, ENTRY_DATE, CHANGEBY_CHAR, STATUS_CD)
  VALUES('PM_PROJECT_USER_PARAMS', '@', '@', 'MANAGER', NULL, NULL, NULL, NULL, 'A');
INSERT INTO PM_ROLE_REQUIREMENT(TABLE_CD, COLUMN_CD, READ_HIVEMGMT_CD, WRITE_HIVEMGMT_CD, NAME_CHAR, CHANGE_DATE, ENTRY_DATE, CHANGEBY_CHAR, STATUS_CD)
  VALUES('PM_USER_PARAMS', '@', '@', 'ADMIN', NULL, NULL, NULL, NULL, 'A');
INSERT INTO PM_ROLE_REQUIREMENT(TABLE_CD, COLUMN_CD, READ_HIVEMGMT_CD, WRITE_HIVEMGMT_CD, NAME_CHAR, CHANGE_DATE, ENTRY_DATE, CHANGEBY_CHAR, STATUS_CD)
  VALUES('PM_CELL_DATA', '@', '@', 'MANAGER', NULL, NULL, NULL, NULL, 'A');
INSERT INTO PM_ROLE_REQUIREMENT(TABLE_CD, COLUMN_CD, READ_HIVEMGMT_CD, WRITE_HIVEMGMT_CD, NAME_CHAR, CHANGE_DATE, ENTRY_DATE, CHANGEBY_CHAR, STATUS_CD)
  VALUES('PM_CELL_PARAMS', '@', '@', 'MANAGER', NULL, NULL, NULL, NULL, 'A');
INSERT INTO PM_ROLE_REQUIREMENT(TABLE_CD, COLUMN_CD, READ_HIVEMGMT_CD, WRITE_HIVEMGMT_CD, NAME_CHAR, CHANGE_DATE, ENTRY_DATE, CHANGEBY_CHAR, STATUS_CD)
  VALUES('PM_GLOBAL_PARAMS', '@', '@', 'ADMIN', NULL, NULL, NULL, NULL, 'A');	
	