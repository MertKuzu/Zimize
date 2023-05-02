<?php 
require_once("connection.php");
session_start();
$name = $_POST["name"];
$surname = $_POST["lname"];
$email = $_POST["email"];
$username = $_POST["uname"];
$password = $_POST["psw"];
$securePassword = password_hash($password, PASSWORD_DEFAULT);
$conn = baglan();


    $sql = "SELECT id FROM users WHERE email = '$email'";
    $sql2 = "SELECT id FROM users WHERE username = '$username'";
    $execute = mysqli_query($conn, $sql);
    $execute2 = mysqli_query($conn, $sql2);
    if (mysqli_num_rows($execute) > 0) {
        echo '<script>alert("E-posta adresi zaten kullanılmakta.")</script>';
    }
    else if (mysqli_num_rows($execute2) > 0) {
        echo '<script>alert("Kullanıcı adı zaten kullanılmakta.")</script>';
    }
    else {
        $query = "INSERT INTO users (name, surname, email, username, password) VALUES ('$name', '$surname', '$email', '$username', '$securePassword')";
        $execute3 = mysqli_query($conn, $query);
        if(!$execute3) {
            echo '<script>alert("Beklenmedik bir hata lütfen tekrar deneyin.")</script>';
        }
        else {
            $_SESSION['id'] = mysqli_insert_id($conn);  
            $_SESSION['name'] = $name;
            header("Location: index.php");
        }
    }

?>