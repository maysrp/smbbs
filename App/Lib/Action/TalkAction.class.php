<?php
	class TalkAction extends Action{
		function talklist(){
			A('User')->auto();
			$all=D('Talk')->mytalk();
			$this->assign("all",$all);
			$this->display();
		}
		function index(){
			A('User')->auto();
			$tid=(int)$_GET['tid'];
			$uid=(int)$_GET['uid'];
			if($uid==$_SESSION['uid']){
				$this->error("少年！自言自语是不好的！");
				return;
			}
			if($tid){
				$ax=D('Talk')->info($tid);
				if ($ax) {
					$uid=D('Talk')->oppo($tid);
					$this->assign("uid",$uid);
					$this->assign("talk",$ax);
					$all=D('Talk')->mytalk_10();
					$this->assign("all",$all);
					$this->assign("tid",$tid);
					D('Talk')->readed($tid);
					$this->display();
					return;
				
				}else{
					$this->error("不存在该会话","/index.php/User");
					return;
				}
			}
			$re=D('Talk')->send($uid);
			$tid=D('Talk')->found_talk($uid);
			$all=D('Talk')->mytalk_10();
			$this->assign("all",$all);
			if($re){
				$this->assign("uid",$uid);
				$this->assign("talk",$re);
				$this->assign("tid",$tid);
				D('Talk')->readed($tid);
				$this->display();
			}else{
				$this->assign("uid",$uid);
				$this->display();
			}
		}
		function send(){
			if(!$_SESSION['uid']){
				return;
			}	
			if($_POST['text']){
				$tid=(int)$_POST['tid'];
				$uid=(int)$_POST['uid'];
				if($tid){
					$text=$_POST['text'];
					D('Talk')->addone($tid,$text);
				}else{
					if($uid){
						$text=$_POST['text'];
						D('Talk')->send($uid,$text);
					}
				}
				header("Location:".$_SERVER['HTTP_REFERER']);
			}else{
				header("Location:".$_SERVER['HTTP_REFERER']);
			}
		}
		function withme(){
			$name=$_GET['name'];
			$user=D('User')->nameinfo($name);
			if ($user) {
				$this->success("跳转中","/index.php/Talk/index/uid/".$user['uid']);
			}else{
				$this->error("不存在该用户");
			}
		}
	}