<?php
	class LpModel extends Model{
		//point level 同时获得;type 0 为减 1为加
		function lp($num){
			$uid=$_SESSION['uid'];
			if($uid){
				$this->level($num,$uid);
				$this->point($num,$uid);
			}
		}
		function lp_dec($num){
			$uid=$_SESSION['uid'];
			if($uid){
				$this->level_dec($num,$uid);
				$this->point_dec($num,$uid);

			}
		}


		function lp_uid($num,$uid){
			if($uid){
				$this->level($num,$uid);
				$this->point($num,$uid);
			}
		}
		function lp_uid_dec($num,$uid){
			if($uid){
				$this->level_dec($num,$uid);
				$this->point_dec($num,$uid);

			}
		}



		function level($level,$uid){
			if($level){
				M('User')->where("uid='".$uid."'")->setInc("level",$level);
				$add['uid']=$uid;
				$add['time']=time();
				$add['level']=$level;
				$add['type']=1;
				$this->add($add);
			}
		}
		function level_dec($level,$uid){
			if($level){
				M('User')->where("uid='".$uid."'")->setDec("level",$level);
				$add['uid']=$uid;
				$add['time']=time();
				$add['level']=$level;
				$add['type']=0;
				$this->add($add);
			}
		}



		function point($point,$uid){
			if($point){
				M('User')->where("uid='".$uid."'")->setInc("point",$point);
				$add['uid']=$uid;
				$add['time']=time();
				$add['point']=$point;
				$add['type']=1;
				$this->add($add);
			}

		}
		function point_dec($point,$uid){
			if($point){
				M('User')->where("uid='".$uid."'")->setDec("point",$point);
				$add['uid']=$uid;
				$add['time']=time();
				$add['point']=$point;
				$add['type']=0;
				$this->add($add);
			}

		}
	}