<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="login.css">
    <title>REVIEW DAN SARAN TEMPAT WISATA</title>
</head>

<body>
    <div class="container">
        <div class="content">
            <div class="title">
                <h2>LOGIN</h2>
            </div>
            <form method="POST" class="form">
                <label for="user-email" style="padding: top 15px;">Email</label>
                <input type="email" id="user-email" name="email" class="form-content" autocomplete="on" required />
                <div class="form-border"></div>
                <label for="user-password" style="padding-top:22px">Password</label>
                <input type="password" id="user-password" name="password" class="form-content" required />
                <div class="form-border"></div>
                <a href="#">
                    <div class="forgot-pass">Lupa Password?</div>
                </a>
                <a href="index.php">
                <div align="center" align="buttom" class="submit-btn" type="submit" name="submit" value="LOGIN">LOGIN</div>
                </a>
                <p>
                    Belum memiliki akun? <a href="signup.php" class="signup">Buat akun baru</a>
                </p>

            </form>
        </div>
    </div>
</body>

</html>