<?php
$username = $_POST['Email'];
$password = $_POST['Password'];
$username = $_POST['Username'];
$confirm = $_POST['Confirm'];

$db = new mysqli('localhost',$Email,$Password,$Username,$confirm);
echo"Great work!";
?>