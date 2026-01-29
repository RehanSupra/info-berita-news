<?php
include 'config.php';

$email = $_POST['email'] ?? '';
$password = $_POST['password'] ?? '';

if($email == '' || $password == ''){
    echo json_encode([
        "status" => "failed",
        "message" => "Data tidak lengkap"
    ]);
    exit;
}

$query = mysqli_query($conn,
    "SELECT * FROM users 
     WHERE email='$email' AND password='$password'"
);

if(mysqli_num_rows($query) > 0){
    echo json_encode([
        "status"=>"success",
        "message"=>"Login berhasil"
    ]);
}else{
    echo json_encode([
        "status"=>"failed",
        "message"=>"Email atau password salah"
    ]);
}
?>
