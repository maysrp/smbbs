<?php
	class SignAction extends Action{
		function sign(){
			A('User')->auto();
			$user=M('User')->find($_SESSION['uid']);
			$date=date("Ymd");
			if($user){
				if ($user['sign']!=$date) {
					M('User')->where("uid='".$_SESSION['uid']."'")->setField("sign",$date);
					//point level
					$sign=M('Sign')->where("date='".$date."'")->select();
					if(!$sign){
						$add['date']=date("Ymd");
						M('Sign')->add($add);
					}
					$info=json_decode($sign['info'],true);
					$user=json_decode($sign['user'],true);
					if(in_array($_SESSION['uid'], $user)){//User
						$this->success("今天你已经签到！");
					}else{
						$user[]=$_SESSION['uid'];
						$user_info['uid']=$_SESSION['uid'];
						$user_info['time']=time();
						$info[]=$user_info;
						$save['user']=json_encode($user);
						$save['info']=json_encode($info);
						M('Sign')->where("date='".$date."'")->save($save);//add
						$this->success("完成签到！");
					}
				}else{
					$this->success("今天你已经签到！");
				}
			}else{
				$this->error("失败！");
			}
		}
		function ajax_sign(){
			A('User')->auto();
			$user=M('User')->find($_SESSION['uid']);
			$date=date("Ymd");
			if($user){
				if ($user['sign']!=$date) {
					M('User')->where("uid='".$_SESSION['uid']."'")->setField("sign",$date);
					//point level
					$sign=M('Sign')->where("date='".$date."'")->select();
					if(!$sign){
						$add['date']=date("Ymd");
						M('Sign')->add($add);
					}
					$info=json_decode($sign['info'],true);
					$user=json_decode($sign['user'],true);
					if(in_array($_SESSION['uid'], $user)){//User
						//$this->success("今天你已经签到！");
						$re['re']="success";
						$re['x']="今天你已经签到！";
					}else{
						$user[]=$_SESSION['uid'];
						$user_info['uid']=$_SESSION['uid'];
						$user_info['time']=time();
						$info[]=$user_info;
						$save['user']=json_encode($user);
						$save['info']=json_encode($info);
						M('Sign')->where("date='".$date."'")->save($save);//add
						//$this->success("完成签到！");
						$re['re']="success";
						$re['x']="签到完成";
					}
				}else{
					//$this->success("今天你已经签到！");
					$re['re']="success";
					$re['x']="今天你已经签到！";
				}
			}else{
				//$this->error("失败！");
				$re['re']="error";
				$re['x']="未知错误！";
			}
			$this->ajaxReturn($re);
		}
	}