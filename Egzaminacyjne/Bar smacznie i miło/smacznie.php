<?php
$conn = new mysqli('localhost','root','','baza');

$sql1='SELECT nazwa,cena
FROM dania
WHERE typ=2;';
$result=$conn->query($sql1);
$danias=$result->fetch_all(1);

$sql2='SELECT nazwa,cena
FROM dania
WHERE typ=1;';
$result=$conn->query($sql2);
$zupys=$result->fetch_all(1);

$sql3='SELECT avg(cena)
FROM dania
WHERE typ=1;';
$result=$conn->query($sql3);
$cenas=$result->fetch_all(1);

$conn->close();
?>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bar Smacznie i Miło</title>
    <link rel="stylesheet" href="styl3.css">
</head>
<body>
    <header>
        <h1><img src="menu.jpg">Bar Smacznie i Miło już otwarty!<img src="menu.jpg"></h1>
    </header>
    <main>
        <section id="left">
            <h2>Dania mięsne</h2>
            <?php
            foreach($danias as $dania){
                echo "<p>{$dania['nazwa']} {$dania['cena']}</p>";
            }
            ?>
        </section>
        <section id="mid">
            <h2>Zupy</h2>
            <?php
            foreach($zupys as $zupy){
                echo "<p>{$zupy['nazwa']} {$zupy['cena']}</p>";
            }

            ?>
        </section>
        <section id="right">
            <p>Średnia cena naszej zupy to
            <?php
            foreach($cenas as $cena){
                echo "{$cena['avg(cena)']}";
            }
            ?>
            </p>
            <ol>
                <li>Obiady po 40 zł</li>
                <li>Przekąski od 10 zł</li>
                <li>Kolacje od 20 zł</li>
            </ol>
        </section>
    </main>
    <footer>Stronę internetową opracował: 000000000</footer>
</body>
</html>