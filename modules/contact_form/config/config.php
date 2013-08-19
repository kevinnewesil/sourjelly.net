<?php  

	$config['email'] = 'kevin@sourjelly.net';
	$config['saveMail'] = '0';

	$config['contact_form'][0]['input']['input']['name'] = 'Naam:';
	$config['contact_form'][0]['input']['input']['placeholder'] = 'Uw naam';

	$config['contact_form'][1]['input']['input']['name'] = 'E-mail adres:';
	$config['contact_form'][1]['input']['input']['placeholder'] = 'Uw e-mail adres';

	$config['contact_form'][2]['input']['textarea']['name'] = 'Bericht:';

	$config['offerte']['select'][0]['name'] = 'Soort:';
	$config['offerte']['option'][0][1]['name'] = 'Bedrijf';
	$config['offerte']['option'][0][1]['value'] = 'bedrijf';
	$config['offerte']['option'][0][2]['name'] = 'Patriculier';
	$config['offerte']['option'][0][2]['value'] = 'patriculier';
	$config['offerte']['option'][0][3]['name'] = 'Organisatie';
	$config['offerte']['option'][0][3]['value'] = 'organisatie';

	$config['offerte']['input'][1]['name'] = 'bedrijfsnaam:';
	$config['offerte']['input'][1]['placeholder'] = 'Bedrijfsnaam';

	$config['offerte']['input'][2]['name'] = 'straat:';
	$config['offerte']['input'][2]['placeholder'] = 'Straat';

	$config['offerte']['input'][3]['name'] = 'huisnummer:';
	$config['offerte']['input'][3]['placeholder'] = 'Huisnummer';

	$config['offerte']['input'][4]['name'] = 'Postcode:';
	$config['offerte']['input'][4]['placeholder'] = '1234 AB';

	$config['offerte']['input'][5]['name'] = 'Plaats:';
	$config['offerte']['input'][5]['placeholder'] = 'plaats';

	$config['offerte']['checkbox'][6]['name'] = 'Controle_kleine_blusmiddelen';
	$config['offerte']['checkbox'][6]['title'] = 'Controle kleine klusmiddelen';

	$config['offerte']['input'][7]['name'] = 'aantal:';
	$config['offerte']['input'][7]['placeholder'] = 'aantal';

	$config['captcha'] = '0';
	$config['sticky'] = '0';
	$config['allPages'] = '0';

	return $config;