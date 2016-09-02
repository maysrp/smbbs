<?php
	class AdminModel extends Model{
		function autologin(){
			if($_SESSION['aid']){//每次登入时设置
				return;
			}
			$all=$this->select();
			$admin=$all['0'];
			if($_SESSION['uid']==$admin['uid']){
				$_SESSION['aid']=$admin['aid'];
				$this->logininfo();
			}else{
				return "你不是管理员";
			}
		}
		function logininfo(){
			if(!$_SESSION['aid']){
				return "权限不足";
			}
			$info['lastip']=$_SERVER['REMOTE_ADDR'];
			$info['lasttime']=time();
			$in=$this->find($_SESION['aid']);
			$inin=json_decode($in['info'],true);
			$inin[]=$info;
			$info['aid']=$_SESSION['aid'];
			$info['info']=json_encode($inin);
			$this->save($info);
		}
	}