<?php

if(isset($_POST['submit_text'])){
	$name = $_SESSION['logedIn'];
	$text = $_POST['text'];
	
	$sql = "INSERT INTO message (id,text,name,date) VALUES(NULL,'{$text}','{$name}',NULL)";
	$conn->query($sql);
	header("Location: " . SITE_URL);
	
	
	
}else{
 echo 'Something wrong';
}