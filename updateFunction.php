<?php 

session_start();
require_once("connection.php");
$id = $_GET["id"];

$head = $_POST["head"];
$content = $_POST["content"];
$hFontColor = $_POST["hFontColor"];
$cFontColor = $_POST["cFontColor"];
$bgColor = $_POST["bgColor"];

$conn = baglan();

$sql = "UPDATE contents SET head = '$head', content = '$content', hfontcolor = '$hFontColor', cfontcolor = '$cFontColor', bgcolor = '$bgColor' WHERE id=$id";
$execute = mysqli_query($conn, $sql);

if($execute) {
    header("Location: myContents.php");
}
else {
    echo '<script>alert("Bir hata meydana geldi.")</script>';
}


?>