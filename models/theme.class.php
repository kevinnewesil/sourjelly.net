<?php namespace models; if(!defined("DS")) die('no direct script access!');

	/** 
	* @author  Kevin Newesil <newesil.kevin@gmail.com>
	* @version  1.0 
	* @package  default
	* 
	*/
	final class Theme extends \core\system\Model
	{

		final public function __construct()
		{
			parent::__construct();
		}

		final public function delete()
		{
			$id = $this -> getId();

			if(\api\Api::updateTable('table_themes',array('deprecated'),array('1'),array('id' => $id)))
				return true;
			else
				return false;
		}

		final private function getId()
		{
			$url = explode('/',$_SERVER['REQUEST_URI']);

			if(is_numeric($url[count($url)-2]))
				return $url[count($url)-2];
			else
				return false;
		}
	}
