<?php
    $conn = new mysqli('localhost','root','','jk_pilka');
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rozgrywki futbolowe</title>
    <link rel="stylesheet" href="styl.css">
</head>
<body>
    <header>
        <h2>Światowe rozgrywki piłkarskie</h2>
        <img src="obraz1.jpg" alt="boisko">
    </header>
    <section id="mecze">
        <?php
        $sql="Select zespol1, zespol2, wynik, data_rozgrywki
                FROM rozgrywka
                    WHERE zespol1='EVG';";
        $result=$conn->query($sql);
        $blokis=$result->fetch_all(1);
        foreach($blokis as $bloki){
            echo "<div class='mecz'>
                <h3>{$bloki['zespol1']} - {$bloki['zespol2']}</h3>
                <h4>{$bloki['wynik']}</h4>
                <p>w dniu: {$bloki['data_rozgrywki']}</p>
            </div>"; 
        }
        ?>
    </section>
    <main>
        <h2>Reprezentacja Polski</h2>
    </main>
    <section id="bottom">
        <div id="left">
            <p>Podaj pozycję zawodników (1-bramkarze, 2-obrońcy, 3-pomocnicy, 4-
            napastnicy):</p>
            <form action="futbol.php" method="post">
                <input type="number" name="numer" id="numer">
                <button>Sprawdź</button>
            </form>
            <ul>
                <?php
                if(!empty($_POST['numer'])){
                    $numer=$_POST['numer'];
                $sql="SELECT imie, nazwisko
                        FROM zawodnik
                            WHERE pozycja_id=$numer;";
                $result=$conn->query($sql);
                $pilkarze=$result->fetch_all(1);
                foreach($pilkarze as $pilkarz){
                    echo "<li><p>{$pilkarz['imie']} {$pilkarz['nazwisko']}</p></li>";
                }
                }
                ?>
            </ul>
        </div>
        <div id="right">
            <img src="zad1.png" alt="piłkarz">
            <p>Autor: 00000000</p>
        </div>
    </section>
</body>
</html>
<?php
    $conn->close();
?>