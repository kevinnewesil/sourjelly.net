<?php namespace controllers; if(!defined("DS")) die('no direct script access!');

	/** 
	* @author  {YOUR_NAME} <{YOUR_EMAIL}>
	* @version  1.0 
	* @package  {PACKAGE}
	* 
	* @var {PROPERTIE_NAME} {PROPERTY_TYPE} {PROPERTY_DESCRIPTION}
	*/
	class Layouts extends \core\system\Controller
	{

		public function __construct()
		{
			parent::__construct();
		}

		
		public function navigation()
		{
			\SjHtml() -> assign('{content}',\Template('layout/navigation.html.tpl'));
		}

		public function header()
		{
			\SjHtml() -> assign('{content}',\Template('layout/Header.html.tpl'));	
		}

		public function content()
		{
			\SjHtml() -> assign('{content}',\Template('layout/content.html.tpl'));
		}

		public function footer()
		{
			\SjHtml() -> assign('{content}',\Template('layout/footer.html.tpl'));
		}

	}
