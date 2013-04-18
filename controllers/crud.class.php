<?php namespace controllers;

	/**
	* @author  Kevin Newesil <newesil.kevin@gmail.com>
	* @version  1.0
	* @package  default
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

			if(isset($_POST['submit']))
			{
				$function = 'post_' . $_POST['submit'];
				$this->$function();
			}
		}

		/**
		 * Function that renders the html for creating a new page.
		 */
		public function create()
		{
			$parent    = '';
			$menuitems = \api\Api::getMenuItems();
			$selectTmp = \core\build\Template::getSnippet('selectOption.html.tpl');

			foreach($menuitems as $menuitem => $submenu)
			{
				$parent .= str_replace(
						array('{optionvalue}','{optionname}'),
						array($menuitem,$menuitem),
						$selectTmp);
			}

			$tmp = \core\build\Template::getTemplate('crud/create.html.tpl');
			$tmp = str_replace('{pagesoptions}',$parent,$tmp);

			\core\build\Sourjelly::getHtml()->assign('{content}',$tmp);
		}

		/**
		 * Functions that renders html with all non deprecated pages in a table.
		 */
		public function retrieve()
		{

			$webTable = \core\build\Template::getTemplate('crud/retrieve.html.tpl');
			$webTableRow = \core\build\Template::getTemplate('crud/retrieveRow.html.tpl');
			$placeholdersRow = array('{title}','{content}','{created_at}','{updated_at}','{parent}','{id}');

			$rows = '';

			$pages = \api\Api::getPages() -> getAllPages();

			foreach($pages as $page)
			{
				if($page[4] == '0')
						$page[4] = 'Nee';
					else
						$page[4] = 'Ja';

				$rows .= str_replace($placeholdersRow,$page,$webTableRow);
			}

			$tables = str_replace('{rows}',$rows,$webTable);
			\core\build\Sourjelly::getHtml()->assign('{content}',$tables);
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

			$page = \api\Api::getPages() -> getPage($id);
			$menu = \api\Api::getMenuItems();

			$tmp = \core\build\Template::getTemplate('crud/update.html.tpl');
			$option = \core\build\Template::getSnippet('selectOption.html.tpl');

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
					if(\api\Api::getPages() -> getIdFromTitle($title) == $page['parent'])
						$options .= str_replace($parentPlaceholders, array($title,$title,'selected="selected"'),$option);
					else
						$options .= str_replace($parentPlaceholders, array($title,$title,''),$option);

					foreach($submenu as $subtitle => $nothingYet)
						if(\api\Api::getPages() -> getIdFromTitle($subtitle) == $page['parent'])
							$options .= str_replace($parentPlaceholders, array($subtitle,$subtitle,'selected="selected"'),$option);
						else
							$options .= str_replace($parentPlaceholders, array($subtitle,$subtitle,''),$option);
				}
				else
				{
					if(\api\Api::getPages() -> getIdFromTitle($title) == $page['parent'])
						$options .= str_replace($parentPlaceholders, array($title,$title,'selected="selected"'),$option);
					else
						$options .= str_replace($parentPlaceholders, array($title,$title,''),$option);
				}
			}

			$replacers = array($page['tcp']['id'],$page['tcp']['title'],$options, $page['tc']['created_at'], $frontend, $backend,
							    $visible, $page['tcp']['metaTags'], $page['tcp']['metaDescription'],$titleVis, 
								(strpos($page['tcl']['contentTextAlign'], 'left')) ? 'checked="checked"' : '' ,
								(strpos($page['tcl']['contentTextAlign'], 'right')) ? 'checked="checked"' : '' , 
								(strpos($page['tcl']['contentTextAlign'], 'center')) ? 'checked="checked"' : '' ,
								(strpos($page['tcl']['contentTextAlign'], 'justify')) ? 'checked="checked"' : '' ,
								(strpos($page['tcl']['titleTextAlign'], 'left')) ? 'checked="checked"' : '' ,
								(strpos($page['tcl']['titleTextAlign'], 'right')) ? 'checked="checked"' : '' , 
								(strpos($page['tcl']['titleTextAlign'], 'center')) ? 'checked="checked"' : '' ,
								(strpos($page['tcl']['titleTextAlign'], 'justify')) ? 'checked="checked"' : '' ,
								$page['tcl']['fontSize'], $page['tcp']['contentId'], $page['tcp']['contentClass'], $page['tcp']['content']);
			
			$tmp = str_replace($placeholders,$replacers,$tmp);

			\core\build\Sourjelly::getHtml()->assign('{content}',$tmp);
		}

		/**
		 * function that checks the ID of an page, and redirects to the crud model to delete the page
		 * @see  \model\Crud
		 */
		public function delete()
		{
			if(!$this->checkId())
				$this->retrieve();
			else
				if($this-> _model -> delete())
					\core\access\Redirect::to(HOME_PATH . '/crud/retrieve/?ns=controllers&path=controller_path','Page succesfully deleted','success');
				else
					\core\access\Redirect::to(HOME_PATH . '/crud/retrieve/?ns=controllers&path=controller_path','Something went wrong deleting the page');
		}

		/**
		 * Function that renders the HTML so that the user can order their menu items. in which order they're shown to visitors.
		 */
		public function order()
		{

			$tpl = \core\build\Template::getTemplate('crud/order.html.tpl');
			$itemstpl = \core\build\Template::getTemplate('crud/items.html.tpl');
			$submenutpl = \core\build\Template::getTemplate('crud/submenu.html.tpl');
			$subitemstpl = \core\build\Template::getTemplate('crud/subitems.html.tpl');

			$menu = \api\Api::getMenuItems();
			$items = '';

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

			\core\build\Sourjelly::getHtml()->assign('{content}',$tpl);
		}

		/**
		 * Function that renders the HTML with data of all the pages which have a depracted flag and thus are deleted.
		 */
		public function deleted()
		{
			$webTable = \core\build\Template::getTemplate('crud/deleted.html.tpl');
			$webTableRow = \core\build\Template::getTemplate('crud/deletedRow.html.tpl');
			$placeholdersRow = array('{title}','{content}','{created_at}','{updated_at}','{parent}','{id}');

			$rows = '';

			$pages = \api\Api::getPages() -> getDeletedPages();

			foreach($pages as $page)
			{
				if($page['has_parent'] == '0')
						$page['has_parent'] = 'Nee';
					else
						$page['has_parent'] = 'Ja';

				$replacers = array($page['title'],$page['content'],$page['created_at'],$page['updated_at'],$page['has_parent'],$page['id']);
				$rows .= str_replace($placeholdersRow,$replacers,$webTableRow);
			}

			$tables = str_replace('{rows}',$rows,$webTable);
			\core\build\Sourjelly::getHtml()->assign('{content}',$tables);
		}

		/**
		 * Function that calls for the crud model to unset a deprecated flag on a page.
		 * @see  \models\Crud
		 */
		public function undoDelete()
		{
			if(!$this->checkId())
				$this->retrieve();
			else
				if($this-> _model ->undoDelete())
					\core\access\Redirect::to(HOME_PATH . '/crud/deleted/?ns=controllers&path=controller_path','Page succesfully activated','success');
				else
					\core\access\Redirect::to(HOME_PATH . '/crud/deleted/?ns=controllers&path=controller_path','Something went wrong activating the page');
		}

		/**
		 * Calls for the crud model -> create function, to execute creating a new page.
		 * @see  \models\Crud -> create
		 */
		public function post_create() { if($this-> _model -> create(\core\access\Request::returnGlobalObject('post'))) \SetNotice('Page succesfully created'); }

		/**
		 * Parses and sets the data of a page that's going to be updated, and calls for the crud model -> update function to update the page.
		 * @see \models\Crud -> update
		 */
		public function post_update() { if($this-> _model -> update(\core\access\Request::returnGlobalObject('post'))) \SetNotice('Page updated successfully'); }

		/**
		 * 
		 */
		public function upload()
		{
			$tmp = \core\build\Template::getTemplate('crud/images/upload.html.tpl');

			\core\build\Sourjelly::getHtml()->assign('{content}',$tmp);
		}

        public function images()
        {

        }


        public function cropper()
        {

        }


		/**
		 * Private function that splits the URL to check if there's a numeric part in the url, which can be used as the ID of a page for
		 * retrieving, updating, deleting, and undo deleting.
		 * @return boolean true if the url part is numeric and in the right position, false otherwhise
		 */
		protected function checkId()
		{
			$rawUrl = explode('/index.php/',$_SERVER['REQUEST_URI']);
			$parts = explode('/',$rawUrl[1]);

			if(is_numeric($parts[2]))
				return $parts[2];
			else
				return false;
		}
	}
