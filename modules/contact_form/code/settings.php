<?php

	$content = file_get_contents(MODULES_PATH . 'contact_form/html/settings.html');
	$placeholders = array('{email}','{saveMail}','{captcha}','{sticky}','{allPages}','{allready_added_fields}');

	$data = \Post();

	if(file_exists(MODULES_PATH . 'contact_form/config/config.php'))
		$config = require(MODULES_PATH . 'contact_form/config/config.php');
	else
		$config = array();

	if(isset($data -> contact_form_submit) && $data -> contact_form_submit == 'Save')
	{

		//Set the checkboxes as boulean.
		$data -> captcha  = (isset($data -> captcha)  && $data -> captcha  == 'on') ? 1 : 0;
		$data -> sticky   = (isset($data -> sticky)   && $data -> sticky   == 'on') ? 1 : 0;
		$data -> allPages = (isset($data -> allPages) && $data -> allPages == 'on') ? 1 : 0;

		if(is_object($data) && !empty($data))
			\config\Config::generateConfig($data);
		else
			\SetNotice('data could not be parsed');

	}

	$replacers = array(
		$config['email'],
		$config['saveMail'],
		($config['captcha'] === '1') ? 'checked="checked"' : '' ,
		($config['sticky'] === '1') ? 'checked="checked"' : '' ,
		($config['allPages'] === '1') ? 'checked="checked"' : '' ,
	);

	$inputs = '';

	$inputLayout = \Snippet('form/input.html.tpl');
	$textareaLayout = \Snippet('form/textarea.html.tpl');

	$inputPlaceholders = array('{id}','{label}','{type}','{name}','{class}','{placeholder}','{value}');
	$textareaPlaceholders = array('{id}','{label}','{name}','{class}','{html}');

	foreach ($config['input'] as $key => $value) {
		if($key == "input")
		{
			$inputs .= str_replace( $inputPlaceholders, array('', $value['name'], 'text', "input[input][name]", 'input-added',$value['placeholder'],$value['name']), $inputLayout);
			$inputs .= str_replace( $inputPlaceholders, array('', $value['placeholder'], 'text', "input[input][placeholder]",'input-added','',$value['placeholder']),$inputLayout);
			$inputs .= "<hr>";
		}
		if($key == 'file')
		{
			$inputs .= str_replace( $inputPlaceholders, array('', $value['name'], 'text', "input[file][name]", 'input-added','',$value['name']), $inputLayout);
			$inputs .= "<hr>";
		}
		if($key == 'textarea')
		{
			$inputs .= str_replace( $textareaPlaceholders, array('', $value['name'] , 'input[textarea][name]','input-added',$value['name']), $textareaLayout);
			$inputs .= "<hr>";
		}
	}

	$replacers[] = $inputs;

	$content = str_replace($placeholders, $replacers, $content);

	return $content;