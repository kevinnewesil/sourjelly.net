<?php namespace core\system; if(!defined("DS")) die('no direct script access!');

	final class embedCompiler
	{
		protected $_replacers = array();
		protected $_placeholders = array();
		protected $_layout;

		final public function decompile($layout)
		{
			$this -> _layout = $layout;

			$this -> link_to();

			return str_replace($this->_placeholders,$this->_replacers,$this -> _layout);
		}

		final private function link_to()
		{
			$regex = $this -> generate_pattern('link_to');
			$as = '<a href="' . HOME_PATH . DS;
			$ae = '</a>';

			foreach($regex as $count_and_pattern)
			{
				switch($count_and_pattern[0])
				{
					case 1:
						$this->_layout = preg_replace($count_and_pattern[1], $as . '$2">$2' . $ae , $this -> _layout, 1);
						break;
					case 2:
						$this->_layout = preg_replace($count_and_pattern[1], $as . '$2" $3="$4">$2' . $ae , $this -> _layout, 1);
						break;
					case 3:
						$this->_layout = preg_replace($count_and_pattern[1], $as . '$2" $3="$4" $5="$6">$2' . $ae , $this -> _layout, 1);
						break;
					case 4:
						$this->_layout = preg_replace($count_and_pattern[1], $as . '$2" $3="$4" $5="$6" $7="$8">$2' . $ae , $this -> _layout, 1);	
						break;
					case 5:
						$this->_layout = preg_replace($count_and_pattern[1], $as . '$2" $3="$4" $5="$6" $7="$8" $9="$10">$2' . $ae , $this -> _layout, 1);	
						break;
				}
			}

			return $this -> _layout;
		}

		final private function generate_pattern($action)
		{
			$regex = array();
			preg_match_all('/(\{\{(.*)\}\})/', $this -> _layout, $results);

			foreach($results[0] as $row)
			{
				if(count(explode(',',$row)) == 1)
					$regex[] = array(count(explode(',',$row)),'/(\{\{ ' . $action . ' =>\s*(.+?)\s* \}\})/');
				else
					$regex[] = array(count(explode(',',$row)),'/(\{\{ ' . $action . ' =>\s*(.+?)\s*' . str_repeat(',\s*(.+?)\s*=>\s*(.+?)\s*', count(explode(',',$row))-1) . '\}\})/');
			}

			return $regex;
		}
	}	
