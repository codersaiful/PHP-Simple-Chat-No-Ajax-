<?php

if(isset($url[1])){
    $file_name = $url[1];
    $file = VIEW . 'auto/' . $file_name . '.php';
    if(is_file($file)){
        include $file;
    }
}else{
    header("Location: " . SITE_URL . '?SORRY=yOUR ARE wRONG');
}