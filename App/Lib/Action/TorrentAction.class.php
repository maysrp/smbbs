<?php
	class TorrentAction extends Action{
		private $TORRENT;
		function __construct(){
			parent::__construct();
			$this->TORRENT=D('Torrent');
		}
		function index(){
			$this->display();
		}
		

		function uptorrent(){//Hash
			if($_FILES['torrent']){
				import('ORG.Net.UploadFile');
				$up=new UploadFile();
				$up->maxSize=10000000;
				$up->allowExts=array('torrent','TORRENT');
				$up->savePath='./torrent/';
				if(!$up->upload()){
					$this->error($up->getErrorMsg());
					return;
				}else{
					$inf=$up->getUploadFileInfo();
				}
				$path=$inf['0']['savepath'].$inf[0]['savename'];
				$name=$inf['0']['name'];
				//Magnet
				include 'BEncode.php';
				include 'BDecode.php';
				$torrent_content = file_get_contents($path);
				$desc = BDecode($torrent_content);
				$info = $desc['info'];
				$hash = strtoupper(sha1( BEncode($info) ));
				$src="magnet:?xt=urn:btih:".$hash;
				if($hash){
					if($ju=$this->TORRENT->where("magnet='".$src."'")->select()){
						$this->show($ju[0]['hash'],$src);
						return;
					}
					$add['time']=time();
					$add['magnet']=$src;
					$add['name']=$name;
					$add['hash']=$hash;
					$add['torrent']=$path;
					$add['ip']=$_SERVER['REMOTE_ADDR'];
					$this->TORRENT->add($add);
				}else{
					$this->error("转换失败！");
					return;
				}
				$this->show($hash,$src);
			}else{
				$this->redirect("./index.php/Torrent/index");
			}
		}
		function show($hash,$magnet){
			if(!$hash){
				$this->error("无效hash");
				return;
			}else{
				$this->assign("hash",$hash);
				$this->assign("magnet",$magnet);
				$this->display("Torrent:show");
			}

		}
		function search(){
			$this->redirect("./index.php/Torrent/index");

			return;

			//forbidden
			$name=$_GET['name'];
			if(!$name){
				$this->display();
				return;
			}
			$ac['name']=array('like',"%".$name."%");
			$se=$this->TORRENT->where($ac)->select();
			$this->assign("magnet",$se);
			$this->display();
			//search

		}
		
	}