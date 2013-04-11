DROP TABLE .'table_content';

CREATE TABLE `table_content` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) default NULL,
  `content` longtext,
  `has_parent` int(8) default NULL,
  `parent_id` int(8) default NULL,
  `menu_order` int(8) default NULL,
  `deprecated` int(8) default NULL,
  `public` int(1) default NULL,
  `created_at` timestamp NOT NULL default '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

 INSERT INTO 'table_content' VALUES ("9","Pagina 4","alsjdhaksjdhkasjdhak sjdhfksu gjsrwzsgdrx,jgf","0","0","4","0","1","2012-12-28 15:55:10","0000-00-00 00:00:00");
 INSERT INTO 'table_content' VALUES ("4","Home","De content van de nieuwe pagina trolololololol, met de nieuwe API methode, en nieuwe MODEL shizzle voor de crud class enzo, ff lekker uittesten.
\n
\nfull test 1.0
\n
\nTest 1.0 succesvol uitgevoerd.
\n
\nfull test 1.0 > update
\n
\ntest 1.0 > update uitgevoerd
\n
\nupdate time.
\n
\ntrololol.","0","0","1","0","1","2012-12-18 18:26:23","2012-12-29 15:23:19");
 INSERT INTO 'table_content' VALUES ("5","Pagina 2","Dit is pagina 2...","0","0","2","0","1","0000-00-00 00:00:00","0000-00-00 00:00:00");
 INSERT INTO 'table_content' VALUES ("6","Pagina 2.1","trolololololololololooooolooloolollololololololololololololololololol","1","5","1","0","1","0000-00-00 00:00:00","0000-00-00 00:00:00");
 INSERT INTO 'table_content' VALUES ("7","Pagina 3","Lorem ipsum","0","0","3","0","1","2012-12-21 08:34:24","2012-12-28 15:55:01");
 INSERT INTO 'table_content' VALUES ("10","Pagina 5","toiksjdhflsjdfl kjlsdkfj lkj lkj lkj lkj 
\n","0","0","5","0","1","2012-12-28 15:55:20","0000-00-00 00:00:00");
 INSERT INTO 'table_content' VALUES ("11","Pagina 6","content","0","0","6","0","1","2012-12-28 15:55:33","0000-00-00 00:00:00");
 INSERT INTO 'table_content' VALUES ("12","pagina 7","asd","0","0","7","0","1","2012-12-28 15:55:38","0000-00-00 00:00:00");
 INSERT INTO 'table_content' VALUES ("13","pagian 2.2","1","1","5","3","0","1","2012-12-29 15:41:33","2012-12-29 15:54:24");
 INSERT INTO 'table_content' VALUES ("14","pagina 2.3","soidfhs dfhs dkfj dksjf ","1","5","2","1","1","2012-12-29 15:41:43","2012-12-29 15:54:32");
 INSERT INTO 'table_content' VALUES ("15","pagina 2.4","asd","1","5","4","1","1","2012-12-29 15:44:29","0000-00-00 00:00:00");
 INSERT INTO 'table_content' VALUES ("16","test","testasd","0","0","8","0","1","2013-01-13 17:43:28","0000-00-00 00:00:00");
 INSERT INTO 'table_content' VALUES ("17","pagina test na Sourjelly","Sourjelly shizzle","0","0","0","1","1","2013-02-07 14:23:28","0000-00-00 00:00:00");
 INSERT INTO 'table_content' VALUES ("18","Pagina maken na kritieke update","dusja.... je zegt het maar dan
\ndebug ronde 2. hoop dat we verder komen dan pagina\'s vandaag..
\nja dus.asdasdasd","0","0","9","0","1","2013-02-07 14:45:27","2013-02-07 14:54:48");



DROP TABLE .'table_images';

CREATE TABLE `table_images` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `ext` varchar(255) default NULL,
  `image` blob,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;




DROP TABLE .'table_modules';

CREATE TABLE `table_modules` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) default NULL,
  `description` longtext,
  `pages` varchar(255) default NULL,
  `active` int(1) NOT NULL default '1',
  `position` varchar(255) NOT NULL,
  `deprecated` int(1) NOT NULL default '0',
  `created_at` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

 INSERT INTO 'table_modules' VALUES ("3","slider","Slideshow","1,4,5","1","top","0","2013-02-07 15:08:58","0000-00-00 00:00:00");



DROP TABLE .'table_users';

CREATE TABLE `table_users` (
  `id` int(11) NOT NULL auto_increment,
  `firstname` varchar(255) default NULL,
  `lastname` varchar(255) default NULL,
  `username` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  `DoB` date default NULL,
  `registered_at` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `active` varchar(126) default NULL,
  `dev` int(1) NOT NULL default '0',
  `premission` int(8) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

 INSERT INTO 'table_users' VALUES ("12","Ricardo","van laarhoven","ricardo1994@gmail.com","ricardo1994@gmail.com","412f578bce0d4f81a61e12a132fa6eb515bdd774","1994-12-13","2012-12-11 10:03:24","1","0","2");
 INSERT INTO 'table_users' VALUES ("11","ricardo","van laarhoven","lol@lol.lol","lol@lol.lol","f17fd2067f0e7be21d9518559df995c4898c9afd","1994-04-05","2012-12-11 10:00:54","1","0","2");
 INSERT INTO 'table_users' VALUES ("13","Kevin","Newesil","kevinnewesil@hotmail.nl","kevinnewesil@hotmail.nl","a74b54a8130a2b651deef13b73db021ae7584a56","1993-10-06","2012-12-11 10:08:04","1","1","3");
 INSERT INTO 'table_users' VALUES ("14","kevin","van leeuwen","kevinvleeuwen@live.nl","kevinvleeuwen@live.nl","1e2ad85ea9d1f6e3101dc207a507198ce4200e5c","0000-00-00","2012-12-11 13:00:52","1","0","2");
 INSERT INTO 'table_users' VALUES ("15","123","123","123","123","b319ee5f80ab31ae0a43c4af79825b6d1fdd76df","0000-00-00","2013-02-10 00:18:33","c83bbb436b0581401a152c46d471b94973877a62","0","2");
 INSERT INTO 'table_users' VALUES ("16","123","123","123","123","12589e2cfb67e675aff53119251b1eca84517dda","0000-00-00","2013-02-10 00:19:08","ce0e68c3f24977e9227dc8ca59101706bb453f0b","0","2");



