<?php include 'header.php';

$con = mysqli_connect('localhost', 'root', '','finalsdb');

// database insert SQL code
$sql = "SELECT * FROM orders INNER JOIN profile ON orders.user_id = profile.user_id INNER JOIN products ON orders.item_id = products.item_id WHERE orders.user_id = ".$_SESSION['uid'].";";

$result = $con->query($sql);

?>
<section class="py-5 wrapper">
    <div class="container px-4 px-lg-5 mt-5 text-green">
        <div class="col mb-5">
            <div class="card h-100">
                <div class="card-body p-4">
                    <div>
                        <h1>Welcome, <?php echo $_SESSION['user']?></h2>
                        <p>This is your profile page.</p>
                        <?php
                        if ($result->num_rows > 0) {
                            ?>
                            <h1>Purchase History</h1>
                            <div class="tableFixHead">
                            <table>
                                <thead>
                                    <tr>
                                        <th>Order ID</th>
                                        <th>Product</th>
                                        <th>Price</th>
                                    </tr>
                                </thead>
                                <?php
                                while($row = $result->fetch_assoc()) {
                                    echo "<tr>";
                                    echo "<td>".$row['order_id']."</td><td>".$row['itemname']."</td><td>$".$row['price'];
                                    echo "</tr>";
                                    }
                                echo "</table>";
                                echo "</div>";
                        } else {
                            echo "<p> You haven't bought anything.</p>";
                        }
                        ?>
                        <br>
                        <button class="btn btn-outline-dark mt-auto" onclick="location.href = 'logout.php';">Logout</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
        </section>
<?php include 'footer.php'?>