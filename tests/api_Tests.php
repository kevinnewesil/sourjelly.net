<?php namespace tests; if(!defined("DS")) die('no direct script access!');

	class Api_Tests
	{
		public function start()
		{
			$this -> loadApi();
			$this -> apiPages();
		}

		private function loadApi()
		{
			echo PHP_EOL . "Starting up sourjelly class... ";

			if(!$sj = new \core\build\Sourjelly)
			{
				echo \core\colourString("Could not load sourjelly class","green") . PHP_EOL;
			}
			else
				echo \core\colourString("Sourjelly class started","green") . PHP_EOL;


			echo "Testing api object............ ";

			if(!$api = \SjApi())
			{
				echo \core\colourString("Could not load api class","red") . PHP_EOL;
			}
			else
				echo \core\colourString("Api object loaded","green") . PHP_EOL;

			echo ".............................. ";

			if(isset($api) && !is_object($api) || $api == NULL)
			{
				echo \core\colourString("Could not load api object","red") . PHP_EOL;
			}
			else
				echo \core\colourString("Api object initalised","green") . PHP_EOL;
		}

		private function apiPages()
		{
			$this -> testPagesObject();
		}

		private function testPagesObject()
		{
			echo PHP_EOL . 'Loading pages object... ';

			if(!$pagesApi = \getApiPages())
			{
				echo \core\colourString("Could not load pages api.","red");
			}
			else
				echo \core\colourString("Pages api successfully loaded","green");
		}

	}