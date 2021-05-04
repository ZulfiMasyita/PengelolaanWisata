<?php

require 'functions.php';


$rows = query("SELECT * FROM tb_pengelolaan");

if(isset($_POST["cari"])){
    $keyword = $_POST["keyword"];

    $rows = cari($keyword);
}


?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>

<body background="watu.jpg">
    <h1 bgcolor="#8FBC8F">Data Review dan Saran</h1>
    <a href="tambah.php">Tambah Data</a>
    <br>
    <br>

    <form action="" method="post">
        <input type="text" name="keyword" id="keyword" autofocus placeholder="masukkan kata kunci...">
        <button type="submit" name="cari">Cari</button>
    </form>

    <br>
    <table bgcolor="#8FBC8F" border="1" cellpadding=10 cellspacing=0>
        <thead>
            <th>Id</th>
            <th>Nama</th>
            <th>Domisili</th>
            <th>Email</th>
            <th>Nama Tempat Wisata</th>
            <th>Review</th>
            <th>Saran</th>
        </thead>
        <tbody>
            <?php foreach ($rows as $row) : ?>
                <tr bgcolor="#F0E68C">
                    <td><?php echo $row["id"] ?></td>
                    <td><?php echo $row["nama"] ?></td>
                    <td><?php echo $row["domisili"] ?></td>
                    <td><?php echo $row["email"] ?></td>
                    <td><?php echo $row["nama tempat wisata"] ?></td>
                    <td><?php echo $row["review"] ?></td>
                    <td><?php echo $row["saran"] ?></td>
                    <td>
                        <a href="ubah.php?id=<?php echo $row["id"] ?>" >ubah |</a>
                        <a href="hapus.php?id=<?php echo $row["id"] ?>" 
                        onclick="return confirm('Apakah anda yakin akan menghapus data?')">hapus </a>
                    </td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</body>

</html>