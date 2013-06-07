<?php if(!defined("DS")) die('no direct script access');
	
	/**
	 * Sourjelly
	 */

	if(!function_exists("SjConfig")) { function SjConfig(){ return \core\build\Sourjelly::getConfig(); } }
	if(!function_exists("SjApi")) { function SjApi(){ return \core\build\Sourjelly::getApi(); } }
	if(!function_exists("SjHtml")) { function SjHtml(){ return \core\build\Sourjelly::getHtml(); } }
	if(!function_exists("SjDb")) { function SjDb(){ return \core\build\Sourjelly::GetDb(); } }

	/**
	 * Super globals
	 */

	if(!function_exists("Post")) { function Post() { return \core\build\Sourjelly::getPost(); } }
	if(!function_exists("Get")) { function Get() { return \core\build\Sourjelly::getGet(); } }

	/**
	 * Redirects
	 */

	if(!function_exists("Refresh")) { function Refresh($notice,$sort = "warning") { \core\access\Redirect::Refresh($notice,$sort); } }
	if(!function_exists("Go")) { function Go($path,$notice,$sort = "warning") { \core\access\Redirect::To($path,$notice,$sort); } }
	if(!function_exists("GoHome")) { function GoHome($notice,$sort = "warning") { \core\access\Redirect::Home($notice,$sort); } }
	if(!function_exists("GoBack")) { function GoBack($notice,$sort = "warning") { \core\access\Redirect::Back($notice,$sort); } }

	/**
	 * Session handling
	 */

	if(!function_exists("SetNotice")) { function SetNotice($notice){ $_SESSION['notice'] = $notice; $_SESSION['notice_sort'] = 'warning';}}
	if(!function_exists("SetNoticeSuccess")) { function SetNoticeSuccess($notice){ $_SESSION['notice'] = $notice; $_SESSION['notice_sort'] = 'success'; } }
	if(!function_exists("SetNoticeError")) { function SetNoticeError($notice){ $_SESSION['notice'] = $notice; $_SESSION['notice_sort'] = 'error'; } }
	if(!function_exists("SetNoticeInfo")) { function SetNoticeInfo($notice){ $_SESSION['notice'] = $notice; $_SESSION['notice_sort'] = 'info'; } }
	if(!function_exists("SetNoticeNoModules")) { function SetNoticeNoModules($notice){ $_SESSION['notice'] = $notice; $_SESSION['notice_sort'] = 'no-modules'; } }

	/**
	 * Api calls
	 */

	if(!function_exists("getApiPages")) { function getApiPages(){ return \api\Api::getPages(); } }
	if(!function_exists("getApiModules")) { function getApiModules(){ return \api\Api::getModule(); } }
	if(!function_exists("getApiSettings")) { function getApiSettings(){ return \api\Api::getSettings(); } }
	if(!function_exists("getApiThemes")) { function getApiThemes(){ return \api\Api::getThemes(); } }
	if(!function_exists("getApiUsers")) { function getApiUsers(){ return \api\Api::getUsers(); }}
	if(!function_exists("getApiLayout")) { function getApiLayout(){ return \api\Api::getLayout(); }}

	if(!function_exists("getApiLayoutNavigation")) { function getApiLayoutNavigation(){ return \api\Api::getLayout() -> getNavigation(); }}
	if(!function_exists("getApiLayoutHeader")) { function getApiLayoutHeader(){ return \api\Api::getLayout() -> getHeader(); }}
	if(!function_exists("getApiLayoutFooter")) { function getApiLayoutFooter(){ return \api\Api::getLayout() -> getFooter(); }}
	if(!function_exists("getApiLayoutContent")) { function getApiLayoutContent(){ return \api\Api::getLayout() -> getContent(); }}

	if(!function_exists("Insert")) { function Insert($table,$columns,$values,$types,$debug = false){ return \api\Api::insertInto($table,$columns,$values,$types,$debug); } }
	if(!function_exists("Update")) { function Update($table,$columns,$values,$where,$ajax = false){ return \api\Api::updateTable($table,$columns,$values,$where,$ajax); } }

	/**
	 * Template calls
	 */

	if(!function_exists("Template")) { function Template($path){ return \core\build\Template::getTemplate($path); } }
	if(!function_exists("Snippet")) { function Snippet($name, $path = NULL){ return \core\build\Template::getSnippet($name , $path); } }

