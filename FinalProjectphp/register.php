<!-- Header-->
<?php include 'header.php'?>
<!-- Section-->
<section class="py-5 wrapper">
    <div class="container px-4 px-lg-5 mt-5 text-green">
        <div class="container col-6">
            <div class="card h-100">
                <div class="card-body p-4">
                    <div>
                        <form name="form" id="form" onsubmit="return validate()" action="register_validate.php" method="post">
                            <label for="user">Email:</label><br>
                            <input type="email" name="email" id="email" required><br>
                            <label for="user">Username:</label><br>
                            <input type="text" name="user" id="user" required><br>
                            <label for="pass">Password:</label><br>
                            <input type="password" name="pass" id="pass" required><br><br>
                            <input type="submit" value="Submit" class="btn btn-outline-dark mt-auto">
                            <p>Already registered? <a href="login.php">Login</a> here!</p>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<?php include 'footer.php'?>