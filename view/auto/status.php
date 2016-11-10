<?php

//bellow section for active member
$sql_member = "SELECT * FROM member";
$result_member = $conn->query($sql_member);
while($row_member = $result_member->fetch_assoc()){
    $member[] = $row_member;
}


$ctime = time()-300;


foreach($member as $mem){
    $member_last_status = $mem['last_status'];
    if($ctime<$member_last_status){
        echo '<li class="active"><a>' . $mem['name'] . '</a>';

    }


}

//bellow foreach for inactive member
foreach($member as $mem){
    $member_last_status = $mem['last_status'];
    if($ctime>$member_last_status){
        echo '<li class="inactive"><a>' . $mem['name'] . '</a>';

    }


}
