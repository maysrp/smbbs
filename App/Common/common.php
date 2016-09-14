<?php
	function js(){
		$all=D('Site')->find(1);
		return $all['js'];
	}