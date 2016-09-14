<?php
	class RepostModel extends Model{
		function del($rid){
			$this->where("rid='".$rid."'")->setField("text","<p class=\"text-warning\">内容已删除！</p>");
		}
	}