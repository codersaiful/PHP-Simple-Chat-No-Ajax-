<?php
if(!isset($_SESSION['logedIn'])){
	header("Location: ". SITE_URL . 'login');
}