<?php
$mobile_number = $_SESSION['logedMobile'];
$sql = "UPDATE member SET status=0 WHERE mobile_number='{$mobile_number}'";
$conn->query($sql);
session_destroy();
header("Location: " . SITE_URL);