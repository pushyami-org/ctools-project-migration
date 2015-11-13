-- create database cpm
create database cpm default character set utf8;

grant all on cpm.* to cpmuser@'localhost' identified by 'cpmpassword';

grant all on cpm.* to cpmuser@'127.0.0.1' identified by 'cpmpassword';

flush privileges;

use cpm;

-- create table migration
create table migration (
migration_id VARCHAR(99) NOT NULL,
site_id VARCHAR(99) NOT NULL,
site_name VARCHAR(99) NOT NULL,
tool_id VARCHAR(99) NOT NULL,
tool_name VARCHAR(99) NOT NULL,
migrated_by VARCHAR(99) NOT NULL,
start_time TIMESTAMP NOT NULL,
end_time TIMESTAMP,
destination_type VARCHAR(99) NOT NULL,
destination_url VARCHAR(99),
status CLOB,
PRIMARY KEY (MIGRATION_ID));