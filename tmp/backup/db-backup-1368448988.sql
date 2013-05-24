DROP TABLE .'table_content';

CREATE TABLE `table_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `front` int(8) DEFAULT '1',
  `back` int(8) DEFAULT '0',
  `public` int(8) DEFAULT '1',
  `menuVisibility` int(8) DEFAULT '1',
  `deprecated` int(8) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

 INSERT INTO 'table_content' VALUES ("1","1","0","1","1","0","2013-04-26 11:14:24","2013-04-26 13:14:24");
 INSERT INTO 'table_content' VALUES ("2","1","1","1","1","0","2013-04-26 11:25:54","2013-04-26 13:25:54");
 INSERT INTO 'table_content' VALUES ("3","1","0","1","1","1","2013-04-26 11:33:16","2013-04-26 13:33:16");
 INSERT INTO 'table_content' VALUES ("4","1","0","1","1","1","2013-04-26 11:44:55","2013-04-26 13:44:55");
 INSERT INTO 'table_content' VALUES ("5","1","0","1","1","1","2013-04-26 11:45:41","2013-04-26 13:45:41");
 INSERT INTO 'table_content' VALUES ("6","1","0","1","1","1","2013-04-26 11:45:52","2013-04-26 13:45:52");
 INSERT INTO 'table_content' VALUES ("7","1","0","1","1","1","2013-05-02 07:18:34","2013-05-02 09:18:34");
 INSERT INTO 'table_content' VALUES ("8","1","0","1","1","1","2013-05-02 07:24:04","2013-05-02 09:24:04");
 INSERT INTO 'table_content' VALUES ("9","1","0","1","1","1","2013-05-07 07:32:22","2013-05-07 09:32:22");
 INSERT INTO 'table_content' VALUES ("10","1","0","1","1","1","2013-05-07 07:32:31","2013-05-07 09:32:31");
 INSERT INTO 'table_content' VALUES ("11","1","0","1","1","1","2013-05-07 08:07:45","2013-05-07 10:07:45");
 INSERT INTO 'table_content' VALUES ("12","1","0","1","1","1","2013-05-07 08:09:16","2013-05-07 10:09:16");
 INSERT INTO 'table_content' VALUES ("13","1","0","1","1","1","2013-05-07 08:56:22","2013-05-07 10:56:22");
 INSERT INTO 'table_content' VALUES ("14","1","0","1","1","1","2013-05-07 10:42:04","2013-05-07 12:42:04");
 INSERT INTO 'table_content' VALUES ("15","1","0","1","1","1","2013-05-07 12:15:36","2013-05-07 14:15:36");
 INSERT INTO 'table_content' VALUES ("16","1","0","1","1","1","2013-05-07 12:16:00","2013-05-07 14:16:00");
 INSERT INTO 'table_content' VALUES ("17","1","0","1","1","1","2013-05-08 21:35:50","2013-05-08 23:35:50");
 INSERT INTO 'table_content' VALUES ("18","1","0","1","1","1","2013-05-09 12:00:52","2013-05-09 14:00:52");
 INSERT INTO 'table_content' VALUES ("19","1","0","1","1","1","2013-05-09 12:01:47","2013-05-09 14:01:47");
 INSERT INTO 'table_content' VALUES ("20","1","0","1","1","1","2013-05-09 12:03:12","2013-05-09 14:03:12");
 INSERT INTO 'table_content' VALUES ("21","1","0","1","1","1","2013-05-09 12:08:54","2013-05-09 14:08:54");
 INSERT INTO 'table_content' VALUES ("22","1","0","1","1","1","2013-05-09 12:09:00","2013-05-09 14:09:00");
 INSERT INTO 'table_content' VALUES ("23","1","0","1","1","1","2013-05-09 12:11:49","2013-05-09 14:11:49");
 INSERT INTO 'table_content' VALUES ("24","1","0","1","1","1","2013-05-09 12:15:59","2013-05-09 14:15:59");
 INSERT INTO 'table_content' VALUES ("25","1","0","1","1","1","2013-05-10 09:08:43","2013-05-10 11:08:43");
 INSERT INTO 'table_content' VALUES ("26","1","0","1","1","0","2013-05-10 21:25:52","2013-05-10 23:25:52");
 INSERT INTO 'table_content' VALUES ("27","1","0","1","1","0","2013-05-10 21:25:57","2013-05-10 23:25:57");
 INSERT INTO 'table_content' VALUES ("28","1","0","1","1","0","2013-05-10 21:26:00","2013-05-10 23:26:00");
 INSERT INTO 'table_content' VALUES ("29","1","0","1","1","0","2013-05-10 21:47:49","2013-05-10 23:47:49");
 INSERT INTO 'table_content' VALUES ("30","1","0","1","1","0","2013-05-12 13:26:24","2013-05-12 15:26:25");



DROP TABLE .'table_content_layout';

CREATE TABLE `table_content_layout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cId` int(8) DEFAULT NULL,
  `contentTextAlign` varchar(255) DEFAULT NULL,
  `titleVisibility` int(8) DEFAULT NULL,
  `titleTextAlign` varchar(255) DEFAULT NULL,
  `titleFontSize` int(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

 INSERT INTO 'table_content_layout' VALUES ("1","1","left","1","left","16");
 INSERT INTO 'table_content_layout' VALUES ("2","2","left","1","left","16");
 INSERT INTO 'table_content_layout' VALUES ("3","3","justify","1","center","16");
 INSERT INTO 'table_content_layout' VALUES ("4","4","center","1","right","18");
 INSERT INTO 'table_content_layout' VALUES ("5","5","left","1","left","16");
 INSERT INTO 'table_content_layout' VALUES ("6","6","left","1","left","16");
 INSERT INTO 'table_content_layout' VALUES ("7","7","left","1","left","16");
 INSERT INTO 'table_content_layout' VALUES ("8","8","left","1","left","16");
 INSERT INTO 'table_content_layout' VALUES ("9","0","left","1","left","16");
 INSERT INTO 'table_content_layout' VALUES ("10","0","left","1","left","16");
 INSERT INTO 'table_content_layout' VALUES ("11","0","left","1","left","16");
 INSERT INTO 'table_content_layout' VALUES ("12","9","left","1","left","16");
 INSERT INTO 'table_content_layout' VALUES ("13","10","left","1","left","16");
 INSERT INTO 'table_content_layout' VALUES ("14","11","left","1","left","16");
 INSERT INTO 'table_content_layout' VALUES ("15","12","left","1","left","16");
 INSERT INTO 'table_content_layout' VALUES ("16","13","left","1","left","16");
 INSERT INTO 'table_content_layout' VALUES ("17","14","left","1","left","16");
 INSERT INTO 'table_content_layout' VALUES ("18","15","left","1","left","16");
 INSERT INTO 'table_content_layout' VALUES ("19","16","left","1","left","16");
 INSERT INTO 'table_content_layout' VALUES ("20","17","left","1","left","16");
 INSERT INTO 'table_content_layout' VALUES ("21","18","left","1","left","16");
 INSERT INTO 'table_content_layout' VALUES ("22","19","left","1","left","16");
 INSERT INTO 'table_content_layout' VALUES ("23","20","left","1","left","16");
 INSERT INTO 'table_content_layout' VALUES ("24","21","left","1","left","16");
 INSERT INTO 'table_content_layout' VALUES ("25","22","left","1","left","16");
 INSERT INTO 'table_content_layout' VALUES ("26","23","left","1","left","16");
 INSERT INTO 'table_content_layout' VALUES ("27","24","left","1","left","16");
 INSERT INTO 'table_content_layout' VALUES ("28","25","left","1","left","16");
 INSERT INTO 'table_content_layout' VALUES ("29","26","left","1","left","16");
 INSERT INTO 'table_content_layout' VALUES ("30","27","left","1","left","16");
 INSERT INTO 'table_content_layout' VALUES ("31","28","left","1","left","16");
 INSERT INTO 'table_content_layout' VALUES ("32","29","left","0","left","16");
 INSERT INTO 'table_content_layout' VALUES ("33","30","left","1","left","16");



DROP TABLE .'table_content_properties';

CREATE TABLE `table_content_properties` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cId` int(8) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` longtext,
  `hasParent` int(8) DEFAULT NULL,
  `parentId` int(8) DEFAULT NULL,
  `menuOrder` int(8) DEFAULT NULL,
  `metaTags` varchar(255) DEFAULT NULL,
  `metaDescription` varchar(255) DEFAULT NULL,
  `contentClass` varchar(255) DEFAULT NULL,
  `contentId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

 INSERT INTO 'table_content_properties' VALUES ("1","1","time to create a page","&lt;p&gt;asdasdasdasdasd&lt;/p&gt;","0","0","14","asdasd","asdasd","asdasd","asdasd");
 INSERT INTO 'table_content_properties' VALUES ("2","2","development","&lt;p&gt;asdasd asd&lt;/p&gt;\n","0","0","9","dus asd","dus asd","asd as","asd as ");
 INSERT INTO 'table_content_properties' VALUES ("3","3","alignemnt","&lt;p&gt;asdasdasdasd&lt;/p&gt;\n","0","0","13","","","","3");
 INSERT INTO 'table_content_properties' VALUES ("4","4","llalalalalla","&lt;p&gt;Lalallala pam pam&lt;/p&gt;\n","0","0","15","aasdasd","asdasdasd","asdasd","4");
 INSERT INTO 'table_content_properties' VALUES ("5","5","dev sub","&lt;p&gt;asd&lt;/p&gt;","1","2","11","","","","");
 INSERT INTO 'table_content_properties' VALUES ("6","6","dev sub 2","&lt;p&gt;asd&lt;/p&gt;","1","2","10","","","","6");
 INSERT INTO 'table_content_properties' VALUES ("7","7","sdf","&lt;p&gt;dkfhfgl khlfkctkg fth&lt;/p&gt;","0","0","8","","","","");
 INSERT INTO 'table_content_properties' VALUES ("8","8","Contact form","","0","0","6","","","","");
 INSERT INTO 'table_content_properties' VALUES ("9","0","test","&lt;p&gt;testeest&lt;/p&gt;","0","0","0","","","","");
 INSERT INTO 'table_content_properties' VALUES ("10","0","test","&lt;p&gt;testeest&lt;/p&gt;","0","0","0","","","","");
 INSERT INTO 'table_content_properties' VALUES ("11","0","asd","&lt;p&gt;asd&lt;/p&gt;","0","0","5","","","","");
 INSERT INTO 'table_content_properties' VALUES ("12","9","asd","&lt;p&gt;asd&lt;/p&gt;","0","0","5","","","","");
 INSERT INTO 'table_content_properties' VALUES ("13","10","test mofo","&lt;p&gt;asd&lt;/p&gt;","0","0","4","","","","");
 INSERT INTO 'table_content_properties' VALUES ("14","11","Dus..","&lt;p&gt;asd&lt;/p&gt;","0","0","3","","","","");
 INSERT INTO 'table_content_properties' VALUES ("15","12","Test je moeder zoietS?","&lt;p&gt;en hier de content via de sub sub menu..&lt;/p&gt;","0","0","2","","","","");
 INSERT INTO 'table_content_properties' VALUES ("16","13","asdasd","&lt;p&gt;asdasd&lt;/p&gt;","0","0","7","","","","");
 INSERT INTO 'table_content_properties' VALUES ("17","14","new page","&lt;p&gt;asdasdasdasd&lt;/p&gt;","0","0","1","","","","");
 INSERT INTO 'table_content_properties' VALUES ("18","15","","","0","0","12","","","","");
 INSERT INTO 'table_content_properties' VALUES ("19","16","","","0","0","12","","","","");
 INSERT INTO 'table_content_properties' VALUES ("20","17","test page via right mouse menu","&lt;p&gt;dfghdjfsdkjfs jdg ksdufhk sdf&lt;/p&gt;","0","0","0","","","","");
 INSERT INTO 'table_content_properties' VALUES ("21","18","page title","&lt;p&gt;page content&lt;/p&gt;","0","0","0","","","","");
 INSERT INTO 'table_content_properties' VALUES ("22","19","","","0","0","0","","","","");
 INSERT INTO 'table_content_properties' VALUES ("23","20","","","0","0","0","","","","");
 INSERT INTO 'table_content_properties' VALUES ("24","21","","","0","0","0","","","","");
 INSERT INTO 'table_content_properties' VALUES ("25","22","","","0","0","0","","","","");
 INSERT INTO 'table_content_properties' VALUES ("26","23","","","0","0","0","","","","");
 INSERT INTO 'table_content_properties' VALUES ("27","24","","","0","0","0","","","","");
 INSERT INTO 'table_content_properties' VALUES ("28","25","asdasd","&lt;p&gt;asdasd&lt;/p&gt;","0","0","0","","","","");
 INSERT INTO 'table_content_properties' VALUES ("29","26","About us","","0","0","0","","","","");
 INSERT INTO 'table_content_properties' VALUES ("30","27","strategy","","0","0","0","","","","");
 INSERT INTO 'table_content_properties' VALUES ("31","28","contact","","0","0","0","","","","");
 INSERT INTO 'table_content_properties' VALUES ("32","29","asasas","","0","0","0","","","","");
 INSERT INTO 'table_content_properties' VALUES ("33","30","dfgdfgd","&lt;p&gt;dfgdfg&lt;/p&gt;","0","0","0","","","","");



DROP TABLE .'table_content_roles';

CREATE TABLE `table_content_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cId` int(8) DEFAULT NULL,
  `roleId` int(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

 INSERT INTO 'table_content_roles' VALUES ("1","1","1");
 INSERT INTO 'table_content_roles' VALUES ("2","2","1");
 INSERT INTO 'table_content_roles' VALUES ("3","3","1");
 INSERT INTO 'table_content_roles' VALUES ("4","4","1");
 INSERT INTO 'table_content_roles' VALUES ("5","5","1");
 INSERT INTO 'table_content_roles' VALUES ("6","6","1");
 INSERT INTO 'table_content_roles' VALUES ("7","7","1");
 INSERT INTO 'table_content_roles' VALUES ("8","8","1");
 INSERT INTO 'table_content_roles' VALUES ("9","0","1");
 INSERT INTO 'table_content_roles' VALUES ("10","0","1");
 INSERT INTO 'table_content_roles' VALUES ("11","0","1");
 INSERT INTO 'table_content_roles' VALUES ("12","9","1");
 INSERT INTO 'table_content_roles' VALUES ("13","10","1");
 INSERT INTO 'table_content_roles' VALUES ("14","11","1");
 INSERT INTO 'table_content_roles' VALUES ("15","12","1");
 INSERT INTO 'table_content_roles' VALUES ("16","13","1");
 INSERT INTO 'table_content_roles' VALUES ("17","14","1");
 INSERT INTO 'table_content_roles' VALUES ("18","15","1");
 INSERT INTO 'table_content_roles' VALUES ("19","16","1");
 INSERT INTO 'table_content_roles' VALUES ("20","17","1");
 INSERT INTO 'table_content_roles' VALUES ("21","18","1");
 INSERT INTO 'table_content_roles' VALUES ("22","19","1");
 INSERT INTO 'table_content_roles' VALUES ("23","20","1");
 INSERT INTO 'table_content_roles' VALUES ("24","21","1");
 INSERT INTO 'table_content_roles' VALUES ("25","22","1");
 INSERT INTO 'table_content_roles' VALUES ("26","23","1");
 INSERT INTO 'table_content_roles' VALUES ("27","24","1");
 INSERT INTO 'table_content_roles' VALUES ("28","25","1");
 INSERT INTO 'table_content_roles' VALUES ("29","26","1");
 INSERT INTO 'table_content_roles' VALUES ("30","27","1");
 INSERT INTO 'table_content_roles' VALUES ("31","28","1");
 INSERT INTO 'table_content_roles' VALUES ("32","29","1");
 INSERT INTO 'table_content_roles' VALUES ("33","30","1");



DROP TABLE .'table_google_api';

CREATE TABLE `table_google_api` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uId` int(8) DEFAULT NULL,
  `authToken` varchar(255) DEFAULT NULL,
  `clientId` varchar(255) DEFAULT NULL,
  `clientSecret` varchar(255) DEFAULT NULL,
  `refreshToken` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




DROP TABLE .'table_images';

CREATE TABLE `table_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `image` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




DROP TABLE .'table_ip';

CREATE TABLE `table_ip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `remoteIp` varchar(255) DEFAULT NULL,
  `lastOnline` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blacklist` int(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




DROP TABLE .'table_layout_navigation';

CREATE TABLE `table_layout_navigation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alwaysVisible` int(11) NOT NULL,
  `dynamicNavigation` int(8) DEFAULT NULL,
  `zIndex` int(8) DEFAULT NULL,
  `positionFromHeader` varchar(255) DEFAULT NULL,
  `jsFunction` varchar(255) DEFAULT NULL,
  `toggleAnimationStyle` varchar(255) DEFAULT NULL,
  `toggleTrigger` varchar(255) DEFAULT NULL,
  `toggleTriggerText` varchar(255) NOT NULL,
  `slideInAnimationStyle` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

 INSERT INTO 'table_layout_navigation' VALUES ("1","0","1","0","above","toggle","left","text","Sourjelly","left");



DROP TABLE .'table_modules';

CREATE TABLE `table_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `pages` varchar(255) DEFAULT NULL,
  `active` int(8) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `deprecated` int(8) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

 INSERT INTO 'table_modules' VALUES ("1","contact_form","contact_form","8","1","top","0","2013-05-02 09:29:31","0000-00-00 00:00:00");
 INSERT INTO 'table_modules' VALUES ("2","Sourjelly chat","Chat application for sourjelly","0","0","top","0","2013-05-02 09:25:08","0000-00-00 00:00:00");
 INSERT INTO 'table_modules' VALUES ("3","Developer news","An overview with the newest updates for developers, a stack overflow link and api, and much much more","0","1","top","0","2013-05-02 09:25:10","0000-00-00 00:00:00");



DROP TABLE .'table_roles';

CREATE TABLE `table_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleId` int(8) DEFAULT NULL,
  `permissions` int(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




DROP TABLE .'table_roles_description';

CREATE TABLE `table_roles_description` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




DROP TABLE .'table_settings';

CREATE TABLE `table_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `displayErrors` int(8) DEFAULT NULL,
  `displayStartupErrors` int(8) DEFAULT NULL,
  `logErrors` int(8) DEFAULT NULL,
  `trackErrors` int(8) DEFAULT NULL,
  `htmlErrors` int(8) DEFAULT NULL,
  `maxExecutionTime` int(8) DEFAULT NULL,
  `memoryLimit` int(8) DEFAULT NULL,
  `postMaxSize` int(8) DEFAULT NULL,
  `uploadMaxFilesize` int(8) DEFAULT NULL,
  `maxFileUploads` int(8) DEFAULT NULL,
  `embeddedHtml` int(8) DEFAULT NULL,
  `ipMonitoring` int(8) DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

 INSERT INTO 'table_settings' VALUES ("1","1","0","1","0","0","120","256","18","20","20","0","0","Europe/Amsterdam");
 INSERT INTO 'table_settings' VALUES ("2","1","0","1","0","0","90","256","18","20","20","0","0","Europe/Amsterdam");
 INSERT INTO 'table_settings' VALUES ("3","1","0","1","0","0","90","256","18","20","20","0","0","Europe/Amsterdam");
 INSERT INTO 'table_settings' VALUES ("4","1","0","1","0","0","90","256","18","20","20","0","0","Europe/Amsterdam");
 INSERT INTO 'table_settings' VALUES ("5","1","0","1","0","0","90","256","18","20","20","0","0","Europe/Amsterdam");
 INSERT INTO 'table_settings' VALUES ("6","1","0","1","0","0","90","256","18","20","20","0","0","Europe/Amsterdam");



DROP TABLE .'table_themes';

CREATE TABLE `table_themes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `themeName` varchar(255) DEFAULT NULL,
  `active` int(8) DEFAULT NULL,
  `post` longtext,
  `deprecated` int(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

 INSERT INTO 'table_themes' VALUES ("9","Sourjelly","0","black~gray~white~grayDark~grayDarker~grayLight~grayLighter~blue~blueDark~green~red~yellow~orange~pink~purple~bodyBackground~textColor~linkColor~linkColorHover~sansFontFamily~serifFontFamily~monoFontFamily~fontSizeMini~fontSizeSmall~baseFontSize~fontSizeLarge~baseFontFamily~baseLineHeight~altFontFamily~borderRadiusSmall~baseBorderRadius~borderRadiusLarge~paddingMini~paddingSmall~paddingLarge~headingsFontFamily~headingsFontWeight~headingsColor~btnBackground~btnBackgroundHighlight~btnBorder~btnPrimaryBackground~btnPrimaryBackgroundHighlight~btnInfoBackground~btnInfoBackgroundHighlight~btnSuccessBackground~btnSuccessBackgroundHighlight~btnWarningBackground~btnWarningBackgroundHighlight~btnDangerBackground~btnDangerBackgroundHighlight~btnInverseBackground~btnInverseBackgroundHighlight~tableBackground~tableBackgroundAccent~tableBackgroundHover~tableBorder~inputBackground~inputHeight~inputBorder~inputBorderRadius~inputDisabledBackground~formActionsBackground~navbarCollapseWidth~navbarHeight~navbarBackgroundHighlight~navbarBackground~navbarBorder~navbarText~navbarLinkColor~navbarLinkColorHover~navbarLinkColorActive~navbarLinkBackgroundHover~navbarLinkBackgroundActive~navbarCollapseDesktopWidth~navbarBrandColor~navbarInverseBackground~navbarInverseBackgroundHighlight~navbarInverseBorder~navbarInverseText~navbarInverseLinkColor~navbarInverseLinkColorHover~navbarInverseLinkColorActive~navbarInverseLinkBackgroundHover~navbarInverseLinkBackgroundActive~navbarInverseSearchBackground~navbarInverseSearchBackgroundFocus~navbarInverseSearchBorder~navbarInverseSearchidColor~navbarInverseBrandColor~navbarInverseSearchPlaceholderColor~dropdownBackground~dropdownBorder~dropdownDividerTop~dropdownDividerBottom~dropdownLinkColor~dropdownLinkColorHover~dropdownLinkColorActive~dropdownLinkBackgroundActive~dropdownLinkBackgroundHover~zindexDropdown~zindexPopover~zindexTooltip~zindexFixedNavbar~zindexModalBackdrop~zindexModal~paginationBackground~paginationBorder~paginationActiveBackground~heroUnitBackground~heroUnitHeadingColor~heroUnitLeadColor~warningText~warningBackground~warningBorder~errorText~errorBackground~errorBorder~successText~successBackground~successBorder~infoText~infoBackground~infoBorder~tooltipColor~tooltipBackground~tooltipArrowWidth~tooltipArrowColor~popoverBackground~popoverArrowWidth~popoverArrowColor~popoverTitleBackground~popoverArrowOuterWidth~popoverArrowOuterColor~gridColumns~gridColumnWidth~gridGutterWidth~gridRowWidth~gridColumnWidth1200~gridGutterWidth1200~gridRowWidth1200~gridColumnWidth768~gridGutterWidth768~gridRowWidth768~fluidGridColumnWidth~fluidGridGutterWidth~fluidGridColumnWidth1200~fluidGridGutterWidth1200~fluidGridColumnWidth768~fluidGridGutterWidth768~iconSpritePath~iconWhiteSpritePath~idText~placeholderText~hrBorder~horizontalComponentOffset~wellBackground=Sourjelly~#000000~#474747~#FFFFFF~darken(#474747, 10%)~darken(#474747, 40%)~lighten(#474747, 10%)~lighten(#474747, 40%)~#049CDB~#2F8BAF~#56C956~#9D261D~#FFC40D~#FF9900~#D63968~#7A43A6~@white~@grayDark~@grayDark~@orange~\\\"Helvetica Neue\\\", Helvetica, Arial, sans-serif~Georgia, \\\"Times New Roman\\\", Times, serif~Monaco, Menlo, Consolas,\\\"Courier New\\\", monospace~8px~10px~14px~16px~@sansFontFamily~20px~@serifFontFamily~2px~4px~6px~4px~6px~8px~inherit~inherit~@grayDark~@white~darken(@white, 10%)~#CCCCCC~@linkColor~spin(@btnPrimaryBackground, 20%)~#5bc0de~#2f96b4~#62c462~#51a351~lighten(@orange, 15%)~@orange~#ee5f5b~#bd362f~#444444~@grayDarker~transparent~#F9F9F9~#F5F5F5~@grayLighter~@white~25px~#CCC~4px~@grayLighter~#F5F5F5~979px~60px~@white~@white~darken(@navbarBackground, 12%);~@gray~@gray~@white~@white~@orange~@orange~980px~@navbarLinkColor~#111111~#222222~#252525~@grayLight~@grayLight~#777777~#777777~transparent~@navbarInverseBackground~lighten(@navbarInverseBackground, 25%)~@white~@navbarInverseBackground~#CCCCCC~@navbarInverseLinkColor~@grayLight~@white~0~#E5E5E5~@white~@grayDark~@white~@dropdownLinkColor~@orange~@dropdownLinkBackgroundActive~1000~1010~1020~1030~1040~1050~@white~#DDD~#F5F5F5~@grayLighter~inherit~inherit~#c09853~#fcf8e3~darken(spin(@warningBackground, -10), 3%)~#b94a48~#f2dede~darken(spin(@errorBackground, -10), 3%)~#468847~#dff0d8~darken(spin(@successBackground, -10), 5%)~#3a87ad~#d9edf7~darken(spin(@infoBackground, -10), 7%)~@white~@black~5px~@tooltipBackground~@white~10px~@white~darken(@popoverBackground, 3%)~@popoverArrowWidth + 1~rgba(0,0,0,0.25)~12~60px~20px~(@gridColumns * @gridColumnWidth) + (@gridGutterWidth * (@gridColumns - 1))~70px~30px~(@gridColumns * @gridColumnWidth1200) + (@gridGutterWidth1200 * (@gridColumns - 1))~70px~30px~(@gridColumns * @gridColumnWidth768) + (@gridGutterWidth768 * (@gridColumns - 1))~percentage(@gridColumnWidth/@gridRowWidth)~percentage(@gridGutterWidth/@gridRowWidth)~percentage(@gridColumnWidth1200/@gridRowWidth1200)~percentage(@gridGutterWidth1200/@gridRowWidth1200)~percentage(@gridColumnWidth768/@gridRowWidth768)~percentage(@gridGutterWidth768/@gridRowWidth768)~/assets/img/glyphicons-halflings.png~/assets/img/glyphicons-halflings-white.png~@grayLight~@grayLight~@grayLight~180px~#F5F5F5","0");
 INSERT INTO 'table_themes' VALUES ("10","asd","0","=","0");
 INSERT INTO 'table_themes' VALUES ("11","aasd","0","=","0");
 INSERT INTO 'table_themes' VALUES ("12","23u71823","0","=","0");
 INSERT INTO 'table_themes' VALUES ("13","asdasdasd","0","=","0");
 INSERT INTO 'table_themes' VALUES ("14","ashdkasjdkasd","0","=","0");
 INSERT INTO 'table_themes' VALUES ("15","qweasdasda","1","black~gray~white~grayDark~grayDarker~grayLight~grayLighter~blue~blueDark~green~red~yellow~orange~pink~purple~bodyBackground~textColor~linkColor~linkColorHover~sansFontFamily~serifFontFamily~monoFontFamily~fontSizeMini~fontSizeSmall~baseFontSize~fontSizeLarge~baseFontFamily~baseLineHeight~altFontFamily~borderRadiusSmall~baseBorderRadius~borderRadiusLarge~paddingMini~paddingSmall~paddingLarge~headingsFontFamily~headingsFontWeight~headingsColor~btnBackground~btnBackgroundHighlight~btnBorder~btnPrimaryBackground~btnPrimaryBackgroundHighlight~btnInfoBackground~btnInfoBackgroundHighlight~btnSuccessBackground~btnSuccessBackgroundHighlight~btnWarningBackground~btnWarningBackgroundHighlight~btnDangerBackground~btnDangerBackgroundHighlight~btnInverseBackground~btnInverseBackgroundHighlight~tableBackground~tableBackgroundAccent~tableBackgroundHover~tableBorder~inputBackground~inputHeight~inputBorder~inputBorderRadius~inputDisabledBackground~formActionsBackground~navbarCollapseWidth~navbarHeight~navbarBackgroundHighlight~navbarBackground~navbarBorder~navbarText~navbarLinkColor~navbarLinkColorHover~navbarLinkColorActive~navbarLinkBackgroundHover~navbarLinkBackgroundActive~navbarCollapseDesktopWidth~navbarBrandColor~navbarInverseBackground~navbarInverseBackgroundHighlight~navbarInverseBorder~navbarInverseText~navbarInverseLinkColor~navbarInverseLinkColorHover~navbarInverseLinkColorActive~navbarInverseLinkBackgroundHover~navbarInverseLinkBackgroundActive~navbarInverseSearchBackground~navbarInverseSearchBackgroundFocus~navbarInverseSearchBorder~navbarInverseSearchidColor~navbarInverseBrandColor~navbarInverseSearchPlaceholderColor~dropdownBackground~dropdownBorder~dropdownDividerTop~dropdownDividerBottom~dropdownLinkColor~dropdownLinkColorHover~dropdownLinkColorActive~dropdownLinkBackgroundActive~dropdownLinkBackgroundHover~zindexDropdown~zindexPopover~zindexTooltip~zindexFixedNavbar~zindexModalBackdrop~zindexModal~paginationBackground~paginationBorder~paginationActiveBackground~heroUnitBackground~heroUnitHeadingColor~heroUnitLeadColor~warningText~warningBackground~warningBorder~errorText~errorBackground~errorBorder~successText~successBackground~successBorder~infoText~infoBackground~infoBorder~tooltipColor~tooltipBackground~tooltipArrowWidth~tooltipArrowColor~popoverBackground~popoverArrowWidth~popoverArrowColor~popoverTitleBackground~popoverArrowOuterWidth~popoverArrowOuterColor~gridColumns~gridColumnWidth~gridGutterWidth~gridRowWidth~gridColumnWidth1200~gridGutterWidth1200~gridRowWidth1200~gridColumnWidth768~gridGutterWidth768~gridRowWidth768~fluidGridColumnWidth~fluidGridGutterWidth~fluidGridColumnWidth1200~fluidGridGutterWidth1200~fluidGridColumnWidth768~fluidGridGutterWidth768~iconSpritePath~iconWhiteSpritePath~idText~placeholderText~hrBorder~horizontalComponentOffset~wellBackground=qweasdasda~#000000~#010101~#FCF9F9~#2655C4~darken(#2655C4, 10%)~#ABC2FF~lighten(#010101, 10%)~#049cdb~#0064cd~#46a546~#9d261d~#ffc40d~#f89406~#c3325f~#7a43b6~@white~@grayDark~#ABC2FF~darken(@linkColor, 15%)~&quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif~Georgia, &quot;Times New Roman&quot;, Times, serif~Monaco, Menlo, Consolas, &quot;Courier New&quot;, monospace~8px~10px~14px~16px~@sansFontFamily~20px~@serifFontFamily~4px~4px~6px~4px~6px~8px~inherit~bold~inherit~@white~darken(@white, 10%)~#CCCCCC~@linkColor~spin(@btnPrimaryBackground, 20%)~#5bc0de~#2f96b4~#62c462~#51a351~lighten(@orange, 15%)~@orange~#ee5f5b~#bd362f~#444444~@grayDarker~transparent~#F9F9F9~#F5F5F5~@grayLighter~#FFF~25px~#CCC~4px~@grayLighter~#F5F5F5~979px~40px~@grayDark~darken(@navbarBackgroundHighlight, 5%)~darken(@navbarBackground, 12%);~@gray~@gray~@grayLight~@grayLight~transparent~darken(@navbarBackground, 5%)~980px~@navbarLinkColor~#111111~#222222~#252525~@grayLight~@grayLight~@white~@navbarInverseLinkColorHover~transparent~@navbarInverseBackground~lighten(@navbarInverseBackground, 25%)~@white~@navbarInverseBackground~#CCCCCC~@navbarInverseLinkColor~@grayLight~@white~rgba(0,0,0,0.2)~#E5E5E5~@white~@grayDark~@white~@dropdownLinkColor~@linkColor~@dropdownLinkBackgroundActive~1000~1010~1020~1030~1040~1050~#FFF~#DDD~#F5F5F5~@grayLighter~inherit~inherit~#c09853~#fcf8e3~darken(spin(@warningBackground, -10), 3%)~#b94a48~#f2dede~darken(spin(@errorBackground, -10), 3%)~#468847~#dff0d8~darken(spin(@successBackground, -10), 5%)~#3a87ad~#d9edf7~darken(spin(@infoBackground, -10), 7%)~#FFF~#000~5px~@tooltipBackground~#FFF~10px~#FFF~darken(@popoverBackground, 3%)~@popoverArrowWidth + 1~rgba(0,0,0,0.25)~12~60px~20px~(@gridColumns * @gridColumnWidth) + (@gridGutterWidth * (@gridColumns - 1))~70px~30px~(@gridColumns * @gridColumnWidth1200) + (@gridGutterWidth1200 * (@gridColumns - 1))~70px~30px~(@gridColumns * @gridColumnWidth768) + (@gridGutterWidth768 * (@gridColumns - 1))~percentage(@gridColumnWidth/@gridRowWidth)~percentage(@gridGutterWidth/@gridRowWidth)~percentage(@gridColumnWidth1200/@gridRowWidth1200)~percentage(@gridGutterWidth1200/@gridRowWidth1200)~percentage(@gridColumnWidth768/@gridRowWidth768)~percentage(@gridGutterWidth768/@gridRowWidth768)~/sourjelly.net/public_html/assets/img/glyphicons-halflings.png~/sourjelly.net/public_html/assets/img/glyphicons-halflings-white.png~@grayLight~@grayLight~@grayLight~180px~#F5F5F5","0");



DROP TABLE .'table_users';

CREATE TABLE `table_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `DoB` date DEFAULT NULL,
  `registered_at` varchar(255) DEFAULT NULL,
  `active` int(8) DEFAULT NULL,
  `dev` int(8) DEFAULT NULL,
  `permissions` int(8) DEFAULT NULL,
  `lang` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

 INSERT INTO 'table_users' VALUES ("1","kevin","newesil","kevinnewesil","kevin@sourjelly.net","22e3e416316145db860bdfc62044dc6c5e5c7a95","1993-10-06","0000-00-00","1","1","9000","_EN");
 INSERT INTO 'table_users' VALUES ("2","Alain","van Hall","alain@sourjelly.net","alain@sourjelly.net","147202b6bbe1d8809b6eb58e4d27075da1daf1df","1991-03-10","0000-00-00","1","1","4","_EN");
 INSERT INTO 'table_users' VALUES ("3","testuser","hmmmmmmmmm","testuser@sourjelly.net","testuser@sourjelly.net","d03881977f4de08f74b962ec7cf2394e4db13c94","1970-01-01","0000-00-00","1","1","2","_EN");



