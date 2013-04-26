<?php

	$content = file_get_contents(MODULES_PATH . 'contact_form/html/settings.html');
	$placeholders = array('{email}','{saveMail}','{captcha}','{sticky}','{allPages}');

	$data = \Post();

	if(file_exists(MODULES_PATH . 'contact_form/config/config.php'))
		$config = require(MODULES_PATH . 'contact_form/config/config.php');
	else
		$config = array();

	if(isset($data -> contact_form_submit) && $data -> contact_form_submit == 'save contact form settings')
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

	$content = str_replace($placeholders, $replacers, $content);

	return $content;