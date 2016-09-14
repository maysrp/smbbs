<?php
	class PostAction extends Action{
		private $POST;
		function __construct(){
			parent::__construct();
			$this->POST=D('Post');
			A('Admin')->login();
		}
		function delpost(){//删除
			$pid=$_GET['pid'];
			$this->POST->where("pid='".$pid."'")->delete();
			D("Repost")->where("pid='".$pid."'")->delete();
			//D('User')->postdec();
			header("Location:$_SERVER[HTTP_REFERER]");
		}
        function delrepost(){
            $rid=$_GET['rid'];
            D("Repost")->del($rid);
            //D('User')->postdec();
            header("Location:$_SERVER[HTTP_REFERER]");

        }
    function post(){
        $pid=(int)$_GET['pid'];
        $ex=D('Post')->exist($pid);
        if(!$ex){
            $this->error("不存在该帖子");
            return;
        }
        $reall=D('Repost')->where("pid='".$pid."'")->select();
        //D('Post')->where("pid='".$pid."'")->setInc("view","1");
        $this->assign("repost",$reall);
        $this->assign("post",$ex);
        $this->display();
    }
	function board(){
        $bid=(int)$_GET['bid'];
        if(!$bid){
        	$bos=D('Board')->select();
        	$bid=$bos[0]['bid'];
        }
        $board=D('Board')->exist($bid);
        if(!$board){
            $this->error("不存在该板块！");
            return;
        }
        if($_GET['type']=="repost"){
            $post=D("Post")->where("bid='".$bid."'")->order("retime desc")->select();

        }else{
            $post=D("Post")->where("bid='".$bid."'")->order("time desc")->select();
        }
        $this->assign("post",$post);
        $this->display();
    }
    function change(){
        if($_POST){
            $pid=(int)$_POST['pid'];
            $board=(int)$_POST['board'];
            $x=D('Post')->move($pid,$board);
            if ($x) {
                $this->success("移动成功！");
            }
        }else{
            $this->error();
        }
    }
}