<?php
	class BoardAction extends Action{
		private $BOARD;
		function __construct(){
			parent::__construct();
			$this->BOARD=D('Board');
			A('Admin')->login();
		}
		function index(){
			$bk=$this->BOARD->select();
			$this->assign('board',$bk);
			$this->display();
		}
		function add(){
			if(!$_POST){
				$this->display();
			}else{
				$board['name']=$this->_post('name');
				$ed=$this->BOARD->addboard($board);
				if($ed){
					$this->error($ed);
					return;
				}
				$this->success("添加成功！","/admin.php/Admin");
			}
		}
		
		function edit(){
			$bid=(int)$_GET['bid'];
			if($_POST){
				$board['bid']=$bid;
				$board['name']=$_POST['name'];
				$ed=$this->BOARD->edit($board);
				if($ed){
					$this->error($ed);
					return;
				}
				$this->success("修改成功！","/admin.php/Admin");
			}else{
				$board=$this->BOARD->find($bid);
				$this->assign('board',$board);
				$this->display();
			}
		}
		function del(){
			$bid=(int)$_GET['bid'];
			$this->BOARD->where("bid='".$bid."'")->delete();
			D("Post")->where("bid='".$bid."'")->delete();
			$this->success("删除成功！");

		}
	}