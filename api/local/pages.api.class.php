<?php namespace api\local; if(!defined("DS")) die('no direct script access!');

	/**
	 * @author  Kevin Newesil <newesil.kevin@gmail.com>
	 * @version  1.0
	 * @package  default
	 *
	 * The Api_pages class is only callable via the \api\Api class. This pages API class , is a local API class that makes calls to the pages table.
	 * This class is the only class that is allowed to access the pages table.
	 *
	 * @var $_link MySQLI resource The link to the database
	 */
	class Api_pages
	{
		protected static $_link;

		/**
		 * Sets the link to the database from the Main \api\Api class into this smaller api class.
		 * @param MySQLI resource $link The link to the database
		 */
		public function __construct($link)
		{
			self::$_link = $link;
		}

		/**
		 * gets all non deprecated pages and their information. I have no idea what the hack that is for, but possibly 'cause I was to lazy to write more queries.
		 * @return array An array, with arrays with the values of each page.
		 */
		public function getAllPages()
		{
			$query = "SELECT `title`,`content`,`created_at`,`updated_at`,`hasParent`, table_content.id 
					  FROM `table_content_properties`
					  LEFT JOIN `table_content` ON table_content.id = table_content_properties.cId
					  WHERE `deprecated` != 1 ORDER BY `menuOrder` ASC";

			$pageArray  = array();

			if($stmt = self::$_link->prepare($query))
			{	
				if(!\api\Api::checkQuery($query,'SELECT',true))
					\core\access\Redirect::Home('Something went wrong with the query.');

				$stmt->execute();
				$stmt -> store_result();

				$stmt->bind_result($title,$content,$created_at,$updated_at,$has_parent,$id);

				while($row = $stmt->fetch())
					$pageArray[] = array($title,html_entity_decode($content),$created_at,$updated_at,$has_parent,$id);

				$stmt->close();
			}
			else
			{
				\SetNotice('Could not fetch pages.. getAllPages. <br> error: ' . self::$_link -> error);
				return false;
			}

			return $pageArray;
		}

		/**
		 * This gets a page via an Id, or via the Title if nessecairy.
		 * @param  int 		$id    	The id of the page which should be fetched.
		 * @param  string 	$title 	The title of the page which should be fetched.
		 * @return array        	An array with the data of the fetched page.
		 */
		public function getPage($id , $title = null)
		{
			$return = array();

			if($title == NULL)
			{
				$query = "SELECT tcp.cId,tcp.title,tcp.content,tcp.hasParent,tcp.parentId,
								 tcp.metaTags,tcp.metaDescription,tcp.contentClass,tcp.contentId,
								 tcl.contentTextAlign,tcl.titleVisibility,tcl.titleTextAlign,tcl.titleFontSize,
								 tc.front, tc.back, tc.public, tc.menuVisibility, tc.created_at, tc.updated_at
						  FROM `table_content_properties` as tcp
						  LEFT JOIN `table_content` as tc ON tc.id = tcp.cId
						  RIGHT JOIN `table_content_layout` as tcl ON tc.id = tcl.cId
						  WHERE tc.id = ? 
						  	AND tc.deprecated != 1";
			}
			else
			{
				$query = "SELECT tcp.cId,tcp.title,tcp.content,tcp.hasParent,tcp.parentId,
								 tcp.metaTags,tcp.metaDescription,tcp.contentClass,tcp.contentId,
								 tcl.contentTextAlign,tcl.titleVisibility,tcl.titleTextAlign,tcl.titleFontSize,
								 tc.front, tc.back, tc.public, tc.menuVisibility, tc.created_at, tc.updated_at
						  FROM `table_content_properties` as tcp
						  LEFT JOIN `table_content` as tc ON tc.id = tcp.cId
						  RIGHT JOIN `table_content_layout` as tcl ON tc.id = tcl.cId
						  WHERE tcp.title = ?
						  	AND tc.deprecated != 1";
			}
			
			if($stmt = self::$_link->prepare($query))
			{
				if(!\api\Api::checkQuery($query))
					\core\access\Redirect::Home('Something went wrong with the query.');

				if($title == NULL)
					$stmt->bind_param('s',$id);
				else
					$stmt->bind_param('s',$title);

				$stmt->execute();
				$stmt -> store_result();

				if($stmt -> num_rows > 0)
				{
					$stmt->bind_result($id,$title,$content,$hasParent, $parentId, $metaTags, $metaDescription, $contentClass, $contentId, $contentTextAlign, 
									   $titleVisibility, $titleTextAlign, $titleFontSize, $front, $back, $public, $menuVisibility, $created_at, $updated_at);

					while($stmt->fetch())
					{
						$return = array(
						  	'tcp' => array(
								'id'      => $id,
								'title'   => $title,
								'content' => $content,
								'hasParent' => $hasParent,
								'parentId' => $parentId,
								'metaTags' => $metaTags,
								'metaDescription' => $metaDescription,
								'contentClass' => $contentClass,
								'contentId' => $contentId,
							),
							'tcl' => array(
								'contentTextAlign' => $contentTextAlign,
								'titleVisibility' => $titleVisibility,
								'titleTextAlign' => $titleTextAlign,
								'titleFontSize' => $titleFontSize,
							),
							'tc'  => array(
								'front' => $front,
								'back' => $back,
								'public' => $public,
								'menuVisibility' => $menuVisibility,
								'created_at' => $created_at,
								'updated_at' => $updated_at,
							),
						);
					}
				}
				else
				{
					$return = array();
				}

				$stmt->close();
			}
			else
			{
				\SetNotice('Could not fetch page.. getPage<br> error: ' . self::$_link -> error);
				return false;
			}

			return $return;
		}

		/**
		 * This gets a page via an Id, or via the Title if nessecairy.
		 * @param  int 		$id    	The id of the page which should be fetched.
		 * @param  string 	$title 	The title of the page which should be fetched.
		 * @return array        	An array with the data of the fetched page.
		 */
		public function getFirstPage()
		{
			$return = array();

			$query = "SELECT tcp.id,tcp.title,tcp.content,tcp.hasParent,tcp.parentId,
							 tcp.metaTags,tcp.metaDescription,tcp.contentClass,tcp.contentId,
							 tcl.contentTextAlign,tcl.titleVisibility,tcl.titleTextAlign,tcl.titleFontSize,
							 tc.front, tc.back, tc.public, tc.menuVisibility, tc.created_at, tc.updated_at
					  FROM `table_content_properties` as tcp
					  LEFT JOIN `table_content` as tc ON tc.id = tcp.cId
					  RIGHT JOIN `table_content_layout` as tcl ON tc.id = tcl.cId
					  ORDER BY `menuOrder` ASC
					  LIMIT 1";
			
			if($stmt = self::$_link->prepare($query))
			{
				if(!\api\Api::checkQuery($query))
					\core\access\Redirect::Home('Something went wrong with the query.');

				$stmt->execute();
				$stmt -> store_result();

				if($stmt -> num_rows > 0)
				{
					$stmt->bind_result($id,$title,$content,$hasParent, $parentId, $metaTags, $metaDescription, $contentClass, $contentId, $contentTextAlign, 
									   $titleVisibility, $titleTextAlign, $titleFontSize, $front, $back, $public, $menuVisibility, $created_at, $updated_at);

					while($stmt->fetch())
					{
						$return = array(
						  	'tcp' => array(
								'id'              => $id,
								'title'           => $title,
								'content'         => $content,
								'hasParent'       => $hasParent,
								'parentId'        => $parentId,
								'metaTags'        => $metaTags,
								'metaDescription' => $metaDescription,
								'contentClass'    => $contentClass,
								'contentId'       => $contentId,
							),
							'tcl' => array(
								'contentTextAlign' => $contentTextAlign,
								'titleVisibility'  => $titleVisibility,
								'titleTextAlign'   => $titleTextAlign,
								'titleFontSize'    => $titleFontSize,
							),
							'tc'  => array(
								'front'          => $front,
								'back'           => $back,
								'public'         => $public,
								'menuVisibility' => $menuVisibility,
								'created_at'     => $created_at,
								'updated_at'     => $updated_at,
							),
						);
					}
				}
				else
				{
					$return = array();
				}

				$stmt->close();
			}
			else
			{
				\SetNotice('Could not fetch page.. getPage <br> error: ' . self::$_link -> error);
				return false;
			}

			return $return;
		}

		/**
		 * Gives you a page Id from a page title. Usefull for getting Id's via urls.
		 * @param  string $title 	The title of the page where you need the ID from.
		 * @return int        		The id of the page you wanted.
		 */
		public function getIdFromTitle($title)
		{
			(int)$return = NULL;
			$query       = "SELECT `cId` 
							FROM `table_content_properties`
							LEFT JOIN `table_content` ON table_content.id = table_content_properties.cId
							WHERE table_content.deprecated != 1 
								AND `title` = ?";

			if($stmt = self::$_link->prepare($query))
			{
				if(!\api\Api::checkQuery($query))
					\core\access\Redirect::Home('Something went wrong with the query.');

				$stmt->bind_param('s',$title);
				$stmt->execute();
				$stmt->bind_result($id);
				while($stmt->fetch())
				{
					(int)$return = $id;
				}
				$stmt->close();
				return $return;
			}
			else
			{
				\Refresh('Could not fetch column value.. getIdFromTitle <br> error: ' . self::$_link -> error);
				return false;
			}

			return false;
		}

		/**
		 * Get's all depreacted pages from the database, so you never have data that's lost for people whom don't know how to backup.
		 * @return array An array with the data of all deleted pages.
		 */
		public function getDeletedPages()
		{
			$return = array();
			$query  = "SELECT * 
					   FROM `table_content_properties`
					   LEFT JOIN `table_content` ON table_content.id = table_content_properties.cId
					   WHERE table_content.deprecated = 1 
					   ORDER BY `menuOrder` ASC";

			if(!\api\Api::checkQuery($query))
					\core\access\Redirect::Home('Something went wrong with the query.');

			if($res = self::$_link->query($query))
			{
				while($row = $res->fetch_assoc())
					$return[] = $row;
				
				$res->close();
			}
			else
			{
				\SetNotice('Could not fetch deleted pages.. <br> error: ' . self::$_link -> error);
				return false;
			}

			return $return;
		}
	}
