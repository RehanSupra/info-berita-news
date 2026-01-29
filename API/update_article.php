<?php
include 'config.php';

$id = $_POST['id'];
$title = $_POST['title'];
$content = $_POST['content'];

$query = mysqli_query($conn,
    "UPDATE articles 
     SET title='$title', content='$content'
     WHERE id='$id'"
);

echo json_encode(["status"=>"success"]);
?>
