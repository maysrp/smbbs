<?php
	class AdminAction extends Action{
		private $ADMIN;
		function __construct(){
			parent :: __construct();
			$this->ADMIN=D('Admin');
			$this->login();
		}
		function index(){
			$this->display();

		}
		function login(){//进入后自动加载
			$ed=$this->ADMIN->autologin();
			if($ed){
				$this->error($ed,"/admin.php/User/login");
			}
		}

	}