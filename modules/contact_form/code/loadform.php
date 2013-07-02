<?php

	/**
	 *
	 * @todo Write proper order in retreiving form items instead of randomly order them on type..
	 * @todo make sure every html element can be loaded will al provided data neccesairy
	 * @todo make it a form builder with mail options
	 * @todo write smtp class in sourjelly for this shit and further usage
	 * @todo write attachement code for generating pdf with orders via an automatic email
	 * @todo make sure captcha works in order to recude spam
	 *
	**/

	$inputs = '';
	$config = require(MODULES_PATH .'contact_form/config/config.php');
	
	$template = file_get_contents(MODULES_PATH . 'contact_form/html/contactform.html');
	$placeholder = array('{inputs}');

	$url = explode('/',$_SERVER['REQUEST_URI']);

	$inputLayout = \Snippet('form/input.html.tpl');
	$textareaLayout = \Snippet('form/textarea.html.tpl');
	$selectLayout = \Snippet('form/select.html.tpl');
	$optionLayout = \Snippet('form/option.html.tpl');
	$checkboxLayout = \Snippet('form/checkbox.html.tpl');

	$inputPlaceholders = array('{id}','{label}','{type}','{name}','{class}','{placeholder}','{value}');
	$textareaPlaceholders = array('{id}','{label}','{name}','{class}','{html}');
	$selectPlaceholders = array('{name}','{class}','{id}','{options}');
	$optionPlaceholders = array('{value}','{name}');
	$checkboxPlaceholders = array('{name}','{title}');

	$options = '';

	// foreach($config as $key => $value)
	// {
	// 	if($key == $url[count($url)-1])
	// 	{
	// 		foreach($value as $subkey => $result)
	// 		{
	// 			foreach($result['input'] as $resultkey => $subresult)
	// 			{
	// 				if($resultkey == 'input')
	// 					$inputs .= str_replace( $inputPlaceholders, array('id', $subresult['name'], 'text', "message[" . $subresult['name'] . "]", 'class',$subresult['placeholder'],''), $inputLayout);
	// 				if($resultkey == 'file')
	// 					$inputs .= str_replace( $inputPlaceholders, array('', $subresult['name'], 'file', "file[]", '','',''), $inputLayout);
	// 				if($resultkey == 'textarea')
	// 					$inputs .= str_replace( $textareaPlaceholders, array('', $subresult['name'], "message[" . $subresult['name'] . "]", '',''), $textareaLayout);
	// 			}
	// 		}
	// 	}
	// }


	foreach($config as $key => $value)
	{
		if($key !== $url[count($url)-1])
			continue;

		foreach($value as $formElement => $formPlaceholderGroup)
		{
			foreach($formPlaceholderGroup as $groupKey => $formPlaceholders)
			{
				switch($formElement)
				{
					case 'input' :
						$inputs .= str_replace($inputPlaceholders, array('id', $formPlaceholders['name'], 'text', "message[" . $formPlaceholders['name'] . "]", 'class',$formPlaceholders['placeholder'],''), $inputLayout);
						break;

					case 'file' :
						$inputs .= str_replace( $inputPlaceholders, array('', $formPlaceholders['name'], 'file', "file[]", '','',''), $inputLayout);
						break;

					case 'textarea' : 
						$inputs .= str_replace( $textareaPlaceholders, array('', $formPlaceholders['name'], "message[" . $formPlaceholders['name'] . "]", '',''), $textareaLayout);
						break;

					case 'select' :

						foreach($value['option'][$groupKey] as $option)
						{
							$options .= str_replace($optionPlaceholders, array($option['value'],$option['name']), $optionLayout);
						}

						$inputs .= str_replace($selectPlaceholders, array($formPlaceholders['name'],'sort','',$options), $selectLayout);

						break;

					case 'checkbox' :
						$inputs .= str_replace($checkboxPlaceholders, array($formPlaceholders['name'],$formPlaceholders['title']), $checkboxLayout);
						break;
				}
			}
		}
	}

	$content[] = str_replace('{inputs}', $inputs, $template);