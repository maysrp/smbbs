<?php
// 本类由系统自动生成，仅供测试用途
class IndexAction extends Action {
    public function index(){
         if($_GET['type']=="repost"){
            $count=D("Post")->order("retime desc")->count();

        }else{
            $count=D("Post")->order("time desc")->count();
        }
        import('ORG.Util.Page');
        $Page=new Page($count,20);
        foreach ($_GET as $key => $value) {
            $Page->parameter.="$key=".urlencode($value)."&";
            # code...
        }
        if($_GET['type']=="repost"){
            $post=D("Post")->order("retime desc")->limit($Page->firstRow.','.$Page->listRows)->select();
        }else{
            $post=D("Post")->order("time desc")->limit($Page->firstRow.','.$Page->listRows)->select();
        }
        $show=$Page->show();
        $this->assign("show",$show);
        $this->assign("post",$post);
    	$this->display();
    	//$this->error();
	//$this->show('<style type="text/css">*{ padding: 0; margin: 0; } div{ padding: 4px 48px;} body{ background: #fff; font-family: "微软雅黑"; color: #333;} h1{ font-size: 100px; font-weight: normal; margin-bottom: 12px; } p{ line-height: 1.8em; font-size: 36px }</style><div style="padding: 24px 48px;"> <h1>:)</h1><p>欢迎使用 <b>ThinkPHP</b>！</p></div><script type="text/javascript" src="http://tajs.qq.com/stats?sId=9347272" charset="UTF-8"></script>','utf-8');
    }
    function post(){
    	$pid=(int)$_GET['pid'];
    	$ex=D('Post')->exist($pid);
    	if(!$ex){
    		$this->error("不存在该帖子");
  			return;
    	}
    	$reall=D('Repost')->reall($pid);
        $count=count($reall);
        import('ORG.Util.Page');
        $Page=new Page($count,25);
        $Page->setConfig('header',"条评论");
        if($_GET['p']<1){
             $_GET['p']=1;
        }else{
               $_GET['p']=(int)$_GET['p'];//
        }
        $list=array_slice($reall, 25*($_GET['p']-1),25);
        $show=$Page->show();
        $this->assign('page',$show);
        D('Post')->where("pid='".$pid."'")->setInc("view","1");
    	$this->assign("repost",$list);
    	$this->assign("post",$ex);
    	$this->display();
    }
    /* 需要通知*/
    function repost(){
    	$pid=(int)$_GET['pid'];
        if(!trim(strip_tags($_POST['text']))){
            $this->error("回复不能为空！");
            return;
        }
    	A('User')->auto();//LOGIN CHECK
    	$repost['text']=$_POST['text'];
    	$repost['pid']=$_POST['pid'];
    	$repost['uid']=$_SESSION['uid'];
    	$repost['time']=time();
    	D('Repost')->add($repost);
        D('User')->repostadd();
        D('Post')->where("pid='".$repost['pid']."'")->setInc("num","1");
        //remind
        $postuid=D('Post')->find($repost['pid']);
        $rem['uid']=$postuid['uid'];
        $rem['type']="post";
        $rem['xid']=$repost['pid'];
        D('Remind')->remind($rem);
        D('Post')->retime($repost['pid']);
        //
    	header("Location:$_SERVER[HTTP_REFERER]");
    }
    function rere(){
    	A('User')->auto();//LOGIN CHECK
    	$rid=(int)$_GET['rid'];
    	$isexist=D('Repost')->find($rid);
    	 if(!$isexist){
    	 	$this->error("不存在该回复!");
    	 	return;
    	 }
    	 if($_POST){
            if(!trim(strip_tags($_POST['text']))){
                $this->error("字数不能为空！");
                return;
            }
    	 	$repost['text']=$_POST['text'];
    		$repost['pid']=$_POST['pid'];
    		$repost['uid']=$_SESSION['uid'];
    		$repost['time']=time();
    		$xid=D('Repost')->add($repost);
            D('User')->repostadd();
            $pid=$repost['pid'];
            D('Post')->where("pid='".$pid."'")->setInc("num","1");

            //remind
            $repostuid=D('Repost')->find($rid);
            $rem['uid']=$repostuid['uid'];
            $rem['type']="repost";
            $rem['xid']=$xid;
            D('Remind')->remind($rem);
            D("Post")->retime($pid);
    		$this->redirect("./index.php/Index/post?pid=$repost[pid]");
    	 }else{
    	 	$this->assign("re",$isexist);
    	 	$this->display();
    	 }
    }
    /*需要通知*/
    function board(){
        $bid=(int)$_GET['bid'];
        $board=D('Board')->exist($bid);
        if(!$board){
            $this->error("不存在该板块！");
            return;
        }
        if($_GET['type']=="repost"){
            $count=D("Post")->where("bid='".$bid."'")->order("retime desc")->count();

        }else{
            $count=D("Post")->where("bid='".$bid."'")->order("time desc")->count();
        }
        import('ORG.Util.Page');
        $Page=new Page($count,20);
        foreach ($_GET as $key => $value) {
            $Page->parameter.="$key=".urlencode($value)."&";
            # code...
        }
        if($_GET['type']=="repost"){
            $post=D("Post")->where("bid='".$bid."'")->order("retime desc")->limit($Page->firstRow.','.$Page->listRows)->select();
        }else{
            $post=D("Post")->where("bid='".$bid."'")->order("time desc")->limit($Page->firstRow.','.$Page->listRows)->select();
        }
        $show=$Page->show();
        $this->assign("show",$show);
        $this->assign("post",$post);
        $this->display();
    }
    function re(){
        $rid=(int)$_GET['rid'];
        $ex=D('Repost')->exist($rid);
        if($ex){
            $this->assign("repost",$ex);
            $this->display();
        }
    }
    function search(){
        $title=$_GET['title'];
        $se['title']=array('like',"%".$title."%");
        $post=D("Post")->where($se)->select();
        $this->assign("post",$post);
        $this->display();
    }
}