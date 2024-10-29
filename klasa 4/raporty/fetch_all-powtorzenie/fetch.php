<?php
$conn = new mysqli('localhost','root','','jk_baza_danych');
$sql = 'SELECT imie,nazwisko,email 
FROM uzytkownik;';
$result= $conn->query($sql);
$uzytkownicy=$result->fetch_all(1);

$sql = 'SELECT marka,model,rocznik
FROM samochody;';
$result=$conn->query($sql);
$auta=$result->fetch_all(1);

$conn->close();
?>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <ol>
        <?php
        foreach ($uzytkownicy as $uzytkownik) {
            echo "<li>
            {$uzytkownik['imie']}
            {$uzytkownik['nazwisko']}
            <b> {$uzytkownik['email']} </b>
            </li>";
        }
        ?>
    </ol>
    
    <ul>
        <?php
        foreach ($auta as $samochod) {
            echo "<li>
            <i> {$samochod['marka']} </i>
            {$samochod['model']}
            {$samochod['rocznik']}
            </li>";
        }
        ?>
    </ul>
</body>
</html>