<?php 
    $con = mysqli_connect('localhost', 'root', '','finalsdb');
    if ($con->connect_error) {
        die("Connection failed: " . $con->connect_error);
    }

    $email = $_POST['email'];
    $user = $_POST['user'];
    $pass = $_POST['pass'];
    $hash_pass = password_hash($pass, PASSWORD_DEFAULT);
    $sql = "SELECT * FROM `profile`";
    $result = $con->query($sql);
    while($row = $result->fetch_assoc()) {
        if ($row['user']==$user){
            ?>
            <script>
                alert("User Already Exists")
            </script>
            <?php
            header("refresh:0.1;url=register.php");
            die();
        }
        if ($row['email']==$email){
            ?>
            <script>
                alert("Email Already Exists")
            </script>
            <?php
            header("refresh:0.1;url=register.php");
            die();
        } 
    }
    $sql = "INSERT INTO `profile` (`user_id`, `user`, `email`, `pass`) VALUES (NULL, '$user', '$email', '$hash_pass')";
    if ($con->query($sql) === TRUE) {
        header("Location: login.php");
        die();
    } else {
        echo "Error: " . $sql . "<br>" . $con->error;
      }
?>