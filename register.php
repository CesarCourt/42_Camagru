<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="widtd=device-widtd, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="public/style.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
    <title>Camagru - 42</title>
</head>
<body>
    <div class="all">
        <div class="part-2">
            <div class="form-1">
                <form class="form-suscrib" method="POST" action="">
                    <table class="tab-suscrib">
                        <tr><td><a href="index.php"><img src="public/images/camagru.png" alt="logo_camagru" height="30px" /></a></td></tr>
                        <tr><td><input type="text" name="pseudo" placeholder="Pseudo" autocomplete="off" required /></td></tr>
                        <tr><td><input type="email" name="email" placeholder="Adresse mail" autocomplete="off" required /></td></tr>
                        <tr><td><input type="password" name="password" placeholder="Mot de passe" autocomplete="off" required /></td></tr>
                        <tr><td><input type="password" name="password_confirm" placeholder="Confirmation mot de passe" autocomplete="off" required /></td></tr>
                        <tr><td><input class="connect-in" name="submit" type="submit" value="Valider" /></td></tr>
                    </table>
                </form>
            </div>
            <div class="already-user">
                <span>Vous avez un compte ?</span>
                <a href="login.php">Connectez-vous</a>
            </div>
        </div>
        <div class="part-3">
        </div>
    </div>
</body>
</html>