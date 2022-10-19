use mysql;
update user set host='%' where user='root';
flush privileges;
SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
