WHENEVER SQLERROR EXIT SQL.SQLCODE;

ALTER SESSION SET CONTAINER = FREEPDB1;

CREATE TABLESPACE typeormspace32
    DATAFILE 'typeormspace32.dbf'
    SIZE 100M
    AUTOEXTEND ON;

-- create users:
CREATE USER typeorm
    IDENTIFIED BY "oracle"
    DEFAULT TABLESPACE typeormspace32
    QUOTA UNLIMITED ON typeormspace32;

GRANT DB_DEVELOPER_ROLE TO typeorm;
