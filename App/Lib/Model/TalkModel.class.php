<?php
	class TalkModel extends Model{
		//[suid: ,uid: ,text: ,time:, ]
		function verify($tid){//验证回复所有者
			$uid=$_SESSION['uid'];
			$talk_info=$this->find($tid);
			if($talk_info){
				if(in_array($uid, $talk_info)){
					return $talk_info;
				}
			}
		}
		function info($tid){ //一次性返回所有值
			$talk_info=$this->verify($tid);
			if($talk_info['info']){
				$info=json_decode($talk_info['info'],true);
				return $info;//获取回复
			}
		}
		function status($tid,$info_key){
			$talk_info=$this->verify($tid);
			if($talk_info['info_key']!=$info_key){
				$info=json_decode($talk_info['info'],true);//start 0;
				$all_count=count($info);
				for ($i=$info_key; $i <$all_count ; $i++) { 
					$re[$i]=$all_count;
				}
				return $re;//返回【笨重的方法】
			}
		}
		function create_talk($uid,$text){
			$add['suid']=$_SESSION['uid'];
			$add['time']=time();
			if(D('User')->verify($uid)){
				$add['uid']=$uid;
				$info['suid']=$add['suid'];
				//$info['uid']=$add['uid'];
				$info['text']=$text;
				$info['time']=$add['time'];
				$json[]=$info;
				$add['info']=json_encode($json);
				$add['info_key']=1;
				$add['status']=$add['suid'];//接收者的，如果被查看，改为发送者
				$add['retime']=$add['time'];
				$this->add($add);
			}
		}
		function addone($tid,$text){
			$info=$this->info($tid);//
			$time=time();
			$count=count($info);
			$add_info['time']=$time;
			$add_info['suid']=$_SESSION['uid'];
			$add_info['text']=$text;
			$info[]=$add_info;
			$save['info']=json_encode($info);
			$save['info_key']=$count;
			$save['tid']=$tid;
			$save['status']=$_SESSION['uid'];
			$save['retime']=$time;
			$this->save($save);
			$uid=$this->oppo($tid);
			$info_remind['xid']=$tid;
			$info_remind['type']="talk";
			$info_remind['uid']=$uid;
			$info_remind['lc']=0;
			D('Remind')->remind($info_remind);
		}
		function found_talk($uid){
			$uid_2=$_SESSION['uid'];
			$x=$this->where("uid='".$uid."' and suid='".$uid_2."' ")->select();
			$y=$this->where("uid='".$uid_2."' and suid='".$uid."' ")->select();
			if($x||$y){
				$info=$x?$x:$y;
				return $info[0]['tid'];//
			}else{//没有会话则可以的等待发出信息create
				//
			}
		}
		function send($uid,$text){
			$tid=$this->found_talk($uid);
			if($tid){
				$info=$this->info($tid);
				if($text){
					$this->addone($tid,$text);
					$info_remind['xid']=$tid;
					$info_remind['type']="talk";
					$info_remind['uid']=$uid;
					$info_remind['lc']=0;
					D('Remind')->remind($info_remind);
				}else{
					return $info;
				}
			}else{
				if($text){
					$this->create_talk($uid,$text);
					$tid=$this->found_talk($uid);
					$info_remind['xid']=$tid;
					$info_remind['type']="talk";
					$info_remind['uid']=$uid;
					$info_remind['lc']=0;
					D('Remind')->remind($info_remind);
				}else{
					//
				}

			}
		}
		function oppo($tid){
			$uid=$_SESSION['uid'];
			$talk=$this->verify($tid);
			$reuid=($uid!=$talk['uid'])?$talk['uid']:$talk['suid'];
			return $reuid;

		}
		function mytalk(){
			$uid=$_SESSION['uid'];
			$all=$this->where("suid='".$uid."' OR uid='".$uid."'")->order("retime desc")->select();
			return $all;
		}
		function mytalk_10(){
			$all=$this->mytalk();
			$talk=array_slice($all, 0,10);
			return $talk;
		}
		function readed($tid){
			$info=$this->verify($tid);
			if ($info['status']!=$_SESSION['uid'] && $info['status']!=0 ) {
				$this->where("tid='".$tid."'")->setField("status",0);	
			}
		}
	}