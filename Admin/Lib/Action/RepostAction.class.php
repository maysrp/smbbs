<?php
	class RepostAction extends Action {
		function __construct(){
			parent::__construct();
			A('Admin')->login();
		}
		function del(){
			A('Admin')->login();
			$rid=(int)$_GET['rid'];
			D('Repost')->del($rid);
			$this->success("删除成功！");
		}
	}