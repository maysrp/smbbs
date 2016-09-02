<?php 
	class RepostAction extends Action{
		private $POST;
		private $REPOST;
		function __construct(){
			parent::__construct();
			$this->POST=D('POST');
			$this->REPOST=D('Repost');
		}
		
		function send(){
			

		}

	}