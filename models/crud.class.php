<?php namespace models;

	/** 
	* @author  Kevin Newesil <newesil.kevin@gmail.com>
	* @version  1.0 
	* @package  default
	* 
	*/
	class Crud
	{
		/**
		 * checks if the values are correct and inserts data for a webpage into the database.
		 * @param  array $create the values of the create request.
		 * @return boolean       return true if row was inserted correctly.
		 */
		public function create($create)
		{
			// Make sure that each array item is a variable by itself for easier parsing and less hacking as it's sort of hardcoded
			foreach($create as $name => $value)
				$$name = $value;

			// Check if the page must be visable in the main menu or not
			$visable = isset($visable) && $visable == 'on' ? '1' : '0';

			// Check if data exists, if not, redirect home with error message.
			if(!isset($title) || !isset($content) || !isset($parent))
				\core\access\Redirect::to(HOME_PATH . '/crud/create/?ns=controllers&path=controller_path','something went wrong setting the variables, Please contact an administrator');

			// Check if it's a submenu item or not. if not set to 0, else set to 1 and get parent id.
			if($parent == '-')
			{
				$has_parent = '0';
				$parent_id = '0';
			}
			else
			{
				$has_parent = '1';

				$parentContent = \api\Api::getPages() -> getPage('',$parent);
				$parentId = $parentContent[0];
			}

			// Check if the user wants a custom id / class / both for their content area for personal styling.
			if(!empty($create['contentId']) && !empty($create['contentClass']))
				$content = '<div id="' . $create['contentId'] . '" class="' . $create['contentClass'] . '">' . "\n\r" . $content ."\n\r" . '</div>';
			elseif(empty($create['contentId']) && !empty($create['contentClass']))
				$content = '<div class="' . $create['contentClass'] . '">' . "\n\r" . $content ."\n\r" . '</div>';
			elseif(!empty($create['contentId']) && empty($create['contentClass']))
				$content = '<div id="' . $create['contentId'] . '">' . "\n\r" . $content ."\n\r" . '</div>';

			// Define the rows of the table that should be inserted into, and set those variables
			$rows   = array('title','content','has_parent','parent_id','menu_order','deprecated','public','visable','meta_tags','meta_description','created_at');
			$values = array($title,$content,$has_parent,$parentId , '0','0','1',$visable,$metaTags,$metaDescription,@date('Y-m-d H:i:s'));

			// Make an internal API request for inserting data into the database.
			if(\api\Api::insertInto('table_content',$rows,$values,'ssiiiiiisss'))
				return true;
			else
				return false;		
		}

		/**
		 * Checks the values of the post, parses the values, gets the right page, and updates the row in the table.
		 * @param  array $update the values that should be updated
		 * @return boolean       return true if update was succesfull
		 */
		public function update($update)
		{
			$id = $this->getId();

			$parent = $update['parent'];
			array_pop($update);

			if($parent == '-')
			{
				array_push($update, '0');
				array_push($update, '0');
			}
			else
			{
				array_push($update, '1');

				$parentContent = \api\Api::getPages() -> getPage('',$parent);
				$parentId = $parentContent[0];

				array_push($update, $parentId);
			}

			$visable = isset($visable) && $visable == 'on' ? '1' : '0';

			array_push($update,$visable);
			array_push($update,date('Y-m-d H:i:s'));
			
			if(\api\Api::updateTable('table_content',
				array('title','content','has_parent','parent_id','visable','updated_at'),
				$update,
				array('id' => $id)
			))
				return true;
			else
				return false;
		}

		/**
		 * Gets the page that is reqested, and places a deprecated flag on it.
		 * @return boolean return true if deprecated flag was placed
		 */
		public function delete()
		{
			$id = $this->getId();

			if(\api\Api::updateTable('table_content',
				array('deprecated'),
				array('1'),
				array('id' => $id)
			))
				return true;
			else
				return false;
		}

		/**
		 * Gets the requested page details, and removes the deprecated flag from that page.
		 * @return boolean return true if deprecated flag was removes succesfully
		 */
		public function undoDelete()
		{
			$id = $this->getId();

			if(\api\Api::updateTable('table_content',
				array('deprecated'),
				array('0'),
				array('id' => $id)
			))
				return true;
			else
				return false;
		}

		/**
		 * gets the ID of the page that should be edited.
		 * @return boolean return false if the ID wasn't a valid numeric ID.
		 */
		protected function getId()
		{
			$rawUrl = explode('/index.php/',$_SERVER['REQUEST_URI']);
			$parts = explode('/',$rawUrl[1]);
			if(is_numeric($parts[2]))
				return $parts[2];
			else
				return NULL;
		}
	}
