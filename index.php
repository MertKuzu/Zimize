<?php
require_once("connection.php");
session_start();
$conn = baglan();
$sql = "SELECT contents.id, contents.head, contents.content, users.username, contents.hfontcolor, contents.cfontcolor, contents.bgcolor 
FROM contents INNER JOIN users ON contents.usernameid = users.id ORDER BY id DESC";
$execute = mysqli_query($conn,$sql);

echo '<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Zımıze</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <header>
            <h1 id="headerName">Zımıze</h1>
            <h3 id="altHeader">Yaman günde yetis gardas...</h3>
        </header>
        <nav class="navbar">
            <ul>
                <li class="navbarLi"> <a href="index.php" class="navbarA"> Ana Sayfa </a> </li>';
                if(isset($_SESSION['id'])){
                    echo '<li class="navbarLi"> <a href="myContents.php" class="navbarA"> İçeriklerim </a> </li>
                    <li class="navbarLi"> <a href="logout.php" class="navbarA"> Çıkış Yap </a> </li>
                    </ul>
                    </nav>
                    <div class="container">';
                    
                }
                else{
                    echo '<li class="navbarLi"> <a href="register.php" class="navbarA"> Üye Ol </a></li>
                    <li class="navbarLi"> <a href="login.php" class="navbarA"> Giriş Yap </a></li>
                    </ul>
                    </nav>
                    <div class="container">';
                }
                

if($execute) {
    while($satir=mysqli_fetch_assoc($execute)){
        echo '<div class="box" style="background-color:'.$satir["bgcolor"].'"> <h2 class="boxingText" style="color:'.$satir["hfontcolor"].'">'.$satir["head"].'</h2>
        <p class="boxingText" style="color: '.$satir["cfontcolor"].'">'.$satir["content"].'</p> <hr> <p class="boxingText" style="color: '.$satir["cfontcolor"].'">'.$satir["username"].'</p></div>';
    }
}


if(isset($_SESSION['id'])) {
    echo '</div> <a href="share.php" class="uploadA">
<div class="upload">
    <i class="fa fa-plus" aria-hidden="true"></i>
</div>
</a>
</body>
</html>';
}

?>