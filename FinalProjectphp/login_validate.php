<?php 
    session_start();
    $con = mysqli_connect('localhost', 'root', '','finalsdb');
    if ($con->connect_error) {
        die("Connection failed: " . $con->connect_error);
    }
    
    $user = $_POST['user'];
    $pass = $_POST['pass'];

    $sql = "SELECT * FROM `profile`";

    $result = $con->query($sql);
    
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            if($row["user"]==$user){
                if(password_verify($pass,$row["pass"])){
                    $_SESSION['valid'] = true;
                    $_SESSION['timeout'] = time();
                    $_SESSION['user'] = $user;
                    header("Location: index.php");
                    die();
                }
            }
        }
        ?>
        <script>
            alert("User not found")
        </script>
        <?php
        header("Location: login.php");
        die();
    }
?>