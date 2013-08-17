<?php

	$config = require(MODULES_PATH . 'newsfeed/config/config.php');

	$tmp = file_get_contents(MODULES_PATH . 'newsfeed/html/template.html.tpl');
	$itemsTmp = file_get_contents(MODULES_PATH . 'newsfeed/html/item.html.tpl');
	$items = '';

	foreach($config['post'] as $key => $posts)
	{
		$items .= str_replace(array('{title}','{content}','{count}'), array($posts['title'], $posts['content'],$key+1),$itemsTmp );
	}

	$content = str_replace('{items}',$items,$tmp);
	
	return $content;