<html>
	<head>
		<title>Chat Room</title>
                <link rel="stylesheet" type="text/css" href="<?php echo SITE_URL; ?>/view/style.css">
                <script type="text/javascript" src="<?php echo  SITE_URL; ?>/view/js/jquery.min.js"></script>
        </head>
	<body>
		<h1>Chat Room</h1>Welcome: <?php echo $_SESSION['logedIn']; ?> <a href="<?php echo SITE_URL;?>logout"> LogOut</a>
