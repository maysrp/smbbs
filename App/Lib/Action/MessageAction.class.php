<?php
	class MessageAction extends Action{
		private $MESSAGE;
		function __construct(){
			parent::__construct();
			$this->MESSAGE=D('Message');
		}
		function read(){

		}
	}