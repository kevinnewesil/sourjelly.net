<?php namespace models;

	/** 
	* @author  Kevin Newesil <newesil.kevin@gmail.com>
	* @version  1.0 
	* @package  default
	* 
	*/
	class Crud extends \core\system\Model
	{

		/**
		 * Calls for the Main controller to execute the common functions etc.
		 */
		public function __construct()
		{
			parent::__construct();
		}

		/**
		 * checks if the values are correct and inserts data for a webpage into the database.
		 * @param  object $create the values of the create request.
		 * @return boolean       return true if row was inserted correctly.
		 */
		public function create($create)
		{
			// Check if data exists, if not, redirect home with error message.
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
				$create -> parentId = $parentContent[0];
			}
			// Pre-define the basic content table variables.
			$table_content_values = array(
				(isset($create -> activeFrontEnd) && $create -> activeFrontEnd == 'on') ? '1' : '0',
				(isset($create -> activeBackEnd) && $create -> activeBackEnd == 'on') ? '1' : '0',
				(isset($create -> visible) && $create -> visible == 'on') ? '1' : '0',
				@date('Y-m-d H:i:s'), '1'
			);

			// Execute this request first for getting a content Id.
			if(!\api\Api::insertInto('table_content',array('front','back','menuVisibility','created_at','public'),$table_content_values,'iiiis'))
				return false;

			// Fetch the content ID for relations
			$contentId = \api\Api::getLastInsertId();
			
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

			// Return true on success
			return true;
		}

		/**
		 * Checks the values of the post, parses the values, gets the right page, and updates the row in the table.
		 * @param  array $update the values that should be updated
		 * @return boolean       return true if update was succesfull
		 */
		public function update($update)
		{
			die(var_dump($update));
			// Check if parent is set, if not leave empty, else change to proper page Id
			if($update -> parent == '-')
			{
				$update -> hasParent = '0';
				$update -> parentId = '0';
			}
			else
			{
				$update -> has_parent = '1';
				// Connect to local API to fetch parent content ID.
				$parentContent = \api\Api::getPages() -> getPage('',$parent);
				$update -> parentId = $parentContent[0];
			}

			// Set a check on the visability of a page, if it's set and value is on, set on 1, else set on 0
			$update['visible']    = isset($visible) && $visible == 'on' ? '1' : '0';

			// Unset the weird order key for not having to hack into the array..
			unset($update['parent']);
			
			// Set the rows that need to be updated.
			$rows = array('title','meta_tags','meta_description','content_id','content_class','content','has_parent','parent_id','visible','updated_at');

			// Update the table, and return true on success.
			return \api\Api::updateTable('table_content',$rows,$update,array('id' => $this->getId()));
		}

		/**
		 * Gets the page that is reqested, and places a deprecated flag on it.
		 * @return boolean return true if deprecated flag was placed
		 */
		public function delete()
		{
			// Update the table to set a deprecated flag on the right row.
			return \api\Api::updateTable('table_content',array('deprecated'),array('1'),array('id' => $this -> getId()));
		}

		/**
		 * Gets the requested page details, and removes the deprecated flag from that page.
		 * @return boolean return true if deprecated flag was removes succesfully
		 */
		public function undoDelete()
		{
			// Update the table to remove the deprecated flag from the right row
			return \api\Api::updateTable('table_content',array('deprecated'),array('0'),array('id' => $this -> getId()));
		}

		/**
		 * gets the ID of the page that should be edited.
		 * @return boolean return false if the ID wasn't a valid numeric ID.
		 */
		protected function getId()
		{
			//Read the url and split it. check if there's an ID on the right place and if it's numeric
			$rawUrl = explode('/index.php/',$_SERVER['REQUEST_URI']);
			$parts = explode('/',$rawUrl[1]);
			
			if(is_numeric($parts[2]))
				return $parts[2];
			else
				return NULL;
		}
	}
