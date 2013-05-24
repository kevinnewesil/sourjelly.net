<?php namespace api\local\layout; if(!defined("DS")) die('no direct script access');

	/**
	* 
	*/
	class Api_layout_footer
	{
		protected static $_link;

		function __construct($link)
		{
			self::$_link = $link;
		}
	}