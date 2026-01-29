<?php
include 'config.php';

$data = mysqli_query($conn,
    "SELECT messages.id, users.name, messages.message, messages.created_at
     FROM messages
     JOIN users ON messages.user_id = users.id"
);

$result = [];

while ($row = mysqli_fetch_assoc($data)) {
    $result[] = $row;
}

echo json_encode($result);
?>
