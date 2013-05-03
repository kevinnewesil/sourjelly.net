<?php namespace api\local\layout; if(!defined("DS")) die('no direct script access');

	/**
	* 
	*/
	class Api_Layout_Navigation
	{
		protected static $_link;

		function __construct($link)
		{
			self::$_link = $link;
		}
	}