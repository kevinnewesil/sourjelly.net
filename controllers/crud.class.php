<?php namespace controllers;

	/**
	* @author  Kevin Newesil <newesil.kevin@gmail.com>
	* @version  1.0
	* @package  default
	*
	* @var $crudmodel @deprecated
	* @var $link @deprecated
	*/
	class Crud
	{
		protected $crudModel;
		protected $link;

		/**
		 * @deprecated from version 1.0 > currently building 1.1
		 * Created sort of restfull constructor that checkes if there's a post, and redirects to the post_function of this class.
		 */
		public function __construct()
		{
			require(MODEL_PATH . 'crud.class.php');
			$this->crudModel = new \models\crud;

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

			$parent = '';
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

			if(!$this->checkId())
			{
				$this->retrieve();
			}
			else
			{
				$rawUrl = explode('/index.php/',$_SERVER['REQUEST_URI']);
				$parts = explode('/',$rawUrl[1]);

				$page = \api\Api::getPages() -> getPage($parts[2]);
				$menu = \api\Api::getMenuItems();

				$tmp = \core\build\Template::getTemplate('crud/update.html.tpl');
				$option = \core\build\Template::getSnippet('selectOption.html.tpl');

				$visable = $page['visable'] == '1' ? 'checked=checked' : '';

				$tmp = str_replace(array('{id}','{title}','{content}','{created_at}','','{checked_visable}','{meta_tags}','{meta_description}','{content_id}','{content_class}'),$page,$tmp);
				$placeholders = array('{optionvalue}','{optionname}','{select}',$visable);

				$options = str_replace($placeholders,array('-','Geen parent menu',''),$option);

				foreach($menu as $title => $submenu)
				{
					if(is_array($submenu) && !empty($submenu)){
						foreach($submenu as $subTitle => $submenu)
						{
							if($page[0] == $title)
								$options .= str_replace($placeholders,array($title,$title,'selected="selected"'),$option);
							else
								$options .= str_replace($placeholders,array($title,$title,''),$option);

							if($page[0] == $subTitle)
								$options .= str_replace($placeholders,array($title,$title . ' || ' . $subTitle,'selected="selected"'),$option);
							else
								$options .= str_replace($placeholders,array($title,$title . ' || ' . $subTitle,''),$option);
						}
					}
					else
					{
						if($page[0] == $title)
							$options .= str_replace($placeholders,array($title,$title,'selected="selected"'),$option);
						else
							$options .= str_replace($placeholders,array($title,$title,''),$option);
					}
				}

				$tmp = str_replace('{parent}',$options,$tmp);

				\core\build\Sourjelly::getHtml()->assign('{content}',$tmp);
			}
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
				if($this->crudModel->delete())
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
				if($this->crudModel->undoDelete())
					\core\access\Redirect::to(HOME_PATH . '/crud/deleted/?ns=controllers&path=controller_path','Page succesfully activated','success');
				else
					\core\access\Redirect::to(HOME_PATH . '/crud/deleted/?ns=controllers&path=controller_path','Something went wrong activating the page');
		}

		/**
		 * Calls for the crud model -> create function, to execute creating a new page.
		 * @see  \models\Crud -> create
		 */
		public function post_create()
		{
			if($this->crudModel->create(\core\access\Request::returnGlobalObject('post')))
				\core\access\Redirect::to(HOME_PATH . '/crud/create/?ns=controllers&path=controller_path','Page succesfully created!','success');
			else
				\core\access\Redirect::to(HOME_PATH . '/crud/create/?ns=controllers&path=controller_path','Something went wrong creating the page');
		}

		/**
		 * Parses and sets the data of a page that's going to be updated, and calls for the crud model -> update function to update the page.
		 * @see \models\Crud -> update
		 */
		public function post_update()
		{
			$rawUrl = explode('/index.php/',$_SERVER['REQUEST_URI']);
			$parts = explode('/',$rawUrl[1]);
			
			array_pop($_POST);
			$update = $_POST;
			unset($_POST);

			if(empty($update['title']) || empty($update['content']))
				\core\access\Redirect::to(HOME_PATH . '/crud/update/' . $parts[2] .'/?ns=controllers&path=controller_path','Title and/or content can not be empty.');
			
			if($this->crudModel->update($update))
				\core\access\Redirect::to(HOME_PATH . '/crud/update/?ns=controllers&path=controller_path','Page succesfully edited.','success');
			else
				\core\access\Redirect::to(HOME_PATH . '/crud/update/?ns=controllers&path=controller_path','Something went wrong updating the page.');
		}

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
				return true;
			else
				return false;
		}
	}
