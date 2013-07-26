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
		protected $_link;

		/**
		 * Sets the link to the database from the Main \api\Api class into this smaller api class.
		 * @param MySQLI resource $link The link to the database
		 */
		public function __construct($link)
		{
			$this -> _link = $link;

		}

		public function getDoctype($tags)
		{
			return $this -> getAttrFromTag($tags);
		}

		public function getHead($attr = NULL)
		{
			$attrNames = $this -> getAttrFromTag("head");

			return \core\__H("head " . ($attr !== NULL ? $attrNames . "=\"" . $attr . "\"" : ""));
		}

		public function getTitle($attr = NULL)
		{
			return \core\__H("title") . "test" . "\r\n" . \core\__H("/title");
		}

		public function getAttrFromTag($tags)
		{
			$query   = "SELECT `attr` FROM `table_Aframework_html` WHERE `tags` = ? ";
			$attr = false;

			if($stmt = $this -> _link -> prepare($query))
			{
				$stmt -> bind_param('s',$tags);
				$stmt -> execute();
				$stmt -> bind_result($attr);

				while($row = $stmt -> fetch())
					$attr = $attr;
			}

			return $attr;
		}

	}