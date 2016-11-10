<?php
get_header();
?>
<h3><?php echo rand(2,3444); ?></h3>
<script>
$("document").ready(function(){
    $(".jquery_test span").click(function(){
        $(".jquery_test p").load('<?php echo SITE_URL; ?>status_update');
    });
    setInterval(function(){
        $(".jquery_test p").load('<?php echo SITE_URL; ?>status_update');
    },300000);
    
    setInterval(function(){
        $(".chat_list").scrollTop($(".chat_list")[0].scrollHeight);
        //$(".chat_list").load('<?php echo SITE_URL; ?>auto/chat_update');
        $(".member_list").load('<?php echo SITE_URL; ?>auto/status');
        
        
        $("#for_chat_load").load('<?php echo SITE_URL; ?>auto/last_chat_update',function(response, status, xhr){
                $('.chat_list').append(response);
        });
        
        
        
    },800);
    
    $("#message_send").click(function(){
        var msg = $("#message_box").val();
        var url = "<?php echo SITE_URL; ?>auto/insert_chat";
        $.post(url,{text: msg},function(data){
            //alert(data);
        });
        $("#message_box").val("");
    });
    
    
    
    $('#message_box').on('keyup', function(e) {
        if (e.which == 13 && ! e.shiftKey) {
            var msg = $("#message_box").val();
            var url = "<?php echo SITE_URL; ?>auto/insert_chat";
            $.post(url,{text: msg},function(data){
                //alert(data);
            });
            $("#message_box").val("");
        }
    });
    
    
    
    
    $("#append").click(function(){
        $(".chat_list").scrollTop($(".chat_list")[0].scrollHeight);
    });
    
  
    
    
    
    /*
    $("#message_send").click(function(){
        var msg = $("#message_box").val();
        if(msg != ''){
        $("#message_show").load('<?php echo SITE_URL; ?>auto/insert_chat?content=' + msg);
        
        $("#message_box").val("");
        $("#message_show").load('<?php echo SITE_URL; ?>status_update');
        }else{
            alert("Alert!");
        }
        
    });
    */
});
</script>
<hr>
<p style="display: none;" id="for_chat_load"></p>
<button style="width: 60px;" id="append">Append Button</button>
<!--
<div class="append_test">
    <h2>Hello World</h2>
</div>
<hr>
-->
<div class="jquery_test">
    <span>Status Update</span>
    <button>Show</button>
    <p style="border: 1px solid red; padding: 10px;"></p>
</div>
<div class="wrapper">
    <div class="left chat_list">
        <?php include VIEW . 'auto/chat_update.php';
        ?>
          <div class="chat-body chat-scroll" id="chat-scroll"></div>
    </div>
    <div class="right">
        <h3>Online Member</h3>
        <div class="member_list">
            <ul>
            <?php include VIEW . 'auto/status.php';?>
            </ul>
        </div>
    </div>
    <br style="clear: both;">
    <div style="border: 1px solid red; margin: 10px;" id="message_show"></div>
    <div style="width: 100%;margin-top: 15px;background: white;">
        <textarea style="width: 70%;" id="message_box" ></textarea>
        <div id="message_send">Send Message</div>
   </div> 
</div>

<?php












get_footer();