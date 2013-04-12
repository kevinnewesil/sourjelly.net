<?php namespace core\access;

	class Secure
	{
		private $_remAddress = NULL;

		private $_hash       = array();

		public function createHash($string, $salt = 'sourjelly', $pepper = 'SmokeWeedEveryDay')
		{
			$hash = sha1($salt . '-' . $string . '-' . $pepper);
			$this -> _hash[] = $hash;
			return $hash;
		}

		public function createRandomHash($string)
		{
			$hash['number'] = sha1(rand());
			$hash['time'] = sha1(time());
			$hash['delimiter'] = sha1(array_rand(array('-','/','~','+','&')));
			$hash['hash-string'] = sha1($string);

			$this->_hash[] = $hash;

			return (string) sha1(sha1(implode($this->_hash['delimiter'], $hash)) . sha1('SmokeWeedEveryDay'));
		}

		public function getClientInfo($save = false)
		{
			
		}

		public function banIp()
		{

		}
	}
