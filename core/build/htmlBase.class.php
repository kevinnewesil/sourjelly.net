<?php namespace core\build; if(!defined("DS")) die('no direct script access');

	/**
	 * @author Kevin Newesil <newesil.kevin@gmail.com>
	 * @version 1.1.0.0
	 *
	 * The HtmlBase class, is a class, that renders, and parses all HTML. replaces all the placeholders to readable text for the user, and does some extra
	 * replaces so that developing in html goes way faster. as HTML is such a drag.
	 *
	 * @param $link  link to the database
	 * @param $layout  the main layout of the web page.
	 */
	final class HtmlBase
	{

		protected $link;
		public 	  $layout = NULL;

		/**
		 * the construct function checks what layout is asked for and saves the layout into the class property @param $layout.
		 * @param string  $layout  [the name of the layout that should be rendered]
		 * @param boolean $install [True if the user is new to the system and wants to isntall it.]
		 */
		final public function __construct($layout,$install = false)
		{
			$this->layout = file_get_contents(VIEWS_PATH . 'layouts' . DS . \core\build\Template::getLang() . DS . $layout . '.html.tpl');
		}

		/**
		 * [Assigns content on the main layout.]
		 * @param [string/array] $placeholder [the name(s) of the placeholder(s) on the main layout that should be replaced]
		 * @param [string/array] $replacer    [the value(s) that should replace the placeholders on the main layout.]
		 */
		final public function Assign($placeholder,$replacer,$debug = false)
		{
			return $this->layout = str_replace($placeholder,$replacer,$this->layout);
		}

		/**
		 * [Function that checks if there are any errors set (via the redirect class) and renders them to the html..]
		 * @return [bool] [if the system had error and they were replaced correctly the system returns true]
		 */
		final private function errorHandeling()
		{
			if(isset($_SESSION['notice']) && $_SESSION['notice'] != '')
			{

				if(!isset($_SESSION['notice_sort'])) $_SESSION['notice_sort'] = 'warning';

				$noticeSnippet = \Snippet($_SESSION['notice_sort'] .'.html.tpl','errors');
				$notice        = str_replace('{noticeInfo}',$_SESSION['notice'],$noticeSnippet);

				$this->layout  = str_replace('{notice}',$notice,$this->layout);

				unset($_SESSION['notice']);
				unset($_SESSION['notice_sort']);

				if(isset($_SESSION['system_warning']))
					unset($_SESSION['system_warning']);
			}
			else
				$this->layout  = str_replace('{notice}','',$this->layout);

		}

		/**
		 * [Replaces all the base paths that could be used on a page on the main layout. (for writing easier html)]
		 */
		final private function basePaths()
		{
			$this->layout = str_replace('{ajax}', AJAX_PATH , $this->layout);
			$this->layout = str_replace('{assets}', ASSETS_PATH , $this->layout);
			$this->layout = str_replace('{base}', HOME_PATH , $this->layout);
			$this->layout = str_replace('{modules}', MODULES_ASSETS_PATH , $this->layout);
		}

		/**
		 * [Checks if the user is logged in, and via that results renders the contents of the navbar.]
		 */
		final public function Login()
		{

			if(isset($_SESSION['login']) && $_SESSION['login'] != '')
			{
				$tmp = \core\build\Template::getSnippet('login.html.tpl');
				$tmp = str_replace(array('{username}','{login}'),array($_SESSION['login'],'logout'),$tmp);
				$this->Assign('{login}',$tmp);
			}
			else
			{
				$tmp = \core\build\Template::getSnippet('logout.html.tpl');
				$tmp = str_replace(array('{username}','{userid}','{login}'),array('','','login'),$tmp);
				$this->Assign('{login}',$tmp);
			}
		}

		/**
		 * Assigs all menu-items to the navbar
		 */
		final public function nav()
		{
			if(isset($_SESSION['login']) && $_SESSION['login'] != '')
			{
				$tmp              = \core\build\Template::getSnippet('nav.html.tpl');
				$dropdownTmp 	  = \core\build\Template::getSnippet('dropdownUl.html.tpl');
				$modulesListTmp   = \core\build\Template::getTemplate('module/menuItems.html.tpl');
				$modules          = \api\Api::getModules() -> getAllModules();

				$modulesListItems = '';

				foreach($modules as $module)
					$modulesListItems .= str_replace(array('{link}','{linkName}'),array('{base}/modules/settings/' . $module['id'] . '/?ns=controllers&amp;path=controller_path',$module['title']),$modulesListTmp);
				
				
				$this->Assign('{nav}',$tmp);

				if($modulesListItems != '')
					$submenu = str_replace('{listItems}', $modulesListItems, $dropdownTmp);
				else
					$submenu = str_replace('{listItems}','No items found', $dropdownTmp);

				$this->Assign('{modulesList}',$submenu,true);
			}
			else
				$this->Assign('{nav}','');
		}

		/**
		 * Renders the html of a module if a page is connected to a module(a module is connected to a page.. same diff.)
		 * @param  int 	$pageId [the id of the current page to check if it as any modules to fetch]
		 */
		final public function modules($pageId)
		{
			$modules     = \api\Api::getModules() -> getModuleByPageId($pageId);;
			$moduleClass = new \core\build\Modules($modules);
			$html        = $moduleClass -> getHtml();
			
		}

		/**
		 * this function checks the current theme, and renders it into the html so the right theme will be fetched.
		 */
		final public function Themes()
		{
			$theme = \api\Api::getThemes() -> getActiveTheme();
			$this->Assign('{curtheme}', $theme['themeName']);
		}

		/**
		 * This function is called at the very last of the system, and builds/shows the html to the user.
		 */
		final public function build()
		{
			if($this->layout != NULL)
			{
				$this->errorHandeling();
				$this->Login();
				$this->nav();
				$this->Themes();
				$settings = \core\build\Sourjelly::getApi() -> getSettings() -> getSystemSettings();

				if($settings['embeddedHtml'] == "1")
				{
					\core\build\Sourjelly::loadCompilers('embed');

					$compiler = new \core\system\EmbedCompiler;
					$this -> layout = $compiler -> decompile($this -> layout);
				}

				$this->basePaths();

				
				echo ($this->layout);
			}
			else
				die('The layout for this page could not even be found.. What have you done?!');
		}

		final public function emberCompiler($layout = null)
		{
			$settings = \core\build\Sourjelly::getApi() -> getSettings() -> getSystemSettings();

			if($settings['embeddedHtml'] === "1")
			{
				\core\build\Sourjelly::loadCompilers('embed');

				$compiler = new \core\system\EmbedCompiler;
				if($layout != null)
					$this -> layout = $compiler -> decompile($this -> layout);
				else
					return $layout = $compiler -> decompile($layout);
			}
		}
	}