<?php
	header('Content-Type:text/html; charset=utf-8');
	error_reporting(E_ALL & ~E_NOTICE);
	
	define('DB_HOST', 'localhost');
	define('DB_PORT', '3306');
	define('DB_USER', 'root');
	define('DB_PWD', '');
	define('DB_NAME', 'wemall');
	define('DB_PREFIX', 'emenu_');
	
	$conn = @mysql_connect(DB_HOST.":".DB_PORT, DB_USER, DB_PWD) or die('数据库链接失败：'.mysql_error());
	
	@mysql_select_db(DB_NAME) or die('数据库错误：'.mysql_error());
	
	@mysql_query('SET NAMES UTF8') or die('字符集错误：'.mysql_error());