DROP TABLE .'table_content';

CREATE TABLE `table_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `front` int(8) DEFAULT '1',
  `back` int(8) DEFAULT '0',
  `public` int(8) DEFAULT '1',
  `menuVisibility` int(8) DEFAULT '1',
  `deprecated` int(8) DEFAULT '0',
  `created_at` varchar(127) DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

 INSERT INTO 'table_content' VALUES ("1","1","0","1","1","0","2013","2013-04-22 11:42:35");



DROP TABLE .'table_content_layout';

CREATE TABLE `table_content_layout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cId` int(8) DEFAULT NULL,
  `contentTextAlign` varchar(255) DEFAULT NULL,
  `titleVisibility` int(8) DEFAULT NULL,
  `titleTextAlign` varchar(255) DEFAULT NULL,
  `titleFontSize` int(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

 INSERT INTO 'table_content_layout' VALUES ("1","1","left","1","left","16");



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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

 INSERT INTO 'table_content_properties' VALUES ("1","1","Test page","&lt;p&gt;test&lt;/p&gt;","0","0","0","test","test","test","test");



DROP TABLE .'table_content_roles';

CREATE TABLE `table_content_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cId` int(8) DEFAULT NULL,
  `roleId` int(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

 INSERT INTO 'table_content_roles' VALUES ("1","1","1");



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

 INSERT INTO 'table_modules' VALUES ("1","contact_form","contact_form","15","1","top","0","2013-04-12 10:32:02","0000-00-00 00:00:00");
 INSERT INTO 'table_modules' VALUES ("2","Sourjelly chat","Chat application for sourjelly","","1","top","0","2013-04-14 11:11:18","0000-00-00 00:00:00");
 INSERT INTO 'table_modules' VALUES ("3","Developer news","An overview with the newest updates for developers, a stack overflow link and api, and much much more","","1","top","0","2013-04-14 11:20:00","0000-00-00 00:00:00");



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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

 INSERT INTO 'table_settings' VALUES ("1","1","0","1","0","0","120","256","18","20","20","0","0","Europe/Amsterdam");



DROP TABLE .'table_themes';

CREATE TABLE `table_themes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `themeName` varchar(255) DEFAULT NULL,
  `active` int(8) DEFAULT NULL,
  `post` longtext,
  `deprecated` int(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

 INSERT INTO 'table_themes' VALUES ("9","Sourjelly","1","black~gray~white~grayDark~grayDarker~grayLight~grayLighter~blue~blueDark~green~red~yellow~orange~pink~purple~bodyBackground~textColor~linkColor~linkColorHover~sansFontFamily~serifFontFamily~monoFontFamily~fontSizeMini~fontSizeSmall~baseFontSize~fontSizeLarge~baseFontFamily~baseLineHeight~altFontFamily~borderRadiusSmall~baseBorderRadius~borderRadiusLarge~paddingMini~paddingSmall~paddingLarge~headingsFontFamily~headingsFontWeight~headingsColor~btnBackground~btnBackgroundHighlight~btnBorder~btnPrimaryBackground~btnPrimaryBackgroundHighlight~btnInfoBackground~btnInfoBackgroundHighlight~btnSuccessBackground~btnSuccessBackgroundHighlight~btnWarningBackground~btnWarningBackgroundHighlight~btnDangerBackground~btnDangerBackgroundHighlight~btnInverseBackground~btnInverseBackgroundHighlight~tableBackground~tableBackgroundAccent~tableBackgroundHover~tableBorder~inputBackground~inputHeight~inputBorder~inputBorderRadius~inputDisabledBackground~formActionsBackground~navbarCollapseWidth~navbarHeight~navbarBackgroundHighlight~navbarBackground~navbarBorder~navbarText~navbarLinkColor~navbarLinkColorHover~navbarLinkColorActive~navbarLinkBackgroundHover~navbarLinkBackgroundActive~navbarCollapseDesktopWidth~navbarBrandColor~navbarInverseBackground~navbarInverseBackgroundHighlight~navbarInverseBorder~navbarInverseText~navbarInverseLinkColor~navbarInverseLinkColorHover~navbarInverseLinkColorActive~navbarInverseLinkBackgroundHover~navbarInverseLinkBackgroundActive~navbarInverseSearchBackground~navbarInverseSearchBackgroundFocus~navbarInverseSearchBorder~navbarInverseSearchidColor~navbarInverseBrandColor~navbarInverseSearchPlaceholderColor~dropdownBackground~dropdownBorder~dropdownDividerTop~dropdownDividerBottom~dropdownLinkColor~dropdownLinkColorHover~dropdownLinkColorActive~dropdownLinkBackgroundActive~dropdownLinkBackgroundHover~zindexDropdown~zindexPopover~zindexTooltip~zindexFixedNavbar~zindexModalBackdrop~zindexModal~paginationBackground~paginationBorder~paginationActiveBackground~heroUnitBackground~heroUnitHeadingColor~heroUnitLeadColor~warningText~warningBackground~warningBorder~errorText~errorBackground~errorBorder~successText~successBackground~successBorder~infoText~infoBackground~infoBorder~tooltipColor~tooltipBackground~tooltipArrowWidth~tooltipArrowColor~popoverBackground~popoverArrowWidth~popoverArrowColor~popoverTitleBackground~popoverArrowOuterWidth~popoverArrowOuterColor~gridColumns~gridColumnWidth~gridGutterWidth~gridRowWidth~gridColumnWidth1200~gridGutterWidth1200~gridRowWidth1200~gridColumnWidth768~gridGutterWidth768~gridRowWidth768~fluidGridColumnWidth~fluidGridGutterWidth~fluidGridColumnWidth1200~fluidGridGutterWidth1200~fluidGridColumnWidth768~fluidGridGutterWidth768~iconSpritePath~iconWhiteSpritePath~idText~placeholderText~hrBorder~horizontalComponentOffset~wellBackground=Sourjelly~#000000~#474747~#FFFFFF~darken(#474747, 10%)~darken(#474747, 40%)~lighten(#474747, 10%)~lighten(#474747, 40%)~#049CDB~#2F8BAF~#56C956~#9D261D~#FFC40D~#FF9900~#D63968~#7A43A6~@white~@grayDark~@grayDark~@orange~\\\"Helvetica Neue\\\", Helvetica, Arial, sans-serif~Georgia, \\\"Times New Roman\\\", Times, serif~Monaco, Menlo, Consolas,\\\"Courier New\\\", monospace~8px~10px~14px~16px~@sansFontFamily~20px~@serifFontFamily~2px~4px~6px~4px~6px~8px~inherit~inherit~@grayDark~@white~darken(@white, 10%)~#CCCCCC~@linkColor~spin(@btnPrimaryBackground, 20%)~#5bc0de~#2f96b4~#62c462~#51a351~lighten(@orange, 15%)~@orange~#ee5f5b~#bd362f~#444444~@grayDarker~transparent~#F9F9F9~#F5F5F5~@grayLighter~@white~25px~#CCC~4px~@grayLighter~#F5F5F5~979px~60px~@white~@white~darken(@navbarBackground, 12%);~@gray~@gray~@white~@white~@orange~@orange~980px~@navbarLinkColor~#111111~#222222~#252525~@grayLight~@grayLight~#777777~#777777~transparent~@navbarInverseBackground~lighten(@navbarInverseBackground, 25%)~@white~@navbarInverseBackground~#CCCCCC~@navbarInverseLinkColor~@grayLight~@white~0~#E5E5E5~@white~@grayDark~@white~@dropdownLinkColor~@orange~@dropdownLinkBackgroundActive~1000~1010~1020~1030~1040~1050~@white~#DDD~#F5F5F5~@grayLighter~inherit~inherit~#c09853~#fcf8e3~darken(spin(@warningBackground, -10), 3%)~#b94a48~#f2dede~darken(spin(@errorBackground, -10), 3%)~#468847~#dff0d8~darken(spin(@successBackground, -10), 5%)~#3a87ad~#d9edf7~darken(spin(@infoBackground, -10), 7%)~@white~@black~5px~@tooltipBackground~@white~10px~@white~darken(@popoverBackground, 3%)~@popoverArrowWidth + 1~rgba(0,0,0,0.25)~12~60px~20px~(@gridColumns * @gridColumnWidth) + (@gridGutterWidth * (@gridColumns - 1))~70px~30px~(@gridColumns * @gridColumnWidth1200) + (@gridGutterWidth1200 * (@gridColumns - 1))~70px~30px~(@gridColumns * @gridColumnWidth768) + (@gridGutterWidth768 * (@gridColumns - 1))~percentage(@gridColumnWidth/@gridRowWidth)~percentage(@gridGutterWidth/@gridRowWidth)~percentage(@gridColumnWidth1200/@gridRowWidth1200)~percentage(@gridGutterWidth1200/@gridRowWidth1200)~percentage(@gridColumnWidth768/@gridRowWidth768)~percentage(@gridGutterWidth768/@gridRowWidth768)~/assets/img/glyphicons-halflings.png~/assets/img/glyphicons-halflings-white.png~@grayLight~@grayLight~@grayLight~180px~#F5F5F5","0");



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
 INSERT INTO 'table_users' VALUES ("2","Alain","van Hall","alain@sourjelly.net","alain@sourjelly.net","147202b6bbe1d8809b6eb58e4d27075da1daf1df","1991-01-10","0000-00-00","1","1","4","_EN");
 INSERT INTO 'table_users' VALUES ("3","testuser","hmmmmmmmmm","testuser@sourjelly.net","testuser@sourjelly.net","d03881977f4de08f74b962ec7cf2394e4db13c94","1970-01-01","0000-00-00","1","1","2","_EN");



