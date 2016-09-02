<?php
	class UserModel extends Model{
		function login($auth){
			$jugg['name']=$auth['name'];
			$jugg['password']=md5($auth['name'].$auth['password']);
			$jm=$this->where($jugg)->select();
			if($jm){
				$_SESSION['uid']=$jm[0]['uid'];
				$_SESSION['name']=$jm[0]['name'];
				$join['lasttime']=time();
				$join['lastip']=$_SERVER['REMOTE_ADDR'];
				$jmjson=json_decode($jm[0]['joininfo'],true);
				$jmjson[]=$join;
				$join['joininfo']=json_encode($jmjson);
				$this->where("uid='".$_SESSION['uid']."'")->save($join);
			}else{
				return "用户名或者密码错误！";
			}
		}
		function cookie(){//cookie
			$time=time();
			$uid=$_SESSION['uid'];
			if(!$_SESSION['uid']){
				return "未登入";
			}
			$rand=mt_rand();
			$and=$uid.$time.$rand;
			$auth=md5($and);
			$ju=$this->where("uid='".$uid."'")->setField("cookie",$auth);
			if($ju){
				setcookie('cookie',$auth,time()+86400*30,"/");
			}
		}
		function auth(){
			if(!$_COOKIE['cookie']){
				return;//防止为空验证
			}
			if($_SESSION['uid']){
				return;
			}
			$auth['cookie']=$_COOKIE['cookie'];
			$jm=$this->where($auth)->select();
			if($jm){
				$_SESSION['uid']=$jm['0']['uid'];
				$_SESSION['name']=$jm['0']['name'];
				$join['lasttime']=time();
				$join['lastip']=$_SERVER['REMOTE_ADDR'];
				$jmjson=json_decode($jm[0]['joininfo'],true);
				$jmjson[]=$join;
				$join['joininfo']=json_encode($jmjson);
				$this->where("uid='".$_SESSION['uid']."'")->save($join);
			}
		}
		function pointadd($num){//1-10 系统加减 1到10分内
			$num=(int)$num;
			if($num>=10){
				$num=10;
			}
			if($num<=0 || !isset($num)){
				$num=1;
			}
			$this->where("uid='".$_SESSION['uid']."'")->setInc("point",$num);
		}
		function pointdec($num){//1-10
			$num=(int)$num;
			if($num>=10){
				$num=10;
			}
			if($num<=0 || !isset($num)){
				$num=1;
			}
			$this->where("uid='".$_SESSION['uid']."'")->setDec("point",$num);
		}
		function postadd(){
			$this->where("uid='".$_SESSION['uid']."'")->setInc("pnum",1);
		}
		function postdec(){
			$this->where("uid='".$_SESSION['uid']."'")->setDec("pnum",1);
		}
		function repostadd(){
			$this->where("uid='".$_SESSION['uid']."'")->setInc("rnum",1);
		}
		function repostdec(){
			$this->where("uid='".$_SESSION['uid']."'")->setDec("rnum",1);
		}
		function useradd($user){
			if(!$user){
				return;
			}
			$add['name']=$user['name'];
			$name=$this->where($add)->select();
			if($name){
				return "用户名重复！请注册其他用户名！";
			}
			$add['password']=$user['password'];
			if(strlen($add['password'])<6){
				return "密码必须大于6位";
			}
			$add['joinip']=$_SERVER['REMOTE_ADDR'];
			$add['jointime']=time();
			$add['lastip']=$add['joinip'];
			$add['lasttime']=time();
			$add['password']=md5($add['name'].$add['password']);
			$join=$this->add($add);
			if($join){
				$_SESSION['uid']=$join;
				$_SESSION['name']=$add['name'];
				$this->cookie();
			}
		}
		function logout(){
			session_destroy();
			$this->where("uid='".$_SESSION['uid']."'")->setField("cookie","");
			setcookie("cookie","",time()-3600,"/");
		}
		function change($old){
			$ju['name']=$_SESSION['name'];
			$ju['password']=md5($_SESSION['name'].$old['password']);
			$jum=$this->where($ju)->select();
			if(!$jum){
				return "原密码错误！";
			}
			$ju['password']=md5($_SESSION['name'].$old['new']);
			$this->where("uid='".$_SESSION['uid']."'")->save($ju);
		}
	}