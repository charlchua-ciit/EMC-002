<?php
// database connection code

$con = mysqli_connect('localhost', 'root', '','online_store2');

// database insert SQL code
$sql = "SELECT * FROM products";


$result = $con->query($sql);

if ($result->num_rows > 0) {
  // output data of each row
  while($row = $result->fetch_assoc()) {
    echo "Item: " . $row["itemname"]. "<br>"."Description: " . $row["description"]. "<br>" . $row["quantity"]. "<br>";
  }
} else {
  echo "0 results";
}
$con->close();

?>