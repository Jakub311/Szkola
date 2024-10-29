<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Biblioteka publiczna</title>
    <link rel="stylesheet" href="styl.css">
</head>
<body>
    <header>
        <h1>Biblioteka w Książkowicach wielkich</h1>
    </header>
    <main>
        <section id="left">
            <h3>Polecamy dzieła autorów:</h3>
            <ol>
                <?php
                ?>
            </ol>
        </section>
        <section id="mid">
            <h3>ul. Czytelnicza 25, Książkowice Wielkie</h3>
            <p><a href="sekretariat@biblioteka.pl">Napisz do nas</a></p>
            <img src="biblioteka.png" alt="książki">
        </section>
        <section id="right">
            <section id="top">
                <h3>Dodaj czytelnika</h3>
                <form action="biblioteka.php" method="POST">
                    <label>imię: <input type="text" name="imie"></label> <br>
                    <label>nazwisko: <input type="text" name="nazwisko"></label> <br>
                    <label>symbol: <input type="number" name="symbol"></label><br>
                </form>
                <button id="submit">Dodaj</button>
            </section>
            <section id="bot">
                <?php

                ?>
            </section>
        </section>
    </main>
    <footer>
        <p>Projekt strony: 11111111</p>
    </footer>
</body>
</html>