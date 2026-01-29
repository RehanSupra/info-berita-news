<?php
include 'config.php';

$title = $_POST['title'];
$content = $_POST['content'];
$image = $_POST['image_url'];

$query = mysqli_query($conn,
    "INSERT INTO articles (title, content, image_url)
     VALUES ('$title', '$content', '$image')"
);

if($query){
    echo json_encode(["status"=>"success"]);
}else{
    echo json_encode(["status"=>"failed"]);
}
?>
