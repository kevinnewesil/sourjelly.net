<?php namespace models;

	/** 
	* @author  Kevin Newesil <newesil.kevin@gmail.com>
	* @version  1.0 
	* @package  default
	* 
	*/
	final class Crud extends \core\system\Model
	{

		/**
		 * Calls for the Main controller to execute the common functions etc.
		 */
		final public function __construct()
		{
			parent::__construct();
		}

		/**
		 * checks if the values are correct and inserts data for a webpage into the database.
		 * @param  object $create the values of the create request.
		 * @return boolean       return true if row was inserted correctly.
		 */
		final public function create($quick = false)
		{

			if($quick !== false)
				$create = $quick;
			else
				$create = $this -> _post;

			// Check if data exists, if not, refresh with error message.
			if(empty($create->title) || empty($create->content))
				\core\access\Redirect::Refresh('Please fill in atleast a title, and some content!');

			// Check if it's a submenu item or not. if not set to 0, else set to 1 and get parent id.
			if($create -> parent == '-')
			{
				$create -> hasParent = '0';
				$create -> parentId = '0';
			}
			else
			{
				$create -> hasParent = '1';
				// Connect to local api to fetch parent ID.
				$parentContent = \api\Api::getPages() -> getPage('',$create->parent);
				$create -> parentId = $parentContent['tcp']['id'];
			}
			// Pre-define the basic content table variables.
			$table_content_values = array(
				(isset($create -> activeFrontEnd) && $create -> activeFrontEnd == 'on') ? '1' : '0',
				(isset($create -> activeBackEnd) && $create -> activeBackEnd == 'on') ? '1' : '0',
				(isset($create -> visible) && $create -> visible == 'on') ? '1' : '0',
				date('Y-m-d H:i:s',strtotime("now")), '1' , '0'
			);

			// Execute this request first for getting a content Id.
			if(!\api\Api::insertInto('table_content',array('front','back','menuVisibility','created_at','public','deprecated'),$table_content_values,'iiisii'))
				\core\access\Redirect::Refresh('Could not create main content layout');

			// Fetch the content ID for relations
			$contentId = \api\Api::getLastInsertId();

			if($contentId !== '0')
			{

				// Define the rows of the table that should be inserted into, and set those variables
				$table_content_properties_rows   = array('cId','title','content','hasParent','parentId','menuOrder','metaTags','metaDescription','contentClass','contentId');
				$table_content_properties_values = array($contentId,$create -> title, $create -> content, $create -> hasParent,$create-> parentId , '0' ,
														 $create -> metaTags,$create -> metaDescription, $create -> contentClass,$create -> contentId );

				// Define the rows and data for the content layout
				$table_content_layout_rows   = array('cId','contentTextAlign','titleTextAlign','titleFontSize','titleVisibility');
				$table_content_layout_values = array($contentId, $create -> contentTextAlignment , $create -> titleTextAlignment , $create -> titleFontSize ,
												     (isset($create -> showPagetitle) && $create -> showPagetitle == 'on') ? '1' : '0' );

				// Make an internal API request for inserting data into the database.
				if(!\api\Api::insertInto('table_content_properties',$table_content_properties_rows,$table_content_properties_values,'issiiissss')) return false;
				if(!\api\Api::insertInto('table_content_layout',$table_content_layout_rows,$table_content_layout_values,'issii')) return false;

				// hardcoded public for now.. Need to edit this later for custom level premission of content.
				if(!\api\Api::insertInto('table_content_roles',array('cid','roleId'),array($contentId,'1'),'ii')) return false;

				// Return true on success if not quick
				if($quick === false);
					\setNoticeSuccess("Page created successfully");

				return true;
			}

			return false;
		}

		/**
		 * Checks the values of the post, parses the values, gets the right page, and updates the row in the table.
		 * @param  array $update the values that should be updated
		 * @return boolean       return true if update was succesfull
		 */
		final public function update()
		{
			$update = $this -> _post;

			// Check if parent is set, if not leave empty, else change to proper page Id
			if($update -> parent == '-')
			{
				$update -> hasParent = '0';
				$update -> parentId = '0';
			}
			else
			{
				$update -> hasParent = '1';
				// Connect to local API to fetch parent content ID.
				$parentContent = \api\Api::getPages() -> getPage('',$update -> parent);
				$update -> parentId = $parentContent['tcp']['id'];
			}

			// Define the table rows
			$table_content_rows            = array('front','back','menuVisibility','public');
			$table_content_properties_rows = array('cId','title','content','hasParent','parentId','metaTags','metaDescription','contentClass','contentId');
			$table_content_layout_rows     = array('cId','contentTextAlign','titleTextAlign','titleFontSize','titleVisibility');

			// Pre-define the basic content table variables.
			$table_content_values = array(
				(isset($update -> activeFrontEnd) && $update -> activeFrontEnd == 'on') ? '1' : '0',
				(isset($update -> activeBackEnd) && $update -> activeBackEnd == 'on') ? '1' : '0',
				(isset($update -> visible) && $update -> visible == 'on') ? '1' : '0',
				'1'
			);

			$table_content_properties_values = array($this -> getId() ,$update -> title, $update -> content, $update -> hasParent,$update-> parentId ,
													 $update -> metaTags,$update -> metaDescription, $update -> contentClass,$this -> getId() );

			$table_content_layout_values = array($this -> getId() , $update -> contentTextAlign , $update -> titleTextAlign , $update -> fontSize ,
											     (isset($update -> showPagetitle) && $update -> showPagetitle == 'on') ? '1' : '0' );
			
			// Update the table, and return true on success.
			\api\Api::updateTable('table_content',$table_content_rows,$table_content_values,array('id' => $this->getId()));
			\api\Api::updateTable('table_content_properties',$table_content_properties_rows,$table_content_properties_values,array('id' => $this->getId()));
			\api\Api::updateTable('table_content_layout',$table_content_layout_rows,$table_content_layout_values,array('id' => $this->getId()));

			\SetNoticeSuccess("Page updated successfully");
			return true;
		}

		/**
		 * Gets the page that is reqested, and places a deprecated flag on it.
		 * @return boolean return true if deprecated flag was placed
		 */
		final public function delete()
		{
			\api\Api::updateTable('table_content',array('deprecated'),array('1'),array('id' => $this -> getId())) == true ? 
				\Go(HOME_PATH . "/crud/retrieve/?ns=controllers&path=controller_path", "page deleted successfully",'success') 
			:
				\Go(HOME_PATH . "/crud/retrieve/?ns=controllers&path=controller_path", 'error deleting page');
		}

		/**
		 * Gets the requested page details, and removes the deprecated flag from that page.
		 * @return boolean return true if deprecated flag was removes succesfully
		 */
		final public function undoDelete()
		{
			return \api\Api::updateTable('table_content',array('deprecated'),array('0'),array('id' => $this -> getId())) == true ?
				\Go(HOME_PATH . "/crud/deleted/?ns=controllers&path=controller_path" , "page returned to normal",'success')
			:
				\Go(HOME_PATH . "/crud/deleted/?ns=controllers&path=controller_path" , 'error restoring page');
		}

		/**
		 * gets the ID of the page that should be edited.
		 * @return boolean return false if the ID wasn't a valid numeric ID.
		 */
		final protected function getId()
		{
			//Read the url and split it. check if there's an ID on the right place and if it's numeric
			$rawUrl = explode('/index.php/',$_SERVER['REQUEST_URI']);
			$parts = explode('/',$rawUrl[1]);
			
			return is_numeric($parts[2]) ? $parts[2] : NULL ;
		}

		final public function createPageQuick($title,$content)
		{
			$data = new \stdClass();
			
			$data -> front = "on";
			$data -> back = "0";
			$data -> menuVisibility = "on";
			$data -> created_at = date('Y-m-d h:I:s');
			$data -> public = "1";
			$data -> deprecated = "0";
			$data -> title = $title;
			$data -> content = $content;
			$data -> parent = "-";
			$data -> parentId = "0";
			$data -> metaTags = "";
			$data -> metaDescription = "";
			$data -> contentClass = "";
			$data -> contentId = "";
			$data -> contentTextAlignment = "left";
			$data -> titleTextAlignment = "left";
			$data -> titleFontSize = "";
			$data -> titleVisibility = "";

			return $this -> create($data);
		}
	}
