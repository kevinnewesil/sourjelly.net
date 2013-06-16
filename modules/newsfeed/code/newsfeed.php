<?php

	$config = require(MODULES_PATH . 'newsfeed/config/config.php');

	$tmp = file_get_contents(MODULES_PATH . 'newsfeed/html/template.html.tpl');
	$itemsTmp = file_get_contents(MODULES_PATH . 'newsfeed/html/item.html.tpl');
	$items = '';

	foreach($config['post'] as $posts)
	{
		$items .= str_replace(array('{title}','{content}'), array($posts['title'], $posts['content']),$itemsTmp );
	}

	$content = str_replace('{items}',$items,$tmp);
	
	return $content;