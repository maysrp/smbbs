<?php
	class ControlAction extends Action{
		function index(){
			A('User')->auto();



			$this->display();
		}
	}


?>