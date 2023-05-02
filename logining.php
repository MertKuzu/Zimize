<?php 
session_start();
require_once("connection.php");
$username = $_POST["uname"];
$password = $_POST["psw"];
$conn = baglan();

$query = "SELECT * FROM users WHERE username='$username'";
$result = mysqli_query($conn, $query);
$row = mysqli_fetch_array($result);

if(isset($row)) {
    if (password_verify($password, $row['password'])) {
        $_SESSION['id'] = $row['id'];
        header("Location: index.php");
    }
    else {
        echo '<script>alert("Parola veya kullanıcı adı hatalı.")</script>';
    }
}
else {
    echo '<script>alert("Parola veya kullanıcı adı hatalı.")</script>';
}
?>