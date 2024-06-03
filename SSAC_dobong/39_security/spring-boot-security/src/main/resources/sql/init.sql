create database spring2 default character set utf8mb4 default collate utf8mb4_general_ci;
use spring2;

CREATE USER 'root'@'%' IDENTIFIED BY 'ctywo9631!';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;
select host, user, plugin, authentication_string from mysql.user;
ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'ctywo9631!';

create table user (
	id bigint primary key not null auto_increment,
	username varchar(20) not null,
    email varchar(100) not null,
    password varchar(255) not null
);