<?php

require 'functions.php';


if (isset($_POST["submit"])) {
    
    if(tambah($_POST)>0){
        echo "
            <script>
                alert('Data BERHASIL ditambahkan');
                document.location.href = 'index.php';
            </script>
        ";
    }
    else{
        echo "
            <script>
                alert('Data GAGAL ditambahkan');
                document.location.href = 'index.php';
            </script>
        ";
    }
}


?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="tambah.css">
</head>

<body background="watu.jpg">
    <h1>Form Pengisian Review dan Saran Tempat Wisata</h1>
    <form action="" method="post">
        <table cellpadding=10 cellspasing=10>
        <tr>
                <td>Nama</td>
                <td><input type="text" name="nama" id="nama"></td>
            </tr>
            <tr>
                <td>Domisili</td>
                <td><input type="text" name="domisili" id="domisili"></td>
            </tr>
            <tr>
                <td>Email</td>
                <td><input type="text" name="email" id="email"></td>
            </tr>
            <tr>
                <td>Nama Tempat Wisata</td>
                <td><input type="text" name="tempat" id="tempat"></td>
            </tr>
            <tr>
                <td>Review Tempat Wisata</td>
                <td><textarea name="review"></textarea></td>
            </tr>
            <tr>
                <td>Saran Tempat Wisata</td>
                <td><textarea name="saran"></textarea></td>
            </tr>
            <tr>
                <td></td>
                <td><button type="submit" name="submit">Simpan</button>
                <button type="cancel" name="cancel">Batal</button></td>
            </tr>
        </table>
    </form>
</body>

</html>