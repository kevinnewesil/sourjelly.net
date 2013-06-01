<?php
	
	require(MODULES_PATH . "contact_form/code/errors.php");
	$config = require(MODULES_PATH . "contact_form/config/config.php");

	$data = \Post();

	if(isset($data -> submit_contact_form) && $data -> submit_contact_form == 'contact')
	{
		$error = NULL;

		unset($data -> submit_contact_form);

		if(!empty($data -> name) && !empty($data -> email) && !empty($data -> message))
		{
			if(isset($data -> captha))
			{
				die('1');
			}

			$messageString = '';

			foreach($data -> message as $value)
				$messageString .= $value . PHP_EOL;

			$data -> message = $messageString;

			if(strlen($data -> email) > 9 && strlen($data -> message) > 9 && strlen($data -> message) < 501)
			{
				if(filter_var($data -> email,FILTER_VALIDATE_EMAIL))
				{
					$maillist = '';
					$numberOfEmail = 0;

					if(!file_exists(MODULES_PATH . 'contact_form/tmp/maillist.php'))
					{
						$mode = 'w+';
					}
					else
					{
						$mode = 'a';

						//Simple check to see the amount of posts
						$maillist = trim(file_get_contents(MODULES_PATH . 'contact_form/tmp/maillist.php'));
						$numberOfEmail = count(explode(';', $maillist))-1;
					}

					if($numberOfEmail <= (int)$config['saveMail'])
					{
						if($handle = fopen(MODULES_PATH . 'contact_form/tmp/maillist.php', $mode))
						{

							$mailstring = '';

							foreach($data as $value)
								$mailstring .= '~' . $value;

							$mailstring .= ';';
							fwrite($handle, $mailstring . PHP_EOL);
							fclose($handle);

							\setNoticeSuccess('Mail has been send.','success');
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

						$mailstring = '';

						foreach($data as $value)
							$mailstring .= '~' . $value;

						array_push($maillist, $mailstring);

						foreach($maillist as $mail)
						{
							$mail = explode('~',$mail);

							die(var_dump($_FILES));



							$subject = 'contact form message Sourjelly.';
							$message = $mail[2] . PHP_EOL . $mail[0];

							$headers = 'From: ' . $mail[1] . "\r\n";
							$headers .= 'Reply-To:'  . $mail[1] . "\r\n" ;
							$headers .= "\r\nContent-Type: multipart/mixed; boundary=\"PHP-mixed-".$random_hash."\""; 

							if(isset($_FILES) && !empty($_FILES))
							{
								foreach($_FILES['message']['name'] as $key => $value)
								{
									die(var_dump($value));
									
								}
							}

							$headers .= 'X-Mailer: PHP/' . phpversion();

							mail($config['email'], $subject, $message,$headers);
							
						}

						$handle = fopen(MODULES_PATH . 'contact_form/tmp/maillist.php','w');
							fwrite($handle, '');
							if(fclose($handle))
								\setNoticeSuccess('Mail has been send.','success');
							else
								\setNotice('Something went wrong sending the mail');
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