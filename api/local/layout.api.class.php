<?php namespace api\local; if(!defined("DS")) die('no direct script access!');

	/**
	 * @author  Kevin Newesil <newesil.kevin@gmail.com>
	 * @version  1.0
	 * @package  default
	 *
	 *
	 * @var $_link MySQLI resource The link to the database
	 */
	class Api_layout
	{
		protected static $_link;

		protected static $_header;
		protected static $_footer;
		protected static $_content;
		protected static $_navigation;

		/**
		 * Sets the link to the database from the Main \api\Api class into this smaller api class.
		 * @param MySQLI resource $link The link to the database
		 */
		public function __construct($link)
		{
			self::$_link = $link;

			require(API_PATH . 'local/layout/header.api.class.php');
			require(API_PATH . 'local/layout/footer.api.class.php');
			require(API_PATH . 'local/layout/content.api.class.php');
			require(API_PATH . 'local/layout/navigation.api.class.php');

			self::$_header     = new \api\local\layout\Api_layout_header(self::$_link);
			self::$_footer     = new \api\local\layout\Api_layout_footer(self::$_link);
			self::$_content    = new \api\local\layout\Api_layout_content(self::$_link);
			self::$_navigation = new \api\local\layout\Api_layout_navigation(self::$_link);
		}

		public static function getHeader()
		{
			return self::$_header;
		}

		public static function getFooter()
		{
			return self::$_footer;
		}

		public static function getContent()
		{
			return self::$_content;
		}

		public static function getNavigation()
		{
			return self::$_navigation;
		}

	}