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
			$count=count($post);
			import('ORG.Util.Page');
			$Page=new Page($count,10);
			$Page->setConfig('header',"个主题");
			if($_GET['p']<1){
            	$_GET['p']=1;
            }else{
                $_GET['p']=(int)$_GET['p'];//
            }
            $list=array_slice($post,10*($_GET['p']-1),10);
            $show=$Page->show();
            $this->assign("page",$show);
			$this->assign("post",$list);
			$this->assign("info",$info);
			$this->display();
		}

	}