<?php
	class SiteAction extends Action{
		function footer(){
			if($_POST){
				$x=M('Site')->where("site=1")->setField("footer",$_POST['footer']);
				if($x){
					$this->success("修改成功");
				}else{
					$this->error("ERROR!");
				}
			}else{
				$this->error("ERROR!");
			}

		}



	}



?>