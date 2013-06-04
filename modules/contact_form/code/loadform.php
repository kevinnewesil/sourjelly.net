<?php
	$inputs = '';
	$config = require(MODULES_PATH .'contact_form/config/config.php');
	
	$template = file_get_contents(MODULES_PATH . 'contact_form/html/contactform.html');
	$placeholder = array('{inputs}');

	$inputLayout = \Snippet('form/input.html.tpl');
	$textareaLayout = \Snippet('form/textarea.html.tpl');

	$inputPlaceholders = array('{id}','{label}','{type}','{name}','{class}','{placeholder}');
	$textareaPlaceholders = array('{id}','{label}','{name}','{class}');

	foreach ($config['input'] as $key => $value) {
		if($key == "input")
			$inputs .= str_replace( $inputPlaceholders, array('a', $value['name'], 'text', "message[" . $value['name'] . "]", 'a',$value['placeholder']), $inputLayout);
		if($key == 'file')
			$inputs .= str_replace( $inputPlaceholders, array('a', $value['name'], 'file', "file[]", 'a',''), $inputLayout);
		if($key == 'textarea')
			$inputs .= str_replace( $textareaPlaceholders, array('a', $value['name'], "message[" . $value['name'] . "]", 'a'), $textareaLayout);
	}

	$content[] = str_replace('{inputs}', $inputs, $template);