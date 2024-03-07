<?php
session_start();
if(isset($_POST['add_item'])){
    array_push($_SESSION['cart'],$_POST['add_item']);
}
$page=$_POST['page'];
header("Location: ".$page."#item_".$_POST['add_item']);
?>