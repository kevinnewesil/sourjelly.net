<?php namespace controllers; if(!defined("DS")) die('no direct script access!');

	/**
	* @author  Kevin Newesil <newesil.kevin@gmail.com>
	* @version  1.0
	* @package  controller
	*
	*/
	class Crud extends \core\system\Controller
	{
		/**
		 * Created sort of restfull constructor that checkes if there's a post, and redirects to the post_function of this class.
		 */
		public function __construct()
		{
			parent::__construct();

			if(isset($this -> _post -> submit)) $this -> _model -> {$this -> _post -> submit}();
		}

		/**
		 * Function that renders the html for creating a new page.
		 */
		public function create()
		{
			$parent    = '';
			$tmp       = \Template('crud/create.html.tpl');
			$selectTmp = \Snippet('selectOption.html.tpl');

			foreach(\api\Api::getMenuItems() as $menuitem => $submenu) $parent .= str_replace( array('{optionvalue}','{optionname}'), array($menuitem,$menuitem), $selectTmp);

			\SjHtml() -> assign('{content}' , str_replace('{pagesoptions}',$parent,$tmp) );
		}

		/**
		 * Functions that renders html with all non deprecated pages in a table.
		 */
		public function retrieve()
		{

			$webTable        = \Template('crud/retrieve.html.tpl');
			$webTableRow     = \Template('crud/retrieveRow.html.tpl');

			$placeholdersRow = array('{title}','{content}','{created_at}','{updated_at}','{parent}','{id}');
			$rows            = '';

			foreach(\getApiPages() -> getAllPages() as $page)
			{
				$page[4] = $page[4] == '0' ? 'Nee' : 'Ja';
				$page[1] = stripslashes(html_entity_decode($page[1]));

				$rows .= str_replace($placeholdersRow,$page,$webTableRow);
			}

			\SjHtml() -> assign('{content}',  str_replace('{rows}',$rows,$webTable) );
		}

		/**
		 * Function that renders page info via an page Id for updating the information of the page.
		 */
		public function update()
		{

			if(!$id = $this->checkId())
			{
				$this->retrieve();
				return 0;
			}

			$page   = \getApiPages() -> getPage($id);
			$menu   = \api\Api::getMenuItems();
			
			$tmp    = \Template('crud/update.html.tpl');
			$option = \Snippet('selectOption.html.tpl');

			// Clean all the data.
			$frontend = $page['tc']['front'] == '1' ? 'checked="checked"' : '';
			$backend  = $page['tc']['back'] == '1' ? 'checked="checked"' : '';
			$visible  = $page['tc']['menuVisibility'] == '1' ? 'checked="checked"' : '';
			$titleVis = $page['tcl']['titleVisibility'] == '1' ? 'checked="checked"' : '';


			$placeholders = array('{id}','{title}','{parent}','{created_at}','{frontend_checked}','{backend_checked}','{checked_visible}',
								  '{meta_tags}','{meta_description}','{pagetitle_checked}','{contentAlignleft_selected}','{contentAlignright_selected}',
								  '{contentAligncenter_selected}','{contentAlignjustify_selected}','{titleAlignleft_selected}','{titleAlignright_selected}',
								  '{titleAligncenter_selected}','{titleAlignjustify_selected}',
								  '{fontsize}','{content_id}','{content_class}','{content}');

			$parentPlaceholders = array('{optionvalue}','{optionname}','{select}',$visible);

			// Pre define the options variable and set the first option to no parent menu selected.
			$options = str_replace($parentPlaceholders,array('-','Geen parent menu',''),$option);

			foreach($menu as $title => $submenu)
			{
				if(is_array($submenu) && !empty($submenu))
				{
					if(\getApiPages() -> getIdFromTitle($title) == $page['tcp']['parentId'])
						$options .= str_replace($parentPlaceholders, array($title,$title,'selected="selected"'),$option);
					else
						$options .= str_replace($parentPlaceholders, array($title,$title,''),$option);

					foreach($submenu as $subtitle => $nothingYet)
						if(\getApiPages() -> getIdFromTitle($subtitle) == $page['tcp']['parentId'])
							$options .= str_replace($parentPlaceholders, array($subtitle,$subtitle,'selected="selected"'),$option);
						else
							$options .= str_replace($parentPlaceholders, array($subtitle,$subtitle,''),$option);
				}
				else
				{
					if(\api\Api::getPages() -> getIdFromTitle($title) == $page['tcp']['parentId'])
						$options .= str_replace($parentPlaceholders, array($title,$title,'selected="selected"'),$option);
					else
						$options .= str_replace($parentPlaceholders, array($title,$title,''),$option);
				}
			}

			$replacers = array($page['tcp']['id'],$page['tcp']['title'],$options, $page['tc']['created_at'], $frontend, $backend,
						     	$visible, $page['tcp']['metaTags'], $page['tcp']['metaDescription'],$titleVis, 
								(strpos($page['tcl']['contentTextAlign'], 'left') !== false ) ? 'selected="selected"' : '' ,
								(strpos($page['tcl']['contentTextAlign'], 'right') !== false ) ? 'selected="selected"' : '' , 
								(strpos($page['tcl']['contentTextAlign'], 'center') !== false ) ? 'selected="selected"' : '' ,
								(strpos($page['tcl']['contentTextAlign'], 'justify') !== false ) ? 'selected="selected"' : '' ,
								(strpos($page['tcl']['titleTextAlign'], 'left') !== false ) ? 'selected="selected"' : '' ,
								(strpos($page['tcl']['titleTextAlign'], 'right') !== false ) ? 'selected="selected"' : '' , 
								(strpos($page['tcl']['titleTextAlign'], 'center') !== false ) ? 'selected="selected"' : '' ,
								(strpos($page['tcl']['titleTextAlign'], 'justify') !== false ) ? 'selected="selected"' : '' ,
								$page['tcl']['titleFontSize'], $page['tcp']['contentId'], $page['tcp']['contentClass'], 
								stripslashes(html_entity_decode($page['tcp']['content']))
						    );
			
			$tmp = str_replace($placeholders,$replacers,$tmp);
			\SjHtml() -> assign('{content}',$tmp);
		}

		/**
		 * Function that renders the HTML so that the user can order their menu items. in which order they're shown to visitors.
		 */
		public function order()
		{

			$tpl         = \Template('crud/order.html.tpl');
			$itemstpl    = \Template('crud/items.html.tpl');
			$submenutpl  = \Template('crud/submenu.html.tpl');
			$subitemstpl = \Template('crud/subitems.html.tpl');
			
			$menu        = \api\Api::getMenuItems();
			$items       = '';

			foreach($menu as $title => $submenu)
			{
				$subitems = '';

				if(is_array($submenu) && !empty($submenu))
				{
					foreach($submenu as $subtitle => $subsubmenu)
					{
						$subitems .= str_replace(array('{item}','{name}') , array($subtitle,$subtitle) , $subitemstpl);
					}
					$submenu = str_replace('{subitems}',$subitems,$submenutpl);

					$items .= str_replace(array('{item}','{name}') , array($title . $submenu ,$title),$itemstpl);
				}
				else
					$items .= str_replace(array('{item}','{name}') , array($title,$title),$itemstpl);
			}

			$tpl = str_replace('{items}', $items, $tpl);
			\SjHtml() -> assign('{content}',$tpl);
		}

		/**
		 * Function that renders the HTML with data of all the pages which have a depracted flag and thus are deleted.
		 */
		public function deleted()
		{
			$webTable        = \Template('crud/deleted.html.tpl');
			$webTableRow     = \Template('crud/deletedRow.html.tpl');
			$placeholdersRow = array('{title}','{content}','{created_at}','{updated_at}','{parent}','{id}');
			$pages           = \getApiPages() -> getDeletedPages();
			$rows            = '';

			foreach($pages as $page)
			{
				if($page['hasParent'] == '0')
						$page['hasParent'] = 'Nee';
					else
						$page['hasParent'] = 'Ja';

				$replacers = array($page['title'],html_entity_decode($page['content']),$page['created_at'],$page['updated_at'],$page['hasParent'],$page['id']);
				$rows .= str_replace($placeholdersRow,$replacers,$webTableRow);
			}

			$tables = str_replace('{rows}',$rows,$webTable);
			\SjHtml() -> assign('{content}',$tables);
		}

		/**
		 * function that checks the ID of an page, and redirects to the crud model to delete the page
		 * @see  \model\Crud
		 */
		public function delete() { $this-> _model -> delete(); }


		/**
		 * Function that calls for the crud model to unset a deprecated flag on a page.
		 * @see \models\Crud
		 */
		public function undoDelete() { $this-> _model ->undoDelete(); }

		/**
		 * Loads the template file and makes it possible to upload (multiple) image(s) to server. easy as click 'nd drag. handled by javascript/ajax.
		 */
		public function upload() { \SjHtml()->assign('{content}', \Template('crud/images/upload.html.tpl')); }

		public function images() { \SjHtml() -> assign('{content}', \Template('crud/images/overview.html.tpl')); }


		public function cropper()
		{

		}
	}
