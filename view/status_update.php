<?php
$mobile_number = $_SESSION['logedMobile'];
$current_time = time();
$sql = "UPDATE member SET last_status='{$current_time}' WHERE mobile_number='{$mobile_number}'";
$conn->query($sql);
echo 'Success<br>';
echo rand(2,2000);
?>