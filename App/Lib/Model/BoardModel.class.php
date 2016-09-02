<?php
	class BoardModel extends Model{
		function bidname($bid){
			$x=$this->find($bid);
			if($x){
				return $x['name'];
			}
		}
		function exist($bid){
			$x=$this->find($bid);
			if($x){
				return $x;
			}
		}
	}