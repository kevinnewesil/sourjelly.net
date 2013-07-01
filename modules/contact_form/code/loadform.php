<?php

	$inputs = '';
	$config = require(MODULES_PATH .'contact_form/config/config.php');
	
	$template = file_get_contents(MODULES_PATH . 'contact_form/html/contactform.html');
	$placeholder = array('{inputs}');

	$inputLayout = \Snippet('form/input.html.tpl');
	$textareaLayout = \Snippet('form/textarea.html.tpl');
	$selectLayout = \Snippet('form/select.html.tpl');
	$optionLayout = \Snippet('form/option.html.tpl');

	$inputPlaceholders = array('{id}','{label}','{type}','{name}','{class}','{placeholder}','{value}');
	$textareaPlaceholders = array('{id}','{label}','{name}','{class}','{html}');
	$selectPlaceholders = array('{name}','{class}','{id}','{options}');
	$optionPlaceholders = array('{value}','{name}');

	foreach($config as $key => $value)
	{
		$url = explode('/',$_SERVER['REQUEST_URI']);
		
		if($key == $url[count($url)-1])
		{
			foreach($value as $subkey => $result)
			{
				foreach($result['input'] as $resultkey => $subresult)
				{
					if($resultkey == 'input')
						$inputs .= str_replace( $inputPlaceholders, array('id', $subresult['name'], 'text', "message[" . $subresult['name'] . "]", 'class',$subresult['placeholder'],''), $inputLayout);
					if($resultkey == 'file')
						$inputs .= str_replace( $inputPlaceholders, array('', $subresult['name'], 'file', "file[]", '','',''), $inputLayout);
					if($resultkey == 'textarea')
						$inputs .= str_replace( $textareaPlaceholders, array('', $subresult['name'], "message[" . $subresult['name'] . "]", '',''), $textareaLayout);
				}
			}
		}
	}

	$content[] = str_replace('{inputs}', $inputs, $template);