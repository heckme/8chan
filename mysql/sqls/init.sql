CREATE DATABASE 8chan;
use 8chan;

CREATE TABLE posts (
  `id` int(12) unsigned not null auto_increment,
  `text` varchar(140) not null,
  `priority` int(12) not null,
  `name` varchar(140) default null,
  `created_at` datetime not null default current_timestamp,
  `updated_at` datetime not null default current_timestamp on update current_timestamp,
  primary key (id)
);

INSERT INTO posts (text,priority,name) VALUES ("test1",0,"created");
INSERT INTO posts (text,priority,name) VALUES ("テスト1",0,"created");

CREATE TABLE users (
  `id` int(12) unsigned not null auto_increment,
  `email` varchar(45) not null,
  `password`  varchar(45) not null,
  `created_at` datetime not null default current_timestamp,
  `updated_at` datetime not null default current_timestamp on update current_timestamp,
  primary key (id)
);

INSERT INTO users (email,password) VALUES ("test1@example.com","password");
