<?php
session_start();
$con = mysqli_connect('localhost', 'root', '','finalsdb');
$uid = $_SESSION['uid'];
foreach($_SESSION['cart'] as $x){
    $sql= "INSERT INTO `orders` (`order_id`, `user_id`, `item_id`) VALUES (NULL, $uid, $x)";
    $con->query($sql);
}
header("Location: profile.php");
?>