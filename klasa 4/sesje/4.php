<?php
    session_start();
?>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    $uzytkownik = ['motyw'=> 'ciemny', 'jezyk'=> 'polski', 'powiadomienia'=> 'tak'];
    $_SESSION['preferencje']=$uzytkownik;

    ?>
    <a href="4,2.php">Strona któraś</a>
</body>
</html>