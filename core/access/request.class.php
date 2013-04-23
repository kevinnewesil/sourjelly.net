<?php namespace core\access; if(!defined("DS")) die('no direct script access');

	class Request
	{
		/**
		 * @author Kevin Newesil <newesil.kevin@gmail.com>
		 * @version 1.1.0.0
		 */

		protected static $_initializeObject;

		public static function returnGlobalObject($state = 'get')
		{
			if(!$request = self::getRequestBody($state))
				return false;

			self::$_initializeObject = new \stdClass;

			foreach($request as $key => $value)
				self::$_initializeObject -> $key = htmlentities($value,ENT_QUOTES,"UTF-8");

			return (object) self::$_initializeObject;
		}

		public static function returnParsedValue($name, $state = 'get')
		{
			if(!$request = self::getRequestBody($state))
				return false;

			$request[$name] = htmlentities($request[$name],ENT_QUOTES,"UTF-8");

			return $request[$name];
		}

		protected static function getRequestBody($state)
		{
			switch ($state) {
				case 'get':
					$request = $_GET;
					break;

				case 'post':
					$request = $_POST;
					break;
				
				default:
					return false;
					break;
			}

			return $request;
		}
	}
