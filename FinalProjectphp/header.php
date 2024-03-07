<?php
session_start()
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Shop Homepage - Start Bootstrap Template</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        <link href="css/style2.css" rel="stylesheet" />
        <script src="js/scripts.js"></script>
    </head>
    <body>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="#!">RetroStop</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item"><a class="nav-link" href="index.php">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="products.php">Products</a></li>
                        <li class="nav-item"><a class="nav-link" href="about.php">About</a></li>
                        <?php
                            if (isset($_SESSION['valid']) && $_SESSION['valid']): ?>
                                <li class="nav-item"><a class="nav-link" href="profile.php">Profile</a></li>
                            <?php else: ?>
                                <li class="nav-item"><a class="nav-link" href="login.php">Login</a></li>
                            <?php endif; ?>
                        <li class="nav-item"><a class="nav-link" href="cs.php">Customer Support</a></li>
                    </ul>
                        <button class="btn btn-outline-dark" onclick="location.href = 'cart.php';">
                            <i class="bi-cart-fill me-1"></i>
                            Cart
                            <span class="badge bg-dark text-white ms-1 rounded-pill">
                                <?php
                                if (isset($_SESSION['cart'])){
                                    echo count($_SESSION['cart']);
                                } else {
                                    echo 0;
                                }
                                ?>
                            </span>
                        </button>
                </div>
            </div>
        </nav>
<!-- Header-->
<header class="bg-dark py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-green">
                    <h1 class="display-4 fw-bolder">RetroStop</h1>
                    <p class="lead fw-normal text-green-50 mb-0">Classic Games, Consoles, and Accessories from your childhood</p>
                </div>
            </div>
        </header>