<?php

session_start();
require_once("connection.php");
$id = $_GET["id"];
$conn = baglan();
$sql = "DELETE FROM contents WHERE id=$id";
$execute = mysqli_query($conn, $sql);

if($execute) {
    header("Location: myContents.php");
}
else {
    echo '<script>alert("Beklenmedik bir hata çıktı.")</script>';
}

?>