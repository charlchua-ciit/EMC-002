<?php 
$con = mysqli_connect('localhost', 'root', '','finalsdb');

// database insert SQL code
$sql = "SELECT * FROM products";

$result = $con->query($sql);
?>
<!-- Header-->
<?php include 'header.php'?>

<?php 
if ($result->num_rows > 0) {
        for ($x=1;$x<=4;$x++){
        ?>
        <section class="py-5 wrapper">
        <div class="container px-4 px-lg-5 mt-5">
                <h2 class="text-green"><?php 
                $csql = "SELECT * FROM categories WHERE category_id = $x";
                $cresult = $con->query($csql);
                echo $cresult->fetch_assoc()["category_name"]
                ?></h2>
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
        <?php
        while($row = $result->fetch_assoc()) {
            if ($row["category_id"]==$x){
                ?>
                <div class="col mb-5">
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
                                <?php echo $row["price"]?>
                            </div>
                        </div>
                        <!-- Product actions-->
                        <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                            <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a></div>
                        </div>
                    </div>
                </div>
                <?php
            } 
        }
        mysqli_data_seek($result, 0);
        ?>
    </div>
    </div>
    </section>
    <?php
    }
}
?>

<?php include 'footer.php'?>

