<?php
	class SiteAction extends Action{
		function __construct(){
			parent::__construct();
			A('Admin')->login();
		}
		function footer(){
			if($_POST){
				$x=M('Site')->where("site=1")->setField("footer",$_POST['footer']);
				if($x){
					$this->success("修改成功");
				}else{
					$this->error("ERROR!");
				}
			}else{
				$this->error("ERROR!");
			}

		}
		function background(){
			if($_POST){
				$x=M('Site')->where("site=1")->setField("background",$_POST['background']);
				if($x){
					$this->success("修改成功");
				}else{
					$this->error("ERROR!");
				}
			}else{
				$this->error("ERROR!");
			}

		}



	}



?>