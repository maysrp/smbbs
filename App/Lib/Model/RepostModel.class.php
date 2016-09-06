<?php
	class RepostModel extends Model{
		function exist($rid){
			$re=$this->find($rid);
			if($re){
				return $re;
			}
		}
		function ownrepost($re){
			$re=$this->find($rid);
			$uid=$re['uid'];
			if($uid==$_SESSION['uid']){
				return true;
			}
		}
		function del($rid){
			if($this->exist($rid)){
				if($this->ownrepost){
					$this->where("rid='".$rid."'")->delete();
				}
			}
		}
		function edit($repost){
			if($this->ownrepost($repost['rid'])){
				$this->where("rid='".$repost['rid']."'")->save($repost);
			}
		}
		function reall($pid){//取出相关回复
				$ret=$this->where("pid='".$pid."'")->order("lc")->select();
				return $ret;
		}
		function rere($re){//回复 回帖

		}
	}