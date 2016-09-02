<?php
	class MessageModel extends Model{
		function num(){//返回个人总数目
			$uid=$_SESSION['uid'];
			$un=$this->where("start_uid='".$uid."' OR  connect_uid='".$uid."' ")->count();
			return $un;
		}
		function myall(){//本人全部消息
			$uid=$_SESSION['uid'];
			$un=$this->where("start_uid='".$uid."' OR  connect_uid='".$uid."' ")->select();
			return $un;


		}
		function ownmid($mid){
			$info=$this->find($mid);
			if($info['start_uid']==$_SESSION['uid'] || $info['connect_uid']==$_SESSION['uid']){
				return $info;
			}
		}
		function read($mid){
			$info=$this->ownmid($mid);
			if($info){
				if($info['start_uid']==$info['remind']||$info['connect_uid']==$info['remind']){
					$this->where("mid='".$mid."'")->setField("remind","");
					return $info;
				}
				return $info;
			}
		}
		function send($info){//返回mid
			if(!$info['mid']){
				$m['uid']=$_SESSION['uid'];
				$m['text']=$info['text'];
				$m['time']=time();
				$message[]=$m;
				$add['message']=json_encode($message);
				$add['start_uid']=$_SESSION['uid'];
				$add['connect_uid']=$info['connext_uid'];
				$add['time']=time();
				return $this->add($add);//返回mid
			}else{
				$in=$this->ownmid($info['mid']);
				if($in){
					$message=json_decode($info['message'],true);//
					$send['uid']=$_SESSION['uid'];
					$send['text']=$info['text'];
					$send['time']=time();
					$message[]=$send;
					$add['message']=json_encode($message);
					if($in['start_uid']==$_SESSION['uid']){
						$add['remind']=$in['connect_uid'];
					}else{
						$add['remind']=$_SESSION['uid'];
					}
					$add['retime']=time();
					$this->where("mid='".$info["mid"]."'")->save($add);
					return $info['mid'];
				}
			}
		}
	}