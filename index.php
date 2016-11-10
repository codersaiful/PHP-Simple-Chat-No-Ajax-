<?php
session_start();

if(isset($_GET['url'])){
	$url = $_GET['url'];
	$url = explode("/",$url);
}else{
	$url[] = 'index';
}
$slug = $url[0];




//Database Connection 
require 'connection.php';
require 'config.php';
require 'inc/functions.php';

if($slug != 'login'){
	include 'session.php';
}


$desire_file = ROOT . 'view/' . $slug . '.php';
$controling_file = ROOT . 'controller/' . $slug . '.php';
if(is_file($desire_file)){
	if(is_file($controling_file)){
		include $controling_file;
	}
	include $desire_file;
}else{
	echo '404 <BR>SOMETHING WENT WRONG';
}







?>