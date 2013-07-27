<?php namespace api\local; if(!defined("DS")) die('no direct script access!');

	class Api_css
	{

		protected $_link;

		/**
		 * Sets the link to the database from the Main \api\Api class into this smaller api class.
		 * @param MySQLI resource $link The link to the database
		 */
		public function __construct($link)
		{
			$this -> _link = $link;

		}
	}