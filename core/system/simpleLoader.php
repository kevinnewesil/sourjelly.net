<?php if(!defined("DS")) die('no direct script access');
	
	/**
	 * Sourjelly
	 */

	if(!function_exists("SjConfig")) { function SjConfig(){ return \core\build\Sourjelly::getConfig(); } }
	if(!function_exists("SjApi")) { function SjApi(){ return \core\build\Sourjelly::getApi(); } }
	if(!function_exists("SjHtml")) { function SjHtml(){ return \core\build\Sourjelly::getHtml(); } }
	if(!function_exists("SjDb")) { function SjDb(){ return \core\build\Sourjelly::GetDb(); } }

	/**
	 * Redirects
	 */

	if(!function_exists("Refresh")) { function Refresh($notice,$sort = "notice") { \core\access\Redirect::Refresh($notice,$sort); } }
	if(!function_exists("Go")) { function Go($path,$notice,$sort = "notice") { \core\access\Redirect::To($path,$notice,$sort); } }
	if(!function_exists("GoHome")) { function GoHome($notice,$sort = "notice") { \core\access\Redirect::Home($notice,$sort); } }
	if(!function_exists("GoBack")) { function GoBack($notice,$sort = "notice") { \core\access\Redirect::Back($notice,$sort); } }

	/**
	 * Session handling
	 */

	if(!function_exists("SetNotice")) { function SetNotice($notice){ $_SESSION['notice'] = $notice; }}
	if(!function_exists("SetNoticeSuccess")) { function SetNoticeSuccess($notice){ $_SESSION['notice'] = $notice; $_SESSION['notice_sort'] = 'success'; } }
	if(!function_exists("SetNoticeError")) { function SetNoticeError($notice){ $_SESSION['notice'] = $notice; $_SESSION['notice_sort'] = 'error'; } }
	if(!function_exists("SetNoticeInfo")) { function SetNoticeInfo($notice){ $_SESSION['notice'] = $notice; $_SESSION['notice_sort'] = 'info'; } }

	/**
	 * Api calls
	 */

	if(!function_exists("getApiPages")) { function getApiPages(){ return \api\Api::getPages(); } }
	if(!function_exists("getApiModules")) { function getApiModules(){ return \api\Api::getModule(); } }
	if(!function_exists("getApiSettings")) { function getApiSettings(){ return \api\Api::getSettings(); } }
	if(!function_exists("getApiThemes")) { function getApiThemes(){ return \api\Api::getThemes(); } }
	if(!function_exists("getApiUsers")) { function getApiUsers(){ return \api\Api::getUsers(); }}

	/**
	 * Template calls
	 */

	if(!function_exists("Template")) { function Template($path){ return \core\build\Template::getTemplate($path); } }
	if(!function_exists("Snippet")) { function Snippet($name, $path = NULL){ return \core\build\Template::getSnippet($name , $path); } }