<?php
session_start();
if(isset($_POST['del_item'])){
    if(isset($_SESSION['cart'])){
        array_splice($_SESSION['cart'], $_POST['del_item'], 1);
    }
}
header("Location: cart.php")
?>