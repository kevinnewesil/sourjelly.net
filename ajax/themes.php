<?php
	
	// Start a session as it's a new call.
	session_start();

	// Require the system files.
	require_once('../config/const.config.php');
	require_once('../core/require.php');

	// Start the system
	new \core\build\Sourjelly(true);
	// Predefine the return value
	$return = array();
	$data   = \Post();

	// Switch the action the user wants to do via the ajax call.
	switch($data -> action)
	{
		// Activate a theme
		case 'activate' :
			// Explode the html tag ID attribute on '~' to get the ID and theme name.
			$id = explode('~', $data -> id);
			// Cast the current variable to 0 or 1 -> int
			(int) $current = $data -> current == 'Yes' ? 0 : 1;

			// If $current is 1 Rewrite the theme.less file, so the activeted theme variable file will be rendered.
			if($current == '1')
				// if the theme.less file is open-able, , succesfully re-writen and closed, the return value is true
				if($fh = fopen(MAIN_PATH . '/public_html/assets/css/theme.less','w'))
					if(fwrite($fh, '@import "themes/' . $id[2] . '"; ' . PHP_EOL . \core\build\Template::getSnippet('theme.layout.less','less')))
						if(fclose($fh))
							$return['value'] = 'true';
						else
							$return['value'] = 'false';
					else
						$return['value'] = 'false';
				else
					$return['value'] = 'false';	
			else
				// Else delete the theme.less file, so the standart theme will be rendered. -> Twitter bootstrap is the standart theme.
				if(unlink(MAIN_PATH . '/public_html/assets/css/theme.less'))
					$return['value'] = 'true';
				else 
					$return['value'] = 'false';

			// if the return value is set to true, either by rewriting the theme file or deleting it, continue the script.
			if($return['value'] == 'true')
			{
				// Set the current active theme to non active
				\api\Api::updateTable('table_themes',array('active'),array('0'),array('active' => '1'));
				// Set the theme that will be activated to / unactived to the new active / unactive value
				if(\api\Api::updateTable('table_themes',array('active'), array($current) ,array('id' => $id[1])))
					$return['value'] = 'true';
				else
					$return['value'] = 'false';
				}

			break;

		case 'undelete' :
			// Retrieve the ID from the id attribute from the html tag
			$id = explode('~', $data -> id);
			// Remove the deprecated flag from the table
			if(\api\Api::updateTable('table_themes',array('deprecated'), array('0') ,array('id' => $id[1]),true))
				$return['value'] = 'true';
			else
				$return['value'] = 'false';
			break;
	}

	// Return a json with the values of the return -> string -> true/false -> for message on success/failure via JavaScript.
	echo json_encode($return);
