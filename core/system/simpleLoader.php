<?php namespace \; if(!defined("DS")) die('no direct script access');

	if(!function_exists("Refresh"))
	{
		function Refresh($notice,$sort)
		{
			\core\access\Redirect::Refresh($notice,$sort);
		}
	}

	if(!function_exists("GoTo"))
	{
		function GoTo($path,$notice,$sort)
		{
			\core\access\Redirect::To($path,$notice,$sort);
		}
	}

	if(!function_exists("GoHome"))
	{
		function GoHome($notice,$sort)
		{
			\core\access\Redirect::Home($notice,$sort);
		}
	}

	if(!function_exists("GoBack"))
	{
		function GoBack($notice,$sort)
		{
			\core\access\Redirect::Back($notice,$sort);
		}
	}

	if(!function_exists("QueryFalse"))
	{
		function QueryFalse()
		{
			\config\Config::setQueryOkFalse();
		}
	}

	if(!function_exists("QueryFalseMsg"))
	{
		function QueryFalseMsg($msg)
		{
			\config\Config::setQueryFalseMsg($msg);
		}
	}