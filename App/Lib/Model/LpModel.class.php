<?php
	class LpModel extends Model{
		//point level 同时获得
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
			}
		}
		function level_dec($level,$uid){
			if($level){
				M('User')->where("uid='".$uid."'")->setDec("level",$level);
			}
		}



		function point($point,$uid){
			if($point){
				M('User')->where("uid='".$uid."'")->setInc("point",$point);
			}

		}
		function point_dec($point,$uid){
			if($point){
				M('User')->where("uid='".$uid."'")->setDec("point",$point);
			}

		}
	}