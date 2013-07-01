<?php  

	$config['email'] = 'kevin@sourjelly.net';
	$config['saveMail'] = '0';

	$config['contact_form'][0]['input']['input']['name'] = 'Naam:';
	$config['contact_form'][0]['input']['input']['placeholder'] = 'Uw naam';

	$config['contact_form'][1]['input']['input']['name'] = 'E-mail adres:';
	$config['contact_form'][1]['input']['input']['placeholder'] = 'Uw e-mail adres';

	$config['contact_form'][2]['input']['textarea']['name'] = 'Bericht:';

	$config['offerte'][0]['input']['select']['name'] = 'Soort:';
	$config['offerte'][1]['input']['option']['name'] = 'Bedrijf';
	$config['offerte'][1]['input']['option']['value'] = 'bedrijf';
	$config['offerte'][2]['input']['option']['name'] = 'Patriculier';
	$config['offerte'][2]['input']['option']['value'] = 'patriculier';
	$config['offerte'][3]['input']['option']['name'] = 'Organisatie';
	$config['offerte'][3]['input']['option']['value'] = 'organisatie';

	$config['offerte'][0]['input']['input']['name'] = 'bedrijfsnaam:';
	$config['offerte'][0]['input']['input']['placeholder'] = 'Bedrijfsnaam';

	$config['contact_form_submit'] = 'Save';

	$config['captcha'] = '0';
	$config['sticky'] = '0';
	$config['allPages'] = '0';

	return $config;