<!-- Header-->
<?php include 'header.php'?>
<!-- Section-->
<section class="py-5 wrapper">
    <div class="container px-4 px-lg-5 mt-5 text-green">
        <div class="container col-6">
            <div class="card h-100">
                <div class="card-body p-4">
                    <div>
                        <form name="form" id="form" onsubmit="" action="login_validate.php" method="post">
                            <label for="user">Username:</label><br>
                            <input type="text" name="user" id="user"><br>
                            <label for="pass">Password:</label><br>
                            <input type="password" name="pass" id="pass"><br><br>
                            <input type="submit" value="Submit" class="btn btn-outline-dark mt-auto">
                            <p>Not yet registered? <a href="register.php">Register</a> here!</p>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<?php include 'footer.php'?>