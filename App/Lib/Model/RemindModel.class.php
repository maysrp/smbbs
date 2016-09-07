<?php
	class RemindModel extends Model{
		function remind($info){
			if($_SESSION['uid']==$info['uid']){
				return;
			}
			$in['uid']=$info['uid'];//接收消息的人
			$in['time']=time();
			$in['type']=$info['type'];
			$in['xid']=$info['xid'];
			$in['sid']=$_SESSION['uid'];
			$in['lc']=$info['lc'];
			if($in['type']=="post"){
				$title=D('Post')->find($in['xid']);
				$text=uidname($in['sid'])."回复了您的主题《".$title['title']."》;<span class=\"text-warning\">第".$in['lc']."楼</span>";
			}elseif ($in['type']=="repost") {
				$reinfo=D('Repost')->find($in['xid']);
				$title=D('Post')->find($reinfo['pid']);
				$text=uidname($in['sid'])."在主题《".$title['title']."》中回复了您的回复;<span class=\"text-warning\">第".$in['lc']."楼</span>";
			}
			$eid=$this->add($in);
			$text="<a href=/index.php/Remind/read?eid=".$eid.">".$text."</a>";
			$this->where("eid='".$eid."'")->setField("info",$text);
		}
		function read($rid){
			$info=$this->find($rid);
			if($info){
				if($info['uid']==$_SESSION['uid']){
					$this->where("rid='".$rid."'")->setField("isread",1);
					if($info['type']=='post'){
						if($info['lc']<25){
							return "./index.php/Index/post?pid=".$info['xid'];
						}else{
							$p=$info['lc']/25+1;
							$p=(int)($p);
							return "./index.php/Index/post?pid=".$info['xid']."&p=".$p;
						}
					}elseif($info['type']=='repost'){
						return "./index.php/Index/rere?rid=".$info['xid'];
					}

					//return $info;
				}else{
					//ERROR 权限不服
				}
			}else{
				//无此消息
			}
		}
		function unread(){//返回所有未读消息
			$uid=$_SESSION['uid'];
			$un=$this->where("uid='".$uid."' AND isread=0")->select();
			return $un;
		}
		function num(){//返回未读数目
			$uid=$_SESSION['uid'];
			$un=$this->where("uid='".$uid."' AND isread=0")->count();
			return $un;

		}
		function all(){
			$all=$this->where("uid='".$_SESSION['uid']."' AND isread=0")->select();
			return $all;
		}
		function reone($eid){
			$info=$this->find($eid);
			if($_SESSION['uid']==$info['uid']){
				$this->where("eid='".$eid."'")->setField("isread",1);
			}
		}
		function isread(){
			$all=$this->where("uid='".$_SESSION['uid']."' AND isread=1")->select();
			return $all;
		}

	}