<?php
	class RepostModel extends Model{
		function del($rid){
			$this->where("rid='".$rid."'")->setField("text","内容已删除！");
		}
	}