<?php include 'header.php'?>
<section class="py-5 wrapper">
    <div class="container px-4 px-lg-5 mt-5 text-green">
        <div class="col mb-5">
            <div class="card h-100">
                <div class="card-body p-4">
                    <div>
                        <h1>Cart</h1>
                        <table>
                            <tr>
                                <th>Product</th>
                                <th>Price</th>
                                <th></th>
                            </tr>
                            <?php
                            foreach($_SESSION['cart'] as $x){
                                $sql = "SELECT itemname,price FROM products WHERE item_id = $x";

                                $result = $con->query($sql);
                                while($row = $result->fetch_assoc()) {
                                    echo "<td>".$row['itemname']."</td><td>$".$row['price']."</td>";
                                  }
                            }
                            ?>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
        </section>
<?php include 'footer.php'?>