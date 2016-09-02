<?php
	class BoardModel extends Model{
		function addboard($board){
			if(!$board['name']){
				return "未输入标题!";
			}
			if(!$_SESSION['aid']){
				return "权限无法满足!";
			}
			$add['name']=$board['name'];
			$add['aid']=$_SESSION['aid'];
			$add['uid']=$_SESSION['uid'];
			$add['time']=time();
			$this->add($add);
		}
		function edit($board){
			$this->where("bid='".$board['bid']."'")->setField('name',$board['name']);
		}
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