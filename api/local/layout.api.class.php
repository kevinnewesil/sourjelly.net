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

			return \core\__H("head" . ( ($attr != NULL) ? " " . $attrNames . "=\"" . $attr . "\"" : ""),1);
		}

		public function getTitle($attr = NULL)
		{
			return \core\__H("title") . \core\__T(3) . "Sourjelly" . "\r\n" . \core\__H("/title");
		}

		public function getBase($attr = NULL)
		{

			if($attr == NULL || !is_array($attr)) return \core\__H("base");

			$attrString = "";
			$attrNames  = $this -> getAttrFromTag("base");
			$attrArray  = explode(',', $attrNames);

			foreach($attrArray as $key => $attrName)
				(isset($attr[$key]) && $attr[$key] !== "") ? $attrString .= $this -> assign($attrName,$attr[$key]) : "" ;

			return \core\__H("base " . $attrString);

		}

		public function getLink($attr)
		{
			return \core\__H("link " . $this -> simpleAssign($attr,"link"));
		}

		public function getMeta($attr)
		{
			return \core\__H("meta " . $this -> simpleAssign($attr,"meta"));
		}

		public function getNoScript()
		{
			return \core\__H("noscript") . \core\__T(3) . ("This system is build on javascript please enable it before continuing \r\n") . \core\__H("/noscript");
		}

		public function assign($attrName,$attrValue)
		{
			return (isset($attrValue) && $attrValue !== "") ? $attrName . "=\"" . $attrValue . "\" " : "";
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

		public function simpleAssign($attr,$tag)
		{
			$attrString = "";
			$attrNames  = $this -> getAttrFromTag($tag);
			$attrArray  = explode(',', $attrNames);

			foreach ($attrArray as $key => $attrName)
				(isset($attr[$key]) && $attr[$key] !== "") ? $attrString .= $this -> assign($attrName,$attr[$key]) : "" ;

			return $attrString;
		}

	}