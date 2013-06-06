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
		final public function __construct() { parent::__construct(); }
		
		final public function navigation()
		{
			$data         = \getApiLayoutNavigation() -> getPrimaryLayoutSettings();
			$placeholders = array();
			$replacers    = array();

			foreach($data as $key => $value)
			{
				$placeholders[] = '{' . $key . '_value}';
				$replacers[]    = ($key == 'dynamicNavigation' || $key = 'alwaysVisible' && $value == '1') ? 'checked="checked"' : $value;
			}

			

			\SjHtml() -> assign('{content}',\Template('layout/navigation.html.tpl'));
			\sjHtml() -> assign($placeholders, $replacers);
		}

		final public function header() { \SjHtml() -> assign('{content}',\Template('layout/Header.html.tpl')); }

		final public function content() { \SjHtml() -> assign('{content}',\Template('layout/content.html.tpl')); }

		final public function footer() { \SjHtml() -> assign('{content}',\Template('layout/footer.html.tpl')); }

		final public function icons() { \SjHtml() -> assign('{content}',\Template('layout/icons.html.tpl')); }

	}
