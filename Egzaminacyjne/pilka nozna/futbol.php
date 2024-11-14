<?php
    $conn = new mysqli('localhost','root','','jk_pilka');

?>
<!DOCTYPE html>
<html lang="pl">
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
    <div id="flex">
        <?php 
        $sql="SELECT zespol1, zespol2, wynik, data_rozgrywki
                FROM rozgrywka
                WHERE zespol1='EVG';";
        $result=$conn->query($sql);
        $mecze=$result->fetch_all(1);
        foreach($mecze as $mecz){
            echo '<div class="block">';
            echo "<h3>{$mecz['zespol1']} - {$mecz['zespol1']}</h3><break>";
            echo "<h4>{$mecz['wynik']}</h4>";
            echo "<p>w dniu: {$mecz['data_rozgrywki']}</p>";
            echo '</div>';
        }
        ?>
    </div>

    <main>
        <h2>Reprezentacja Polski</h2>
    </main>
        <section id="left">
            <form method="post">
                <p>Podaj pozycję zawodników (1-bramkarze, 2-obrońcy, 3-pomocnicy, 4-napastnicy):</p>
                <input type="number" name="numer" id="numer">
                <button>Sprawdź</button>
            </form>
            <ul>
                <?php
                if(!empty($_POST['numer'])){
                    $numer=$_POST['numer'];
                    $sql="SELECT imie,nazwisko
                            FROM zawodnik
                            WHERE pozycja_id=$numer";
                    $result=$conn->query($sql);
                    $zawodnicy=$result->fetch_all(1);
                    foreach($zawodnicy as $zawodnik){
                        echo "<li><p>{$zawodnik['imie']} {$zawodnik['nazwisko']}</p></li>";
                    }
                }
                ?>
            </ul>
        </section>
        <section id="right">
            <img src="zad1.png" alt="piłkarz">
            <p>Autor:0000000000000</p>
        </section>
</body>
</html>
<?php
    $conn->close();
?>