<?php
	class RemindAction extends Action{
		function index(){
			$all=D('Remind')->unread();
			$count=count($all);
			import("ORG.Util.Page");
			$Page=new Page($count,10);
			if ($_GET['p']<1) {
				$_GET['p']=1;
			}else{
				$_GET['p']=(int)$_GET['p'];
			}
			$Page->setConfig("header","条消息");
			$list=array_slice($all,10*($_GET['p']-1),10);
			$show=$Page->show();
			$this->assign("page",$show);
			$this->assign("remind",$list);
			$this->display();
		}
		function read(){
			$eid=$_GET['eid'];
			$remind=D("Remind")->read($eid);
			if($remind){
				D('Remind')->where("eid='".$eid."'")->setField("isread",1);
				$this->redirect($remind);
			}else{
				$this->error("不存在该消息！");
			}
		}
		function readall(){
			$ar=D('Remind')->all();
			foreach ($ar as $key => $value) {
				D('Remind')->reone($value['eid']);
			}
			$this->success("全部设置为已读");
		}
    	function isread(){
        	$all=D('Remind')->isread();
        	$count=count($all);
			import("ORG.Util.Page");
			$Page=new Page($count,10);
			if ($_GET['p']<1) {
				$_GET['p']=1;
			}else{
				$_GET['p']=(int)$_GET['p'];
			}
			$Page->setConfig("header","条消息");
			$list=array_slice($all,10*($_GET['p']-1),10);
			$show=$Page->show();
			$this->assign("page",$show);
        	$this->assign("remind",$list);
        	$this->display();
    	}		
	}