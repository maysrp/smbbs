<?php
	class PostModel extends Model{
		function sendpost($post){
			$add['text']=$post['text'];
			$add['title']=$post['title'];
			$add['time']=time();
			$add['uid']=$_SESSION['uid'];
			$add['bid']=$post['bid'];
			if($post['bid']<=0){
				return "板块错误";
			}
			$this->add($add);
			D('Lp')->lp(5);
		}
		function ownpost($pid){
			if(!$pid){
				return "不存在该贴！";
			}
			$x=$this->find($pid);
			if($x['uid']!=$_SESSION['uid']){
				return "权限不符！";
			}

		}
		function newpost(){
			$all=$this->where("uid='".$_SESSION['uid']."'")->order('time desc')->select();
			return $all['0'];//返回最新贴
		}
		function renew($post){
			$post['retime']=time();
			$this->where("pid='".$post['pid']."'")->save($post);
		}
		function exist($pid){
			$pi=$this->find($pid);
			if($pi){
				return $pi;
			}
		}
		function retime($pid){//
			if($po=$this->exist($pid)){
				$time=time();
				$this->where("pid='".$pid."'")->setField("retime",$time);
				D('Lp')->lp_uid(1,$po['uid']);//回复一次加一
			}

		}
	}