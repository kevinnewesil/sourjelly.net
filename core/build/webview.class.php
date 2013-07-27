<?php namespace core\build; if(!defined("DS")) die('no direct script access!');
	
	/**
	 * @author  kevin Newesil <newesil.kevin@gmail.com>
	 * @version 1.0
	 * 
	 * @param $_page the name/id of the current page the visitor is on.
	 */
	final class Webview
	{
		/**
		 * Pre renders all the data that is needed to get the info for the page the visitor is currently on.
		 */
		
		private $_htmlType;
		private $_doctype;

		private $_head;
		

		final public function __construct($htmlType = NULL)
		{

			if($htmlType == NULL)
				$this -> _htmlType = "html5";

			$this -> _doctype = \core\__H(\getApiLayout() -> getDoctype($this -> _htmlType),0);
			$this -> _head    = $this -> head();

			$this -> build();
			exit();
		}

		final private function head()
		{
			// Get html head and assign attribute values
			$head  = \getApiLayout() -> getHead( $this -> getHeadAttr() );
			$head .= \getApiLayout() -> getTitle( $this -> getTitleAttr() );
			$head .= \getApiLayout() -> getBase( $this -> getBaseAttr() );

			foreach($this -> getHeadLinks() as $linkAttr )
				$head .= \getApiLayout() -> getLink( $linkAttr );

			foreach($this -> getHeadMeta() as $metaAttr)
				$head .= \getApiLayout() -> getMeta($metaAttr);

			foreach($this -> getHeadScript() as $scriptAttr)
				$head .= \getApiLayout() -> getScript($scriptAttr);

			$head .= \getApiLayout() -> getNoScript();

			$head .= \core\__H("/head",1);

			return $head;
		}

		// Html head only has profile attr, doesn't work on html 5, return currentl domain as value
		final private function getHeadAttr()
		{
			return $this -> _htmlType !== "html5" ? \core\Helpers::getDomain() : "" ;
		}

		final private function getTitleAttr()
		{
			# Return all attributes as hard coded for now
		}

		final private function getBaseAttr()
		{
			#retun all attributes as hardcoded for now
			return array(\core\Helpers::getDomain(), "_SELF");
		}

		final private function getHeadLinks()
		{
			return array(
				array(
					$this -> _htmlType !== "html" ? "UTF-8" : "", # charset if not html 5
					ASSETS_PATH . "css" . DS . "style.css", # href
					"","", # Href lang and media empty for now
					"stylesheet", #rel
					"","","", # rev, sizes and target empty for now
					"text/css", #type attribute
				),
			);
		}

		final private function getHeadMeta()
		{
			return array(
				array('','test','','application-name'),
				array('','Alain en Kevin','','author'),
				array('','test','','description'),
				array('','test','','generator'),
				array('','test','','keywords'),
				
				($this -> _htmlType == "html5") ? array('UTF-8','text/html; charset=UTF-8','content-type') : "",
			);
		}

		final private function getHeadScript()
		{
			return array();
		}

		final private function build()
		{
			echo $this -> _doctype;

			echo \core\__H("html",0);

			echo $this -> _head;


			#hardcoded for test
			
			echo \core\__H("body",1);

			echo \core\__H("div");

			echo \core\__H("p",3);

			echo \core\__T(4) . 'lorem ipsum shit' . "\r\n";

			echo \core\__H("/p",3);

			echo \core\__H("/div");

			echo \core\__H("/body",1);


			echo \core\__H("/html",0);

			exit();
		}

		// final public function __construct()
		// {
			
		// 	$rawUrl = $_SERVER['REQUEST_URI'];
		// 	$urlSplit = explode('/',$rawUrl);
			
		// 	$this->_page = ($urlSplit[count($urlSplit)-1] == '' || $urlSplit[count($urlSplit)-1] == 'index.php') ? 'empty-index' : $urlSplit[count($urlSplit)-1];
		// 	$this->_page = str_replace('_',' ',$this->_page);
			
		// 	$this->buildPage();
		// }

		// /**
		//  * Renders a lot of items, and dynamicaly builds up the page for the user.
		//  */
		// final protected function buildPage()
		// {	
		// 	$menuArr          = \api\Api::getMenuItems();
		// 	$menu             = '';

		// 	if($this -> _page == 'empty-index')
		// 		$pageInfo     = \getApiPages() -> getFirstPage();
		// 	else
		// 		$pageInfo     = \getapiPages() -> getPage(0,$this->_page);

		// 	$placeholders     = array('{title}','{content}','{navigation}','{metaTags}','{metaDescription}','{pageAuthor}','{contentClasses}','{contentIds}',
		// 							  '{contentTextAlign}','{titleVisibility}','{titleTextAlign}','{titleFontSize}',
		// 							 );
		// 	$menuPlaceholders = array('{liClass}','{link}','{aClass}','{data-toggle}','{tab-index}','{linkName}','{submenu}','{caret}');
			
		// 	$items            = \Snippet('menuItems.tpl');
		// 	$subnav           = \Snippet('submenu.tpl');
		// 	$caret            = \Snippet('caret.tpl');
		// 	$divider          = \Snippet('divider.tpl');

		// 	foreach($menuArr as $menuTitle => $submenu)
		// 	{
		// 		$menuLink = str_replace(' ' , '_' , $menuTitle);

		// 		if(!empty($submenu))
		// 		{	
		// 			$menu2 = str_replace(
		// 				$menuPlaceholders,
		// 				array('',HOME_PATH . '/' . $menuLink , '','','',$menuTitle,''),
		// 				$items
		// 			);

		// 			$menu2 .= $divider;

		// 			foreach($submenu as $subtitle => $submenu2)
		// 			{
		// 				$subLink = str_replace(' ' , '_' , $subtitle);

		// 				$menu2 .= str_replace(
		// 					$menuPlaceholders,
		// 					array('',HOME_PATH . '/' . $subLink,'','','-1',$subtitle,'',''),
		// 					$items
		// 				);
		// 			}

		// 			$menu2 = str_replace('{subitems}',$menu2,$subnav);

		// 			$menu .= str_replace(
		// 				$menuPlaceholders,
		// 				array('dropdown','#','dropdown-toggle','dropdown','',$menuTitle,$menu2,$caret),
		// 				$items
		// 			);

		// 		}
		// 		else
		// 		{
		// 			$menu .= str_replace(
		// 				$menuPlaceholders,
		// 				array('',HOME_PATH . '/' . $menuLink , '','','',$menuTitle,''),
		// 				$items
		// 			);
		// 		}
		// 	}

		// 	if(empty($pageInfo))
		// 	{
		// 		$page = \Template('error/404.tpl');
		// 		$replacers = array(
		// 			'This is not the page you are looking for!' , $page , $menu
		// 		);
		// 	}
		// 	else
		// 	{
		// 		$pageInfo['tcp']['title'] = $pageInfo['tcl']['titleVisibility'] == '1' ? '<h2>' . $pageInfo['tcp']['title'] . '</h2>' : '';

		// 		$replacers = array( $pageInfo['tcp']['title'], stripslashes(html_entity_decode($pageInfo['tcp']['content'])),$menu,
		// 							$pageInfo['tcp']['metaTags'],$pageInfo['tcp']['metaDescription'],'Author',
		// 							$pageInfo['tcp']['contentClass'] , $pageInfo['tcp']['contentId'], 
		// 							$pageInfo['tcl']['contentTextAlign'],$pageInfo['tcl']['titleVisibility'],$pageInfo['tcl']['titleTextAlign'],
		// 							$pageInfo['tcl']['titleFontSize'],
		// 						  );
		// 	}

		// 	$menuSettings = \GetApiLayoutNavigation() -> getPrimaryLayoutSettings();

		// 	$replacers[2] = str_replace(array('{pages}','{animation-direction}'),array($menu,$menuSettings['slideInAnimationStyle']),\Snippet('parts/navbar-fixed-top.html.tpl'));

		// 	$file = \Snippet('javascript_elements/' . $menuSettings['jsFunction'] . '-' . $menuSettings[$menuSettings['jsFunction'] . 'Trigger'] . '.html.tpl');

		// 	$replacers[2] = ($menuSettings['dynamicNavigation'] == '1') ? str_replace(array('{nav}','{toggle-box-text}'), array($replacers[2],$menuSettings['toggleTriggerText']) , $file) : $replacers[2] ;

		// 	$pageId = \api\Api::getPages() -> getIdFromTitle($this->_page);
		// 	\core\build\Sourjelly::getHtml()->modules($pageId);
		// 	\core\build\Sourjelly::getHtml()->assign($placeholders,$replacers);
		
		// }

		// final protected function buildMenu()
		// {

		// }
	}
