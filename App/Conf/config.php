<?php
return array(
	//'配置项'=>'配置值'
    'DEFAULT_MODULE'     => 'Index', //默认模块
    'SESSION_AUTO_START' => true, //是否开启session
    'DB_TYPE'      =>  'mysql',     // 数据库类型  
    'DB_HOST'      =>  'localhost',     // 服务器地址  
    'DB_NAME'      =>  'bbs',     // 数据库名  
    'DB_USER'      =>  'root',     // 用户名  
    'DB_PWD'       =>  '',     // 输入安装MySQL时设置的密码  
    'DB_PORT'      =>  '3306',     // 端口  
    'DB_PREFIX'    =>  'think_',     // 数据库表前缀  
    'DB_DSN'       =>  '',     // 数据库连接DSN 用于PDO方式 
    'LAYOUT_ON'    =>   true,
    'LAYOUT_NAME'  =>   'Public/index', 
    
);
?>