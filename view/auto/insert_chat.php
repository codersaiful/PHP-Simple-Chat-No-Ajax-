<?php
if(isset($_POST['text'])){
    $name = $_SESSION['logedIn'];
    $text = $_POST['text'];
    $time = time();
    
    $sql = "INSERT INTO message (id,text,name,date) VALUES(NULL,'{$text}','{$name}','{$time}')";
    $conn->query($sql);
    echo $text;
    
}else{
    echo 'message not sent';
}
