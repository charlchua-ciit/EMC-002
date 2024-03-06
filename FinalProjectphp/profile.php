<?php include 'header.php'?>
<section class="py-5 wrapper">
    <div class="container px-4 px-lg-5 mt-5 text-green">
        <div class="col mb-5">
            <div class="card h-100">
                <div class="card-body p-4">
                    <div>
                        <h1>Welcome, <?php echo $_SESSION['user']?></h2>
                        <p>This is your profile page.</p>
                        <button class="btn btn-outline-dark mt-auto" onclick="location.href = 'logout.php';">Logout</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
        </section>
<?php include 'footer.php'?>