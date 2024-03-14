<?php 
$con = mysqli_connect('localhost', 'root', '','finalsdb');

// database insert SQL code
$sql = "SELECT * FROM products";

$result = $con->query($sql);

$featured = array(2,3,5,6,7,9,10,11)
?>
<!-- Header-->
<?php include 'header.php'?>
<section class="py-5 wrapper">
<div class="container px-4 px-lg-5 mt-5">
        <h2 class="text-green">Featured Products</h2>
        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
<?php
if ($result->num_rows > 0) {
    foreach ($featured as $x){
        while($row = $result->fetch_assoc()) {
            if ($row["item_id"]==$x){
                ?>
                <div id="item_<?php echo $row["item_id"]?>" class="col mb-5">
                    <div class="card h-100">
                        <!-- Product image-->
                        <img class="card-img-top" src=<?php echo $row["item_img"]?> alt="..." />
                        <!-- Product details-->
                        <div class="card-body p-4">
                            <div class="text-center">
                                <!-- Product name-->
                                <h5 class="fw-bolder"><?php echo $row["itemname"] ?></h5>
                                <div class="d-flex justify-content-center small text-green-50 mb-2">
                                    <p><?php echo $row["description"]?></p>
                                </div>
                                <!-- Product price-->
                                $<?php echo $row["price"]?>
                            </div>
                        </div>
                        <!-- Product actions-->
                        <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                            <div class="text-center">
                                <form method="post" action="add.php">
                                    <input type="hidden" id="price_item_<?php echo $row["item_id"]?>" name="add_item" value="<?php echo $row["item_id"]?>">
                                    <input type="hidden" id="current_page" name="page" value="index.php">
                                    <input type="submit" value="Add to cart" class="btn btn-outline-dark mt-auto"></input>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <?php
            } 
        }
    mysqli_data_seek($result, 0);
    }
}
?>
</div>
</div>
</section>
<?php include 'footer.php'?>

