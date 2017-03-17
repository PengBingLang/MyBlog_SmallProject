create database myblog;

use myblog;


#用户表
create table user(
UserID int primary key auto_increment,
UserName varchar(20),
UserPWD varchar(20),
RegisterTime date
);
select * from user;

insert into user values(1,'秉浪','123','20170101');
insert into user values(2,'记录·回忆','123','20170101');


#用户个人信息表
create table userInfo(
UserID int primary key,
RealName varchar(20),
Sex enum('男','女'),
Birth date,
Email varchar(50),
Tell varchar(20),
QQNum varchar(20),
Image varchar(255),
SelfIntroduction varchar(5000),
SlefWord varchar(255),
constraint foreign key(UserID) references user(UserID)
);
select * from userInfo;

insert into userInfo values
(1,'张三','男','20000101','110@qq.com','110','520','images/pbl.JPG','我的个人介绍','个人简介'),
(2,'李四','男','20000101','110@qq.com','110','520','images/flower.jpg','初遇时，她的微笑，她往日的深情、承诺和傻劲，两个人共度的美丽时刻，一一印在回忆里，今天的感情已经比不上从前，但是我爱着恋着往日的她，舍不得离开。','个人简介');


#文章表
create table article(
ArticleID int primary key auto_increment,
UserID int,
title varchar(100),
content varchar(10000),
author varchar(20),
type varchar(50),
labal varchar(50),
time date,
image varchar(50),
scan int,
comment varchar(255),
constraint foreign key(UserID) references user(UserID)
);
select * from article;

insert into article values
(1,1,'愿有人陪你一起颠沛流离','有一天晚上我收到朋友的邮件，他问我怎样可以最快地摆脱寂寞，我想了想不知道应该怎么回答他，因为我从来没有摆脱过这个问题，我只能去习惯它，就像习惯身体的一部分。','秉浪','原创','日记','20170102','images/t01.jpg',10,'评论'),
(2,1,'你要去相信，没有到不了的明天','不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心地笑着的时候闪过一丝落寞。','秉浪','原创','日记','20170102','images/t02.jpg',10,'评论'),
(3,1,'美丽的茧','让世界拥有它的脚步，让我保有我的茧。当溃烂已极的心灵再不想做一丝一毫的思索时，就让我静静回到我的茧内，以回忆为睡榻，以悲哀为覆被，这是我唯一的美丽。','秉浪','原创','日记','20170102','images/t03.jpg',10,'评论');


#相册表
create table album(
AlbumID int primary key auto_increment,
UserID int,
name varchar(20),
image varchar(50),
constraint foreign key(UserID) references user(UserID)
);
select * from album;

insert into album values(1,1,'相册名','相册封面图片');


#图片表
create table picture(
PictureID int primary key auto_increment,
image varchar(50),
AlbumID int,
constraint foreign key(AlbumID) references album(AlbumID)
);
select * from picture;

insert into picture values(1,'6',1);


#留言表
create table message(
MessageID int primary key auto_increment,
UserID int,
MessageName varchar(20),
Content varchar(255),
Time datetime,
constraint foreign key(UserID) references user(UserID)
);
select * from message;

insert into message values(1,1,'2','这里是留言正文','20170103');
insert into message values(2,1,'2','喜欢你','20170103');

insert into message(UserID,MessageName,Content,Time) values(1,'2','888','20170103');
insert into message(UserID,MessageName,Content,Time) values(1,'2','777','20170103');
insert into message(UserID,MessageName,Content,Time) values(1,'2','666','20170103');
insert into message(UserID,MessageName,Content,Time) values(1,'2','555','20170103');
insert into message(UserID,MessageName,Content,Time) values(1,'2','444','20170103');
insert into message(UserID,MessageName,Content,Time) values(1,'2','333','20170103');
insert into message(UserID,MessageName,Content,Time) values(1,'2','222','20170103');
insert into message(UserID,MessageName,Content,Time) values(1,'2','111','20170103');


#删除数据库
drop database myblog;
drop TABLE IF EXISTS message;