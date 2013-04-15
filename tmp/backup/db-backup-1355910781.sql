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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

 INSERT INTO 'table_content' VALUES ("1","1","bla","0","0","1","1","1","2012-12-18 18:23:43","0000-00-00 00:00:00");
 INSERT INTO 'table_content' VALUES ("2","1","bla","0","0","2","1","1","2012-12-18 18:23:40","0000-00-00 00:00:00");
 INSERT INTO 'table_content' VALUES ("4","Nieuwe pagina","De content van de nieuwe pagina trolololololol, met de nieuwe API methode, en nieuwe MODEL shizzle voor de crud class enzo, ff lekker uittesten.
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
\ntrololol.","0","0","0","0","1","2012-12-18 18:26:23","2012-12-18 18:27:56");
 INSERT INTO 'table_content' VALUES ("3","1","bla","0","0","0","1","1","2012-12-18 18:22:42","0000-00-00 00:00:00");
 INSERT INTO 'table_content' VALUES ("5","Pagina 2","Dit is pagina 2...","0","0","0","0","1","0000-00-00 00:00:00","0000-00-00 00:00:00");
 INSERT INTO 'table_content' VALUES ("6","Pagina 2.1","trolololololololololooooolooloolollololololololololololololololololol","1","","0","0","1","0000-00-00 00:00:00","0000-00-00 00:00:00");



DROP TABLE .'table_images';

CREATE TABLE `table_images` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `ext` varchar(255) default NULL,
  `image` blob,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;




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
  `permissions` int(8) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

 INSERT INTO 'table_users' VALUES ("12","Ricardo","van laarhoven","ricardo1994@gmail.com","ricardo1994@gmail.com","412f578bce0d4f81a61e12a132fa6eb515bdd774","1994-12-13","2012-12-11 10:03:24","c22a9254ac49eecc1161c5ca15a41b5c45071d23","2");
 INSERT INTO 'table_users' VALUES ("11","ricardo","van laarhoven","lol@lol.lol","lol@lol.lol","f17fd2067f0e7be21d9518559df995c4898c9afd","1994-04-05","2012-12-11 10:00:54","ef8f348de20d7bc99386582984b70e20e94f6d83","2");
 INSERT INTO 'table_users' VALUES ("13","Kevin","Newesil","kevinnewesil@hotmail.nl","kevinnewesil@hotmail.nl","a74b54a8130a2b651deef13b73db021ae7584a56","1993-10-06","2012-12-11 10:08:04","2aa76010e8c2c159e9deaac523e8cb6898161b0b","2");
 INSERT INTO 'table_users' VALUES ("14","kevin","van leeuwen","kevinvleeuwen@live.nl","kevinvleeuwen@live.nl","1e2ad85ea9d1f6e3101dc207a507198ce4200e5c","0000-00-00","2012-12-11 13:00:52","4bf772d8a143d10e2f162d0e0059281128bdd649","2");



