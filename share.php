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
                <li class="navbarLi"> <a href="myContents.php" class="navbarA"> İçeriklerim </a></li>
                <li class="navbarLi"> <a href="logout.php" class="navbarA"> Çıkış Yap </a></li>
            </ul>
        </nav>
        
        <form class="form" action="shareFunction.php" method="post">

            <label for="head" class="label">Başlık: </label>
            <input type="text" name="head" id="head" class="inputText" required> <br> <br>
            <label for="content" class="label">İçerik: </label> <br> <br>
            <textarea name="content" id="content" cols="30" rows="10" class="inputText" required></textarea> <br><br>
            <label for="hFontColor" class="label">Başlık Rengi: </label>
            <select name="hFontColor" id="hFontColor">
                <option value="black">Siyah</option>
                <option value="red">Kırmızı</option>
                <option value="green">Yeşil</option>
                <option value="blue">Mavi</option>
                <option value="yellow">Sarı</option>
                <option value="pink">Pembe</option>
                <option value="brown">Kahverengi</option>
                <option value="white">Beyaz</option>
            </select> <br><br>
            <label for="cFontColor" class="label">İçerik Yazı Rengi: </label>
            <select name="cFontColor" id="cFontColor">
                <option value="black">Siyah</option>
                <option value="red">Kırmızı</option>
                <option value="green">Yeşil</option>
                <option value="blue">Mavi</option>
                <option value="yellow">Sarı</option>
                <option value="pink">Pembe</option>
                <option value="brown">Kahverengi</option>
                <option value="white">Beyaz</option>
            </select> <br><br>
            <label for="bgColor" class="label">Arkaplan Rengi: </label>
            <select name="bgColor" id="bgColor">
                <option value="black">Siyah</option>
                <option value="red">Kırmızı</option>
                <option value="green">Yeşil</option>
                <option value="blue">Mavi</option>
                <option value="yellow">Sarı</option>
                <option value="pink">Pembe</option>
                <option value="brown">Kahverengi</option>
                <option value="white">Beyaz</option>
            </select> <br><br>
            <input type="submit" value="Paylaş" id="submit">
            
        </form>

    </body>
</html>'


?>