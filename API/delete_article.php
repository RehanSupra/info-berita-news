<?php
include 'config.php';

$id = $_POST['id'];

$query = mysqli_query($conn,
    "DELETE FROM articles WHERE id='$id'"
);

echo json_encode(["status"=>"success"]);
?>
