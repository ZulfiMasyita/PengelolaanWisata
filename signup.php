<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="signup.css">
    <title>REVIEW DAN SARAN TEMPAT WISATA</title>
</head>

<body>
    <div class="container">
        <div class="content">
            <div class="title">
                <h2>SIGN UP</h2>
            </div>
            <form method="POST" class="form">
            <table align="center" border="0" style="font-family:sans-serif">
            <tr>
            <td>Nama</td>
            <td><input type="text" id="nama" name="nama" placeholder="Masukkan Nama" required/></td>
            <tr>
            <td>Email</td>
            <td><input type="email" id="email" name="email" placeholder="Masukkan Email" autocomplete="on" required/></td>
            </tr>
            <tr>
            <td>Password</td>
            <td><input type="password" id="password" name="password" placeholder="Masukkan Password" min="8" required/></td>
            </tr>
            <td>Konfirmasi Password</td>
            <td><input type="password" id="confirm" name="confirm" placeholder="Konfirmasi Password" required/></td>
            </tr>
           <tr>
           <td><button type="submit" name="submit" value="submit">Submit</button></td>
           <a href="login.php">
           </tr>
            </div>
            
</table>
            </form>
        </div>
    </div>
</body>

</html>