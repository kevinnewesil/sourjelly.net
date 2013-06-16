<?php namespace models;

	/** 
	* @author  Kevin Newesil <newesil.kevin@gmail.com>
	* @version  1.0 
	* @package  default
	* 
	*/
	final class Module extends \core\system\Model
	{	

		final public function __construct()
		{
			parent::__construct();
		}

		final public function create()
		{
			die(var_dump(\Post()));
		}

		/**
		 * Checks for what module is selected, and places a deprecated flag onto the row in the database
		 * @return boolean return true on successfull update.
		 */
		final public function delete()
		{
			$rawUrl = explode('/index.php/',$_SERVER['REQUEST_URI']);
			$parts = explode('/',$rawUrl[1]);
			$id = $parts[2];

			if(\api\Api::updateTable('table_modules',array('deprecated'),array('1'),array('id' => $id)))
				return true;
			else
				return false;
		}

		/**
		 * This function has yet to become a masterpiece , but as the current state is, I can't build it yet D:
		 */
		final public function viaUrl()
		{
			$allowedFileExt = array('.zip','.rar');

			foreach($allowedFileExt as $ext)
				if(strstr($this -> _post -> url, $ext) !== false)
					$extRes = 'found';

			if($extRes !== 'found')
				\Refresh('Not a valid download url. Please provice a direct link to the url');

			$explodedUrl = explode('/', $this -> _post -> url);
			$explodedFile = explode('.',$explodedUrl[count($explodedUrl)-1]);

			$fileName = $explodedUrl[count($explodedUrl)-1];
			$fileType = $explodedFile[count($explodedFile)-1];
			$filePath = MODULES_PATH . $explodedFile[0];

			if(is_dir($filePath))
				\Refresh('There is already a module with this name.');

			if(!mkdir($filePath))
				\Refresh('Error creating folder for module.');

			if(!$file = file_get_contents($this -> _post -> url , 'r'))
				\Refresh('Could not make connection to remote url');
			
			if(!$fh = fopen($filePath . '.' . $fileType , 'w'))
				\Refresh('Could not make local copy of  module');

			fwrite($fh, $file);
			fclose($fh);

			$zipExtractor = new \ZipArchive;
 
			if(!$extracted = $zipExtractor -> open($filePath . '.' . $fileType))
				\Refresh('Could not open compressed file');

			if($zipExtractor->extractTo(MODULES_PATH))
			{
				$zipExtractor->close();
				\Api\Api::insertInto('table_modules',array('title','description','active','deprecated'),array($explodedFile[0],$this -> _post -> description_url,1,0),'ssii');

				//Clean up _MACOSX users shit.
				if(is_dir(MODULES_PATH . '__MACOSX'))
					rmdir(MODULES_PATH . '__MACOSX');

				unlink($filePath . '.' . $fileType);

				\Refresh('Module succesfully installed','success');
			}
			else
			{
				\Refresh('could not extract module');
			}

			\Refresh('we have absolutely no idea what went wrong..');
		}

		/**
		 * This functions expects a zip or anything compressed. Moves it to the module folder, extracts it, and cleans up the mess after.
		 */
		public function upload()
		{
			$fileName      = $_FILES['file']['name'];
			$fileType      = $_FILES['file']['type'];
			$source        = $_FILES['file']['tmp_name'];

			$name          = explode(".", $fileName);
			$path          = MODULES_PATH . $name[0];
			$acceptedTypes = array('application/zip', 'application/x-zip-compressed', 'multipart/x-zip', 'application/x-compressed');
			
			if(!in_array($fileType, $acceptedTypes,true) || strtolower($name[1]) !== 'zip')
				\core\access\Redirect::Refresh('file does not have right extension');

			if(is_dir($path))
				\core\access\Redirect::Refresh('There is already a module with this name.');

			if(!mkdir($path))
				\core\access\Redirect::Refresh('Error creating folder for module.');

			if(!move_uploaded_file($source, $path . DS . $fileName))
			{
				rmdir($path);
				\core\access\Redirct::Refresh('Could not re-locate uploaded file to destination folder.');
			}

			$zipExtractor = new \ZipArchive;

			$extracted = $zipExtractor->open($path . DS . $fileName);

			if(!$extracted)
				\core\access\Redirect::Refresh('could not open compressed file');

			if($zipExtractor->extractTo(MODULES_PATH));
			{
				$zipExtractor->close();
				\Api\Api::insertInto('table_modules',array('title','description','active','deprecated'),array($name[0],$this -> _post -> description,1,0),'ssii');

				//Clean up _MACOSX users shit.
				if(is_dir(MODULES_PATH . '__MACOSX'))
					rmdir(MODULES_PATH . '__MACOSX');

				unlink(MODULES_PATH . $name[0] . DS . $fileName);

				\core\access\Redirect::Refresh('Module succesfully installed','success');
			}

			\core\access\Redirect::Refresh('could not extract module');

		}
	}
