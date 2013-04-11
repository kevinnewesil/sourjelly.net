<?php
	
	require(MODULES_PATH . "contact_form/code/errors.php");
	$config = require(MODULES_PATH . "contact_form/config/config.php");

	if(isset($_POST['submit_contact_form']) && $_POST['submit_contact_form'] == 'contact')
	{
		$error = NULL;

		array_pop($_POST);

		if(!empty($_POST['name']) && !empty($_POST['email']) && !empty($_POST['message']))
		{
			if(isset($_POST['captha']))
			{
				die('1');
			}

			if(strlen($_POST['email']) > 9 && strlen($_POST['message']) > 9 && strlen($_POST['message']) < 501)
			{
				if(filter_var($_POST['email'],FILTER_VALIDATE_EMAIL))
				{
					if(file_exists(MODULES_PATH . 'contact_form/tmp/mailllist.php'))
						$mode = 'w';
					else
						$mode = 'a';

					//Simple check to see the amount of posts
					$maillist = trim(file_get_contents(MODULES_PATH . 'contact_form/tmp/maillist.php'));
					$numberOfEmail = count(explode(';', $maillist))-1;

					if($numberOfEmail <= (int)$config['saveMail'])
					{
						if($handle = @fopen(MODULES_PATH . 'contact_form/tmp/maillist.php', $mode))
						{
							$mailstring = implode('~', $_POST) . ';';
							fwrite($handle, $mailstring . PHP_EOL);
							fclose($handle);

							\core\access\Redirect::Refresh('Mail has been send.','success');
						}
						else
						{
							$error .= "Couldn't write message";
						}
					}
					else
					{
						$maillist = explode(';',$maillist);
						array_pop($maillist);
						array_push($maillist, implode('~',$_POST));

						foreach($maillist as $mail)
						{
							$mail = explode('~',$mail);
							$subject = 'contact form message Sourjelly.';
							$message = $mail[2] . PHP_EOL . $mail[0];
							$headers = 'From: ' . $mail[1] . "\r\n" .
									   'Reply-To:'  . $mail[1] . "\r\n" .
									   'X-Mailer: PHP/' . phpversion();

							if(mail($config['email'], $subject, $message,$headers))
							{
								$handle = fopen(MODULES_PATH . 'contact_form/tmp/maillist.php','w');
								fwrite($handle, '');
								fclose($handle);

								\core\access\Redirect::Refresh('Mail has been send.','success');
							}
							else
								\core\access\Redirect::Refresh('Something went wrong sending the mail');
						}
					}	
				}
				else
				{
					\core\access\Redirect::Refresh(INVALID_EMAIL);
				}
			}
			else
			{
				\core\access\Redirect::Refresh(STRING_LENGHT);
			}
		}
		else
		{
			\core\access\Redirect::Refresh(EMPTY_FIELD);
		}
	}