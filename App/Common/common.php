<?php
	function js(){
		$all=D('Site')->find(1);
		return $all['js'];
	}
	function postimage($v){
		$image=json_decode($v,true);
		if(count($image)){
			echo "<p>".$image['0']."</p>";
		}
	}