<?php
$host = "localhost";
$user = "root";
$pass = "";
$db   = "infoberita_news";

$conn = mysqli_connect($host, $user, $pass, $db);

if (!$conn) {
    echo json_encode(["status"=>"error","message"=>"Koneksi gagal"]);
}
?>
