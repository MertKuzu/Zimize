<?php
session_start();
require_once("connection.php");

$head = $_POST["head"];
$content = $_POST["content"];
$hFontColor = $_POST["hFontColor"];
$cFontColor = $_POST["cFontColor"];
$bgColor = $_POST["bgColor"];
$usernameid = $_SESSION["id"];

$conn = baglan();
$query = "INSERT INTO contents (head, content, usernameid, hfontcolor, cfontcolor, bgcolor) VALUES ('$head', '$content', $usernameid, '$hFontColor', '$cFontColor', '$bgColor')";
$execute = mysqli_query($conn, $query);
if($execute) {
    header("Location: index.php");
}
else{
    echo '<script>alert("Bir hata meydana geldi.")</script>';
}

?>