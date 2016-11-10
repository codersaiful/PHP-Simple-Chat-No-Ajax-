<?php
$login_time = $_SESSION['loginTime'];
//2016-07-26 17:46:57
//$login_time = date("Y-m-d h:i:s",$login_time);
$max_time = time() - 1;
//This section for chat list
$sql = "SELECT * FROM message WHERE date > '{$login_time}' AND date > '{$max_time}' ORDER BY id DESC";
$result = $conn->query($sql);
if($result->num_rows > 0):
    while($row = $result->fetch_assoc()){
            $message[] = $row;
    }

    foreach($message as $text){
            ?>
            <div id="<?php echo $text['date']; ?>" class="single_chat">
                    <b><?php echo $text['name']; ?></b>
                    <p><?php echo $text['text']; ?><br><a href="#"><?php echo $text['date']; ?></a><p>
            </div>
            <?php
    }
endif;


?>