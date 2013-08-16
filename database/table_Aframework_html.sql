-- phpMyAdmin SQL Dump
-- version 3.5.8
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2013 at 09:01 PM
-- Server version: 5.6.10
-- PHP Version: 5.3.15

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `table_Aframework_html`
--

CREATE TABLE IF NOT EXISTS `table_Aframework_html` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tags` varchar(255) DEFAULT NULL,
  `attr` varchar(255) DEFAULT NULL,
  `class` int(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=124 ;

--
-- Dumping data for table `table_Aframework_html`
--

INSERT INTO `table_Aframework_html` (`id`, `tags`, `attr`, `class`) VALUES
(1, 'a', 'charset,coords,href,hreflang,media,name,rel,rev,shape,target,type', NULL),
(2, 'abbr', 'accesskey,class,contenteditable,contextmenu,ir,draggable,dropzone,hidden,id,lang,spellcheck,style,tabindex,title,translate', NULL),
(3, 'acronym', 'dir,id,lang,style,title,xml:lang', NULL),
(4, 'address', 'accesskey,class,contenteditable,contextmenu,dir,draggable,dropzone,hidden,id,lang,spellcheck,style,tabindex,title,translate', NULL),
(5, 'applet', 'code,object,align,alt,archive,codebase,height,hspace,name,vspace,width', NULL),
(6, 'area', 'alt,coords,href,hreflang,mdia,nohref,rel,shape,target,type', NULL),
(7, 'article', 'accesskey,contenteditable,contextmenu,dir,draggable,dropzone,hidden,lang,spellcheck,style,tabindex,title,translate', NULL),
(8, 'aside', 'accesskey,contenteditable,contentditable,contextmenu,dir,draggable,dropzone,hidden,lang,spellcheck,tabindex,translate', NULL),
(9, 'audio', 'autoplay,controls,loop,muted,preload,src', NULL),
(10, 'b', 'GlobalAttributes', NULL),
(11, 'base', 'href,target,GlobalAttributes', NULL),
(12, 'basefont', 'color,face,size,dir,lang', NULL),
(13, 'bdi', 'GlobalAttributes', NULL),
(14, 'bdo', 'dir,GlobalAttributes', NULL),
(15, 'big', 'dir,lang,xml:lang', NULL),
(16, 'blockqoute', 'cite,GlobalAttributes', NULL),
(17, 'body', 'alink,background,bgcolor,link,text,vlink,GlobalAttributes', NULL),
(18, 'br', 'GlobalAttributes', NULL),
(19, 'button', 'autofocus,disabled,form,formaction,formenctype,formmethod,formnovalidate,formtarget,name,type,value', NULL),
(20, 'canvas', 'height,width,GlobalAttributes', NULL),
(21, 'caption', 'align,GlobalAttributes', NULL),
(22, 'center', 'dir,lang,GlobalAttributes', NULL),
(23, 'cite', 'GlobalAttributes', NULL),
(24, 'code', 'GlobalAttributes', NULL),
(25, 'col', 'align,char,charoff,span,valign,width,GlobalAttributes', NULL),
(26, 'colgroup', 'align,char,charoff,span,valign,width,GlobalAttributes', NULL),
(27, 'command', 'checked,disabled,icon,label,radiogroup,type,GlobalAttributes', NULL),
(28, 'datalist', 'GlobalAttributes', NULL),
(29, 'dd', 'GlobalAttributes', NULL),
(30, 'del', 'cite,datetime,GlobalAttributes', NULL),
(31, 'details', 'open,GlobalAttributes', NULL),
(32, 'dfn', 'GlobalAttributes', NULL),
(33, 'dialog', 'open,GlobalAttributes', NULL),
(34, 'dir', 'compact,class,dir,id,lang,style,title', NULL),
(35, 'div', 'align,GlobalAttributes', NULL),
(36, 'dl', 'GlobalAttributes', NULL),
(37, 'dt', 'GlobalAttributes', NULL),
(38, 'em', 'GlobalAttributes', NULL),
(39, 'embed', 'height,src,type,width,GlobalAttributes', NULL),
(40, 'fieldset', 'disabled,form,name,GlobalAttributes', NULL),
(41, 'figcaption', 'GlobalAttributes', NULL),
(42, 'figure', 'GlobalAttributes', NULL),
(43, 'font', 'color,face,size,dir,lang,GlobalAttributes', NULL),
(44, 'footer', 'GlobalAttributes', NULL),
(45, 'form', 'accept,accept-charset,action,autocomplete,enctype,method,name,novalidate,target,GlobalAttributes', NULL),
(46, 'frame', 'frameborder,longdesc,marginheight,marginwidth,name,noresize,scrolling,src', NULL),
(47, 'frameset', 'cols,rows', NULL),
(48, 'h1', 'align,GlobalAttributes', NULL),
(49, 'h2', 'align,GlobalAttributes', NULL),
(50, 'h3', 'align,GlobalAttributes', NULL),
(51, 'h4', 'align,GlobalAttributes', NULL),
(52, 'h5', 'align,GlobalAttributes', NULL),
(53, 'h6,align,GlobalAttributes', NULL, NULL),
(54, 'head', 'profile,GlobalAttributes', NULL),
(55, 'header', 'GlobalAttributes', NULL),
(56, 'hr', 'align,noshade,size,width,GlobalAttributes', NULL),
(57, 'html', 'manifest,cmlns,GlobalAttributes', NULL),
(58, 'i', 'GlobalAttributes', NULL),
(59, 'iframe', 'align,frameborder,height,longdesc,marginheight,marginwidth,name,sandbox,scrolling,seamless,src,srcdoc,width,GlobalAttributes', NULL),
(60, 'img', 'align,alt,border,crossorigin,height,hspace,ismap,longdesc,src,usemap,vspace,width,GlobalAttributes', NULL),
(61, 'input', 'accept,align,alt,autocomplete,autofocus,checked,disabled,form,formaction,formenctype,formmethod,formnovalidate,formtarget,heigh,list,max,maxlength,min,multiple,name,pattern,placeholder,readonly,required,size,src,step,type,value,width,GlobalAttributes', NULL),
(62, 'ins', 'cite,datetime,GlobalAttributes', NULL),
(63, 'kdb', 'GlobalAttributes', NULL),
(64, 'keygen', 'autofocus,challenge,disabled,form,keytype,name,GlobalAttributes', NULL),
(65, 'label,for,form,GlobalAttributes', NULL, NULL),
(66, 'legend', 'align,GlobalAttributes', NULL),
(67, 'li', 'type,value,GlobalAttributes', NULL),
(68, 'link', 'charset,href,hreflang,media,rel,rev,sizes,target,type,GlobalAttributes', NULL),
(69, 'map', 'name,GlobalAttributes', NULL),
(70, 'mark', 'GlobalAttributes', NULL),
(71, 'menu', 'label,type,GlobalAttributes', NULL),
(72, 'meta', 'charset,content,http-equiv,name,scheme,GlobalAttributes', NULL),
(73, 'meter', 'form,high,low,max,min,optimum,value,GlobalAttributes', NULL),
(74, 'nav', 'GlobalAttributes', NULL),
(75, 'noframes', 'dir,lang,xml:lang', NULL),
(76, 'noscript', 'GlobalAttributes', NULL),
(77, 'ul', 'compact,type,GlobalAttributes', NULL),
(78, 'var', 'GlobalAttributes', NULL),
(79, 'object', 'GlobalAttributes', NULL),
(80, 'ol', 'compact,reversed,start,type,GlobalAttributes', NULL),
(81, 'optgroup', 'disabled,label,GlobalAttributes', NULL),
(82, 'option', 'disabled,label,selected,GlobalAttributes', NULL),
(83, 'output', 'for,form,name,GlobalAttributes', NULL),
(84, 'p', 'align,GlobalAttributes', NULL),
(85, 'param', 'name,type,value,valuetype,GlobalAttributes', NULL),
(86, 'pre', 'width,GlobalAttributes', NULL),
(87, 'progressmax,value,GlobalAttributes', NULL, NULL),
(88, 'q', 'cite,GlobalAttributes', NULL),
(89, 'rp', 'GlobalAttributes', NULL),
(90, 'rt', 'GlobalAttributes', NULL),
(91, 'ruby', 'GlobalAttributes', NULL),
(92, 's', 'GlobalAttributes', NULL),
(93, 'samp', 'GlobalAttributes', NULL),
(94, 'script', 'async,charset,defer,srv,type,xml:space,GlobalAttributes', NULL),
(95, 'section', 'GlobalAttributes', NULL),
(96, 'select', 'autofocus,disabled,form,multiple,name,required,size,GlobalAttributes', NULL),
(97, 'small', 'GlobalAttributes', NULL),
(98, 'source', 'media,src,type,GlobalAttributes', NULL),
(99, 'span', 'GlobalAttributes', NULL),
(100, 'strike', 'dir,lang', NULL),
(101, 'strong', 'GlobalAttributes', NULL),
(102, 'style', 'media,scoped,type,GlobalAttributes', NULL),
(103, 'sub', 'GlobalAttributes', NULL),
(104, 'summary', 'GlobalAttributes', NULL),
(105, 'sup', 'GlobalAttributes', NULL),
(106, 'table', 'align,bgcolor,border,celklpadding,cellspacing,frame,rules,summary,width,GlobalAttributes', NULL),
(107, 'tbody', 'align,char,charoff,valign,GlobalAttributes', NULL),
(108, 'td', 'abbr,align,axis,bgcolor,char,charoff,colspan,headers,height,nowrap,rowspan,scope,valign,width,GlobalAttributes', NULL),
(109, 'textarea', 'autofocus,cols,disabled,form,maxlenght,name,placeholder,readonly,required,rows,wrap,GlobalAttributes', NULL),
(110, 'tfoot', 'align,char,charoff,valign,GlobalAttributes', NULL),
(111, 'thead', 'align,char,charoff,valign,GlobalAttributes', NULL),
(112, 'th', 'abbr,align,axis,bgcolor,char,charoff,colspan,headers,height,nowrap,rowspan,scope,valign,width,GlobalAttributes', NULL),
(113, 'thead', 'align,char,charoff,valign,GlobalAttributes', NULL),
(114, 'time', 'datetime,GlobalAttributes', NULL),
(115, 'title', 'GlobalAttributes', NULL),
(116, 'tr', 'align,bgcolor,char,charoff,valign,GlobalAttributes', NULL),
(117, 'tr', 'align,bgcolor,char,charoff,valign,GlobalAttributes', NULL),
(118, 'track', 'default,kind,label,src,srclang,GlobalAttributes', NULL),
(119, 'tt', 'dir,lang,title,xml:lang', NULL),
(120, 'u', 'GlobalAttributes', NULL),
(121, 'ul', 'compact,type,GlobalAttributes', NULL),
(122, 'video', 'autoplay,controls,height,loop,muted,poster,preload,src,width,GlobalAttributes', NULL),
(123, 'wbr', 'GlobalAttributes', NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
