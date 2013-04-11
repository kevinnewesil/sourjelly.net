<?php namespace core\build; if(!defined("DS")) die('no direct script access');

	class Template
	{
		public static function getTemplate($path)
		{
			return file_get_contents(VIEWS_PATH . 'pages' . DS . self::getCookieLang() . DS . $path );
		}

		public static function getSnippet($name , $folder = NULL)
		{
			if($folder !== NULL)
				return file_get_contents(VIEWS_PATH . 'snippets' . DS . self::getCookieLang() . DS .  $folder . DS . $name);
			else
				return file_get_contents(VIEWS_PATH . 'snippets' . DS . self::getCookieLang() . DS . $name);
		}

		public static function getLang()
		{
			return self::getCookieLang();
		}

		private static function getCookieLang()
		{
			return isset($_SESSION['user_language']) ? $_SESSION['user_language'] : '_EN';
		}
	}
