<?php
	class ProfileAction extends Action{
		function index(){
			$uid=$_GET['uid'];
			$info=D('User')->find($uid);
			if(!$info){
				$this->error("无该用户！");
				return;
			}
			$post=D('Post')->where("uid='".$uid."'")->select();
			$this->assign("post",$post);
			$this->assign("info",$info);
			$this->display();
		}

	}