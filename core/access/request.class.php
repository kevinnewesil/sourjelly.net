<?php namespace core\access; if(!defined("DS")) die('no direct script access');

	final class Request
	{
		/**
		 * @author Kevin Newesil <newesil.kevin@gmail.com>
		 * @version 1.1.0.0
		 */

		protected static $_initializeObject;

		final public static function returnGlobalObject($state = 'get')
		{
			if(!$request = self::getRequestBody($state))
				return false;

			self::parseArrayToObject($request);

			return (object) self::$_initializeObject;
		}

		final public static function returnParsedValue($name, $state = 'get')
		{
			if(!$request = self::getRequestBody($state))
				return false;

			$request[$name] = htmlentities($request[$name],ENT_QUOTES,"UTF-8");

			return $request[$name];
		}

		final protected static function parseArrayToObject($array)
		{

			foreach($array as $key => $value)
				if(is_array($value))
					self::parseArrayToObject($value);
				else
					$array[$key] = htmlentities($value,ENT_QUOTES, "UTF-8");

			self::$_initializeObject = $array;
		}

		final protected static function getRequestBody($state)
		{
			switch ($state) {
				case 'get':
					$request = (isset($_GET) && !empty($_GET)) ? $_GET : NULL ;
					unset($_GET);
					break;

				case 'post':
					$request = (isset($_POST) && !empty($_POST)) ? $_POST : NULL;
					unset($_POST);
					break;
				
				default:
					return false;
					break;
			}

			return $request;
		}
	}
