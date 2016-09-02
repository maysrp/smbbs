<?php
	class UserAction extends Action{
		private $USER;
		function __construct(){
			parent::__construct();
			$this->USER=D('User');
			$this->USER->auth();
			D('Admin')->autologin();
		}
		function index(){
			if(!$_SESSION['uid']){
				$this->error("请先登入",'/index.php/User/login');
				return;
			}
		}
		function login(){
			if($_SESSION['aid']){
				$this->success("已登入",'/admin.php/Admin');
				return;
			}
			if(!$_POST){
				$this->display('login');
			}else{
				$auth['name']=$this->_post('name');
				$auth['password']=$this->_post('password');
				$this->USER->create();
				$re=$this->USER->login($auth);
				$x=D("Admin")->select();
				if($_SESSION['uid']==$x[0]['aid']){
					//$this->USER->cookie();
					$this->success("登入成功",'/admin.php/Admin');
				}else{
					$this->error($re);
				}
			}
		}
		function auto(){
			if($_SESSION['uid']){
			}else{
				$this->login();
			}
		}
		function logout(){
			$this->USER->logout();
			$this->success("你已经成功登出",'/index.php');
		}
		function change(){//PASSWORD NEW 
			if(!$_SESSION['uid']){
				$this->error("请先登入",'/index.php/User/login');
				return;
			}
			if (!$_POST) {
				$this->display();
			}else{
				$old['password']=$this->_post('password');
				$old['new']=$this->_post('new');
				$ju=$this->USER->change($old);
				if($ju){
					$this->error($ju);
				}
				$this->success("修改成功！",'/index.php/User/index');
			}
		}
		function adduser(){
			if(!$_POST){
				$this->display();
			}else{
				$user['name']=$_POST['name'];
				$user['password']=$_POST['password'];
				$us=$this->USER->adduser($user);
				if($us["type"]!="success"){
					$this->error($use);
				}else{
					$this->success("成功添加用户",'/admin.php/User/uid?uid='.$us['uid']);
				}
			}

		}
		function alluser(){
			$all=$this->USER->select();
			$this->assign("user",$all);
			$this->display();
		}
		function search(){
			//$uid=(int)$_POST['uid'];
			$name['name']=array("like","%".$_POST['name']."%");
			if($user=$this->USER->where($name)->select()){
				$this->assign("user",$user);
				$this->display();
			}else{
				$this->error("不存在该用户");
			}
		}
		function uid(){
			$uid=(int)$_GET['uid'];
			if($user=$this->USER->find($uid)){
				$post=D('Post')->where("uid='".$uid."'")->select();
				$this->assign("post",$post);
				$this->assign("info",$user);
				$this->display();
			}else{
				$this->error("不存在该用户");
			}

		}
		function deluser(){
			$uid=(int)$_GET['uid'];
			if($uid==$_SESSION['aid']){
				$this->error("无法删除管理员！");
			}
			if($_POST['jugg']=="1"){
				$this->USER->where("uid='".$uid."'")->delete();
				D("Post")->where("uid='".$uid."'")->delete();
				D("Repost")->where("uid='".$uid."'")->delete();
				$this->success("删除成功!",'/admin.php/Admin');


			}else{
				$this->display();//
			}
		}
	}