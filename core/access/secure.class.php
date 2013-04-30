<?php namespace core\access;

	final class Secure
	{
		private $_remAddress = NULL;

		private $_hash       = array();

		final public function createHash($string, $salt = 'sourjelly', $pepper = 'SmokeWeedEveryDay')
		{
			$hash = sha1($salt . '-' . $string . '-' . $pepper);
			$this -> _hash[] = $hash;
			return $hash;
		}

		final public function createRandomHash($string)
		{
			$hash['number'] = sha1(rand());
			$hash['time'] = sha1(time());
			$hash['delimiter'] = sha1(array_rand(array('-','/','~','+','&')));
			$hash['hash-string'] = sha1($string);

			$this->_hash[] = $hash;

			return (string) sha1(sha1(implode($this->_hash['delimiter'], $hash)) . sha1('SmokeWeedEveryDay'));
		}

		final public function getClientInfo($save = false)
		{
			
		}

		final public function banIp()
		{

		}
	}
