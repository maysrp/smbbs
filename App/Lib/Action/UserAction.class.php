<?php
	class UserAction extends Action{
		private $USER;
		function __construct(){
			parent::__construct();
			$this->USER=D('User');
			$this->USER->auth();
		}
		function index(){
			if(!$_SESSION['uid']){
				$this->error("请先登入",'/index.php/User/login');
				return;
			}
			$uid=$_SESSION['uid'];
			$info=D('User')->find($uid);
			if(!$info){
				$this->error("无该用户！");
				return;
			}
			$post=D('Post')->where("uid='".$uid."'")->select();
			$count=count($post);
			import('ORG.Util.Page');
			$Page=new Page($count,10);
			$Page->setConfig('header',"个主题");
			if($_GET['p']<1){
				$_GET['p']=1;
			}else{
				$_GET['p']=(int)$_GET['p'];
			}
			$list=array_slice($post,10*($_GET['p']-1),10);
			$show=$Page->show();
			$this->assign("page",$show);
			$this->assign("post",$list);
			$this->assign("info",$info);
			$this->display();

		}
		function login(){
			if($_SESSION['uid']){
				$this->success("已登入",'/index.php/User/index');
				return;
			}
			if(!$_POST){
				$this->display('login');
			}else{
				$auth['name']=$this->_post('name');
				$auth['password']=$this->_post('password');
				$this->USER->create();
				$re=$this->USER->login($auth);
				if($_SESSION['uid']){
					$this->USER->cookie();
					$this->success("登入成功",'/index.php/User/index');
				}else{
					$this->error($re);
				}
			}
		}
		function auto(){
			if($_SESSION['uid']){
			}else{
				$this->error("请先登入！",'/index.php/User/login');
			}
		}
		

		function join(){
			if($_SESSION['uid']){
				$this->error("你已经登入",'/index.php/User/index');
				return;
			}
			if(!$_POST){
				$this->display();//注册
			}else{
				$add['name']=$this->_post('name');
				$add['password']=$this->_post('password');
				$jo=$this->USER->useradd($add);
				if($jo){
					$this->error($jo);
					return;
				}
				$this->success("注册成功！","/index.php/User");
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
		function image(){
			$this->auto();
			$this->display();
			import('ORG.Net.UploadFile');
			$upload=new UploadFile();
			$upload->maxSize=10000000;
			$upload->allowExts=array('jpg','png','gif');
			$upload->savePath="./Uploads/image/";
			$upload->thumb=true;
			$upload->thumbMaxWidth="250";
			$upload->thumbMaxHeight="250";
			$upload->thumbFile=$_SESSION['uid'];
			$upload->thumbPath="./Uploads/tx/";
			if(!$upload->upload()){
				$this->error($upload->getErrorMsg());
			}else{
				$info=$upload->getUploadFileInfo();
				$dir=$upload->thumbPath.$_SESSION['uid'].".".$info[0]['extension'];
				$dir=substr($dir, 1);
				$this->USER->where("uid='".$_SESSION['uid']."'")->setField("image",$dir);
			}
			
		}
	}