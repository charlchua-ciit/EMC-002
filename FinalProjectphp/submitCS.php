<?php
session_start();
$con = mysqli_connect('localhost', 'root', '','finalsdb');
$uid = $_SESSION['uid'];
$issue = $_POST['issue'];
$details = $_POST['details'];
if (!isset($_SESSION['uid'])){
    ?>
    <script>
        alert("Not logged in, please login to submit a ticket")
    </script>
    <?php
    header("refresh:0.1;url=login.php");
    die();
} else {
    $sql = "INSERT INTO `customer_support` (`ticket_id`, `issue`, `details`, `user_id`) VALUES (NULL, '$issue', '$details', '$uid')";
    $con->query($sql);
    ?>
    <script>
        alert("Ticket Sent!")
    </script>
    <?php
    header("refresh:0.1;url=index.php");
    die();
}