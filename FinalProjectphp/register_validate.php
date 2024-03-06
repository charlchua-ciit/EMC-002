<?php 
    $con = mysqli_connect('localhost', 'root', '','finalsdb');
    if ($con->connect_error) {
        die("Connection failed: " . $con->connect_error);
    }

    $email = $_POST['email'];
    $user = $_POST['user'];
    $pass = $_POST['pass'];
    $hash_pass = password_hash($pass, PASSWORD_DEFAULT);
    
    $sql = "INSERT INTO `profile` (`user_id`, `user`, `email`, `pass`) VALUES (NULL, '$user', '$email', '$hash_pass')";
    if ($con->query($sql) === TRUE) {
        header("Location: login.php");
        die();
    } else {
        echo "Error: " . $sql . "<br>" . $con->error;
      }
?>