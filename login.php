<?php 

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
                <li class="navbarLi"> <a href="index.php" class="navbarA"> Ana Sayfa </a> </li>
                <li class="navbarLi"> <a href="login.php" class="navbarA"> Giriş Yap </a></li>
                <li class="navbarLi"> <a href="register.php" class="navbarA"> Üye Ol </a></li>
            </ul>
        </nav>

        <form action="logining.php" method="post" class="form">
            <label for="uname" class="label">Kullanıcı Adı: </label>
            <input type="text" id="uname" name="uname" required class="inputText"> <br><br>
            <label for="psw" class="label">Parola: </label>
            <input type="password" id="psw" name="psw" required class="inputText"> <br><br>
            <input type="submit" value="Giriş Yap" id="submit">
        </form>

    </body>
</html>'

?>