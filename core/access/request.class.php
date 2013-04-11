<?php namespace core\access; if(!defined("DS")) die('no direct script access');

	class Request
	{
		/**
		 * @author Kevin Newesil <newesil.kevin@gmail.com>
		 * @version 1.1.0.0
		 * All the functions request the sort of super global from the request, and return a clean array of all the super global variables.
		 * @param  string/array 	$name the names of the keys of the super globals
		 * @return array       		The array of the cleaned super global values
		 */
		public static function globals($name = NULL)
		{	
			$ret = array();
			
			if($name !== NULL)
				if(is_array($name))
					foreach($name as $value)
						$ret[$value] = $GLOBALS[$value];
				else
					$ret[$name] = (isset($GLOBALS[$name])) ? ($GLOBALS[$name]) : 'Not found';
			else
				foreach($GLOBALS as $key => $value)
					$ret[$key] = $value;

			return $ret;
		}

		public static function server($name = NULL)
		{	
			$ret = array();
			
			if($name !== NULL)
				if(is_array($name))
					foreach($name as $value)
						$ret[$value] = $_SERVER[$value];
				else
					$ret[$name] = (isset($_SERVER[$name])) ? ($_SERVER[$name]) : 'Not found';
			else
				foreach($_SERVER as $key => $value)
					$ret[$key] = $value;

			return $ret;
		}

		public static function get($name = NULL)
		{	
			$ret = array();
			
			if($name !== NULL)
				if(is_array($name))
					foreach($name as $value)
						$ret[$value] = $_GET[$value];
				else
					$ret[$name] = (isset($_GET[$name])) ? ($_GET[$name]) : 'Not found';
			else
				foreach($_GET as $key => $value)
					$ret[$key] = $value;

			return $ret;
		}

		public static function post($name = NULL)
		{	
			$ret = array();
			
			if($name !== NULL)
				if(is_array($name))
					foreach($name as $value)
						$ret[$value] = $_POST[$value];
				else
					$ret[$name] = (isset($_POST[$name])) ? ($_POST[$name]) : 'Not found';
			else
				foreach($_POST as $key => $value)
					$ret[$key] = $value;

			return $ret;
		}

		public static function files($name = NULL)
		{	
			$ret = array();
			
			if($name !== NULL)
				if(is_array($name))
					foreach($name as $value)
						$ret[$value] = $_FILES[$value];
				else
					$ret[$name] = (isset($_FILES[$name])) ? ($_FILES[$name]) : 'Not found';
			else
				foreach($_FILES as $key => $value)
					$ret[$key] = $value;

			return $ret;
		}

		public static function cookies($name = NULL)
		{	
			$ret = array();
			
			if($name !== NULL)
				if(is_array($name))
					foreach($name as $value)
						$ret[$value] = $_COOKIES[$value];
				else
					$ret[$name] = (isset($_COOKIES[$name])) ? ($_COOKIES[$name]) : 'Not found';
			else
				foreach($_COOKIES as $key => $value)
					$ret[$key] = $value;

			return $ret;
		}

		public static function session($name = NULL)
		{	
			$ret = array();
			
			if($name !== NULL)
				if(is_array($name))
					foreach($name as $value)
						$ret[$value] = $_SESSION[$value];
				else
					$ret[$name] = (isset($_SESSION[$name])) ? ($_SESSION[$name]) : 'Not found';
			else
				foreach($_SESSION as $key => $value)
					$ret[$key] = $value;

			return $ret;
		}

		public static function request($name = NULL)
		{	
			$ret = array();
			
			if($name !== NULL)
				if(is_array($name))
					foreach($name as $value)
						$ret[$value] = $_REQUEST[$value];
				else
					$ret[$name] = (isset($_REQUEST[$name])) ? ($_REQUEST[$name]) : 'Not found';
			else
				foreach($_REQUEST as $key => $value)
					$ret[$key] = $value;

			return $ret;
		}

		public static function env($name = NULL)
		{	
			$ret = array();
			
			if($name !== NULL)
				if(is_array($name))
					foreach($name as $value)
						$ret[$value] = $_ENV[$value];
				else
					$ret[$name] = (isset($_ENV[$name])) ? ($_ENV[$name]) : 'Not found';
			else
				foreach($_ENV as $key => $value)
					$ret[$key] = $value;

			return $ret;
		}
	}
