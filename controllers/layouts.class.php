<?php namespace controllers; if(!defined("DS")) die('no direct script access!');

	/**
	*
	* @author  Kevin Newesil <kevin@sourjelly.net>
	* @version  1.0 
	* @package  controllers
	* 
	*/
	final class Layouts extends \core\system\Controller
	{

		final public function __construct()
		{
			parent::__construct();
		}

		
		final public function navigation()
		{
			$placeholders = array('{position_value}');
			$replacers    = array('absolute');

			$tmp = str_replace($placeholders, $replacers, \Template('layout/navigation.html.tpl'));

			\SjHtml() -> assign('{content}',$tmp);
		}

		final public function header()
		{
			\SjHtml() -> assign('{content}',\Template('layout/Header.html.tpl'));	
		}

		final public function content()
		{
			\SjHtml() -> assign('{content}',\Template('layout/content.html.tpl'));
		}

		final public function footer()
		{
			\SjHtml() -> assign('{content}',\Template('layout/footer.html.tpl'));
		}

	}
