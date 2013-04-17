<?php if(!defined("DS")) die('no direct script access');
	
	/**
	 * Redirects
	 */

	if(!function_exists("Refresh")) { function Refresh($notice,$sort = "notice") { \core\access\Redirect::Refresh($notice,$sort); } }

	if(!function_exists("Go")) { function Go($path,$notice,$sort = "notice") { \core\access\Redirect::To($path,$notice,$sort); } }

	if(!function_exists("GoHome")) { function GoHome($notice,$sort = "notice") { \core\access\Redirect::Home($notice,$sort); } }

	if(!function_exists("GoBack")) { function GoBack($notice,$sort = "notice") { \core\access\Redirect::Back($notice,$sort); } }

	/**
	 * Query handling 
	 */

	if(!function_exists("QueryFalse")) { function QueryFalse() { \config\Config::setQueryOkFalse(); } }

 	if(!function_exists("QueryFalseMsg")) { function QueryFalseMsg($msg) { \config\Config::setQueryFalseMsg($msg); } }

	/**
	 * Session handling
	 */

	if(!function_exists("SetNotice")){ function SetNotice($notice){ $_SESSION['notice'] = $notice; }}