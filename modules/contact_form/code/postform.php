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

							$subject = 'contact form message Sourjelly.';
							$message = $mail[3] . PHP_EOL . $mail[1];

							if(isset($_FILES) && !empty($_FILES) && $_FILES['file']['tmp_name'][0] != "")
							{	
								$uid = sha1(uniqid(time()));

								$filename = $_FILES['file']['name'][0];
								$size    = $_FILES['file']['size'][0];
								$content = chunk_split(base64_encode(file_get_contents($_FILES['file']['tmp_name'][0]))); 

								$header = "From: ".$mail[1]."\r\n"
								      ."Reply-To:" . $mail[1] . "\r\n"
								      ."MIME-Version: 1.0\r\n"
								      ."Content-Type: multipart/mixed; boundary=\"" . $uid . "\"\r\n\r\n"
								      ."This is a multi-part message in MIME format.\r\n" 
								      ."--".$uid."\r\n"
								      ."Content-type:text/plain; charset=iso-8859-1\r\n"
								      ."Content-Transfer-Encoding: 7bit\r\n\r\n"
								      .$message."\r\n\r\n"
								      ."--".$uid."\r\n"
								      ."Content-Type: application/octet-stream; name=\"".$filename."\"\r\n"
								      ."Content-Transfer-Encoding: base64\r\n"
								      ."Content-Disposition: attachment; filename=\"".$filename."\"\r\n\r\n"
								      .$content."\r\n\r\n"
								      ."--".$uid."--"; 
								      
								mail($config['email'], $subject, $message, $header);
							}
							else{
								$headers = 'From: ' . $mail[2] . "\r\n";
								$headers .= 'Reply-To:'  . $mail[2] . "\r\n" ;
								$headers .= 'X-Mailer: PHP/' . phpversion();

								mail($config['email'], $subject, $message,$headers);
							}

							

						}

						$handle = fopen(MODULES_PATH . 'contact_form/tmp/maillist.php','w');
							fwrite($handle, '');
							if(fclose($handle))
								\core\access\Redirect::Refresh('Mail has been send.','success');
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