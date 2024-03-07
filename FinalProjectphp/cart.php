<?php
$con = mysqli_connect('localhost', 'root', '','finalsdb');

include 'header.php';
if (!isset($_SESSION['user'])){
    header("Location: login.php");
}
?>
<section class="py-5 wrapper">
    <div class="container px-4 px-lg-5 mt-5 text-green">
        <div class="col mb-5">
            <div class="card h-100">
                <div class="card-body p-4">
                    <div>
                        <h1>Cart</h1>
                        <table>
                            <?php
                            if (isset($_SESSION['cart']) && count($_SESSION['cart'])!=0){
                                ?>
                                <tr>
                                    <th>Item No.</th>
                                    <th>Product</th>
                                    <th>Price</th>
                                    <th></th>
                                </tr>
                                <?php
                                $y=1;
                                foreach($_SESSION['cart'] as $x){
                                    echo "<tr>";
                                    $sql = "SELECT * FROM products WHERE item_id = $x";

                                    $result = $con->query($sql);
                                    while($row = $result->fetch_assoc()) {
                                        echo "<td>$y</td><td>".$row['itemname']."</td><td>$".$row['price'];
                                        ?>
                                        <td>
                                            <form method="post" action="remove.php">
                                                <input type="hidden" name="del_item" value=<?php echo $y-1?>></input>
                                                <input type="submit" value="Remove" class='btn btn-outline-dark mt-auto' style='float:right;'>
                                            </form>    
                                        </td>
                                        <?php
                                    }
                                    echo "</tr>";
                                    $y++;
                                }
                            } else {
                                echo "<p> Your cart is currently empty.</p>";
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