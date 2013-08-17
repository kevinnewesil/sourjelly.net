<?php

	/**
	 * 
	 */

	$data = \Post();

	if(isset($data -> submit))
	{

		unset($data -> submit);
		(array) $data;

		if(!file_exists(MODULES_PATH . "newsfeed/config/config.php"))
			\config\Config::generateConfig($data);
		else
		{
			\config\Config::generateConfig((array) $data,true);
		}

	}

	$config = require(MODULES_PATH . 'newsfeed/config/config.php');

	$content = file_get_contents(MODULES_PATH . "newsfeed/html/settings.html");

	$content = str_replace('{count}', (string) count($config['post']), $content);

	return $content;