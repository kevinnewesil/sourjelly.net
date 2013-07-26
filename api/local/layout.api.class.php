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
			$query   = "SELECT `attr` FROM `table_Aframework_html` WHERE `tags` = ?";
			$doctype = false;

			if($stmt = $this -> _link -> prepare($query))
			{
				$stmt -> bind_param('s',$tags);
				$stmt -> execute();
				$stmt -> bind_result($doctype);

				while($row = $stmt -> fetch())
					$doctype = $doctype;
			}

			return $doctype;
		}

	}