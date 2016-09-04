<?php
	class RemindAction extends Action{
		function index(){
			$all=D('Remind')->unread();
			$this->assign("remind",$all);
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
        	$isread=D('Remind')->isread();
        	$this->assign("remind",$isread);
        	$this->display();
    	}		
	}