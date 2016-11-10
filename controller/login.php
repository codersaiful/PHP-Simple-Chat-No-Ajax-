<?php
var_dump(time());
if(isset($_POST['name']) && strlen($_POST['name']) > 5  && strlen($_POST['mobile_number']) == 11){
        $name = $_POST['name'];
        $mobile_number = $_POST['mobile_number'];
        $_SESSION['logedIn'] = $name;
        $_SESSION['logedMobile'] = $mobile_number;
        $_SESSION['loginTime'] = time();
        
        $sql_cheack = "SELECT mobile_number FROM member WHERE mobile_number='{$mobile_number}'";
        $result_check = $conn->query($sql_cheack);
        $current_status_time = time();
        //$row_check = $result_check->fetch_assoc();
            if($result_check->num_rows > 0){
            $sql = "UPDATE member SET name='{$name}',last_status='{$current_status_time}' WHERE mobile_number='{$mobile_number}'";
            //$conn->query($sql_update); 
            
            }else{
            $sql = "INSERT INTO member(id,name,mobile_number,status,last_status) VALUES(NULL,'{$name}','{$mobile_number}',1,'{$current_status_time}')";
             
            }
        
        $conn->query($sql);
        
        
        
        header("Location: " . SITE_URL);
}