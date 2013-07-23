-- phpMyAdmin SQL Dump
-- version 3.5.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 23, 2013 at 09:24 PM
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
-- Table structure for table `table_Aframework_special_chars`
--

CREATE TABLE IF NOT EXISTS `table_Aframework_special_chars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `langid` varchar(255) NOT NULL,
  `characters` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=90 ;

--
-- Dumping data for table `table_Aframework_special_chars`
--

INSERT INTO `table_Aframework_special_chars` (`id`, `langid`, `characters`, `description`) VALUES
(1, '1', '&ndash;', 'en dash'),
(2, '1', '&mdash;', 'em dash'),
(3, '1', '&iexcl;', 'inverted exclamation'),
(4, '1', '&iquest;', 'inverted question mark'),
(5, '1', '&quot;', 'quotation mark'),
(6, '1', '&ldquo;', 'left double curly quote'),
(7, '1', '&rdquo;', 'right double curly quote'),
(8, '1', '&#39;', 'apostrophe (single quote)'),
(9, '1', '&lsqou;', 'left single curly quote'),
(10, '1', '&rsquo;', 'right single curly quote'),
(11, '1', '&laqou;', 'guillemets ( used as quotation marks in some languages, e.g., French)'),
(12, '1', '&raquo;', 'guillemets ( used as quotation marks in some languages, e.g., French)'),
(13, '1', '&nbsp;', 'non-breaking space ( It''s there trust me! )'),
(14, '1', '&amp;', 'ampersand'),
(15, '1', '&cent;', 'cent'),
(16, '1', '&copy;', 'copy'),
(17, '1', '&divide;', 'divide'),
(18, '1', '&gt;', 'greater than'),
(19, '1', '&lt;', 'less than'),
(20, '1', '&micro', 'micron'),
(21, '1', '&middot;', 'middle dot'),
(22, '1', '&para;', 'pilcrow ( paragraph sign )'),
(23, '1', '&plusmn;', 'plus/minus'),
(24, '1', '&euro;', 'euro'),
(25, '1', '&pound;', 'Britsh pound sterling'),
(26, '1', '&reg;', 'registered'),
(27, '1', '&sect;', 'section'),
(28, '1', '&trade;', 'trademark'),
(29, '1', '&ven;', 'Japanese yen'),
(30, '1', '&aacute;', 'lower-case "a" with acute accent'),
(31, '1', '&Aacute;', 'upper-case "A" with acute accent'),
(33, '1', '&agrave;', 'lover-case "a" with grave accent'),
(34, '1', '&Agrave;', 'upper-case "A" with grave accent'),
(35, '1', '&acirc;', 'lower-case "a" with circumflex'),
(36, '1', '&Acirc;', 'upper-case "A" with circumflex'),
(37, '1', '&aring;', 'lower-case "a" with ring'),
(38, '1', '&Aring', 'upper-case "A" with ring'),
(39, '1', '&atilde;', 'lower-case "a" with tilde'),
(40, '1', '&Atilde;', 'upper-case "A" with tilde'),
(41, '1', '&auml;', 'lower-case "a" with diaeresis/umlaut'),
(42, '1', '&Auml;', 'lower-case "A" with diaeresis/umlaut'),
(43, '1', '&aelig;', 'lower-case "ae" ligature'),
(44, '1', '&AElig;', 'upper-case "AE" ligature'),
(45, '1', '&ccedil;', 'lower-case "c" with cedilla'),
(46, '1', '&Ccedil;', 'upper-case "C" with cedilla'),
(47, '1', '&eacute;', 'lower-case "e" with acute accent'),
(48, '1', '&Eacute;', 'upper-case "E" with acute accent'),
(49, '1', '&egrave;', 'lower-case "e" with grace accent'),
(50, '1', '&Egrave;', 'upper-case "E" with grace accent'),
(51, '1', '&ecirc;', 'lower-case "e" with circumflex'),
(52, '1', '&Ecirc;', 'upper-case "E" with circumflex'),
(53, '1', '&euml;', 'lower-case "e" with diaeresis/umlaut'),
(54, '1', '&Euml;', 'upper-case "E" with diaeresis/umlaut'),
(55, '1', '&iacute;', 'lower-case "i" with acute accent'),
(56, '1', '&Iacute;', 'upper-case "I" with acute accent'),
(57, '1', '&igrave;', 'lower-case "i" with grave accent'),
(58, '1', '&Igrave;', 'upper-case "I" with grave accent'),
(59, '1', '&icirc;', 'lower-case "i" with circumflex'),
(60, '1', '&Icirc;', 'upper-case "I" with circumflex'),
(61, '1', '&iuml;', 'lower-case "i" with diaeresis/umlaut'),
(62, '1', '&Iuml;', 'upper-case "I" with diaeresis/umlaut'),
(63, '1', '&ntilde;', 'lower-case "n" tilde'),
(64, '1', '&Ntilde;', 'upper-case "N" tilde'),
(65, '1', '&oacute;', 'lower-case "o" with acute accent'),
(66, '1', '&Oacute;', 'upper-case "O" with acute accent'),
(67, '1', '&ograve;', 'lower-case "o" with grave accent'),
(68, '1', '&Ograve;', 'upper-case "O" with grave accent'),
(69, '', NULL, NULL),
(70, '1', '&ocirc;', 'lower-case "o" with circumflex'),
(71, '1', '&Ocirc;', 'upper-case "O" with circumflex'),
(72, '1', '&oslah;', 'lower-case "o" with slash '),
(73, '1', '&Oslah;', 'upper-case "O" with slash '),
(74, '1', '&otilde;', 'lower-case "o" with tilde'),
(75, '1', '&Otilde;', 'upper-case "O" with tilde'),
(76, '1', '&ouml;', 'lower-case "o" with diaeresis/umlaut'),
(77, '1', '&Ouml;', 'upper-case "O" with diaeresis/umlaut'),
(78, '1', '&szlig;', 'ess-tsett'),
(79, '1', '&uacute;', 'lower-case "u" with acute accent'),
(80, '1', '&Uacute;', 'upper-case "U" with acute accent'),
(81, '1', '&ugrave;', 'lower-case "u" with grave accent'),
(82, '1', '&Ugrave;', 'upper-case "U" with grave accent'),
(83, '1', '&ucirc;', 'lower-case "u" with circumflex'),
(84, '1', '&Ucirc;', 'upper-case "U" with circumflex'),
(85, '1', '&uuml;', 'lower-case "u" with diaeresis/umlaut'),
(86, '1', '&Uuml;', 'upper-case "U" with diaeresis/umlaut'),
(87, '1', '&yuml;', 'lower-case "y" with diaeresis/umlaut'),
(88, '1', '&#180;', 'acute accent with no letter'),
(89, '1', '&#96;', 'grave accent/reversed apostrophe with no letter');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
