<?php
	class AdminAction extends Action{
		private $ADMIN;
		function __construct(){
			parent :: __construct();
			$this->ADMIN=D('Admin');
			$this->login();
		}
		function index(){
			$site=M("Site")->find(1);
			$this->assign("site",$site['footer']);
			$this->display();

		}
		function login(){//进入后自动加载
			$ed=$this->ADMIN->autologin();
			if($ed){
				$this->error($ed,"/index.php/User/login");
			}
		}

	}