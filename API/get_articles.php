<?php
include 'config.php';

$data = mysqli_query($conn, "SELECT * FROM articles");
$result = [];

while($row = mysqli_fetch_assoc($data)){
    $result[] = $row;
}

echo json_encode($result);
?>
