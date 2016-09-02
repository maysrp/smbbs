<?php
	class PostAction extends Action{
		private $POST;
		function __construct(){
			parent::__construct();
			$this->POST=D('Post');
			A('User')->auto();
		}
		function add(){
			if($_POST){
				$post['text']=$_POST['text'];
				$post['title']=$_POST['title'];
				$post['bid']=$_GET['bid'];
				$ed=$this->POST->sendpost($post);
				if($ed){
					$this->error($ed);
					return;
				}
				//SQL 获取最新贴
				$newpost=$this->POST->newpost();
				D('User')->postadd();
				$this->redirect("./index.php/Index/post?pid=$newpost[pid]");
				//跳转
			}else{
				$board=D("Board")->bidname($_GET['bid']);
				$this->assign("board",$board);
				$this->display();		
			}
		}
		function edit(){
			$pid=(int)$_GET['pid'];
			$jugg=$this->POST->ownpost($pid);
			if($jugg){
				$this->error($jugg);
				return;
			}
			$inf=$this->POST->find($pid);
			if(!$_POST){
				$board=D("Board")->bidname($_GET['bid']);
				$this->assign("board",$board);
				$this->assign("post",$inf);
				$this->display();
			}else{
				$post['pid']=$pid;
				$post['title']=$_POST['title'];
				$post['text']=$_POST['text'];
				$ed=$this->POST->renew($post);
				if($ed){
					$this->error($ed);
				}
				$this->redirect("./index.php/Index/post?pid=$post[pid]");
			}
		}
		function delpost(){
			$pid=$_GET['pid'];
			$jugg=$this->POST->ownpost($pid);
			if($jugg){
				$this->error($jugg);
				return;
			}
			$this->POST->where("pid='".$pid."'")->delete();
			D('User')->postdec();
			header("Location:$_SERVER[HTTP_REFERER]");
		}

	}