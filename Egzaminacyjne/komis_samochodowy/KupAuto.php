<?php
    $conn= new mysqli('localhost','root','','jk_kupauto');
    $sql="SELECT model, rocznik, przebieg, paliwo, cena, zdjecie
    FROM samochody
    WHERE id=10;";
    $result=$conn->query($sql);
    $toyota=$result->fetch_all(1);
?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Komis aut</title>
    <link rel="stylesheet" href="styl.css">
</head>
<body>
    <header>
        <h1><em>KupAuto!</em> Internetowy Komis Samochodowy</h1>
    </header>
    <section id="top">
        
        <?php
        foreach($toyota as $toyot){
            echo "<img src='{$toyot['zdjecie']}' alt='oferta dnia'>";
            echo "<h4>Oferta Dnia: Toyota</h4>";
            echo "Rocznik: {$toyot['rocznik']}, przebieg: {$toyot['przebieg']}, rodzaj paliwa: {$toyot['paliwo']}";
            echo "<h4>Cena: {$toyot['cena']}</h4>";
        }
        ?>
    </section>
    <section id="mid">
        <h2>Oferty Wyróżnione</h2>
        <div class="flex">
        <?php
        

        $sql="SELECT nazwa, model, rocznik, cena, zdjecie
        FROM marki
        INNER JOIN samochody ON marki.id=samochody.marki_id
        WHERE wyrozniony=1
        LIMIT 4;";

        $result=$conn->query($sql);
        $oferty=$result->fetch_all(1);

        foreach($oferty as $oferta){
            echo "<div  class='oferty'>";
            echo "<img src='{$oferta['zdjecie']}' alt='{$oferta['model']}'>";
            echo "<h4>{$oferta['nazwa']} {$oferta['model']}</h4>";
            echo "<p>Rocznik: {$oferta['rocznik']}</p>";
            echo "<h4>Cena: {$oferta['cena']}</h4>";
            echo "</div>";
        }
        ?>
        </div>
    </section>
    <section id="bot">
        <h2>Wybierz markę</h2>
        <form action="" method="post">
            <select name="lista" id="lista">
                <?php
                $sql="SELECT nazwa
                FROM marki;";
                $result=$conn->query($sql);
                $nazwy=$result->fetch_all(1);
                foreach($nazwy as $nazwa){
                    echo "<option value='{$nazwa['nazwa']}'>{$nazwa['nazwa']}</option>";
                }
                ?>
            </select>
            <button>Wyszukaj</button>
        </form>
        <div class="flex">
            <?php
            if(!empty($_POST['lista'])){
                $model=$_POST['lista'];
                
                $sql="SELECT model, cena, zdjecie, nazwa
                FROM samochody
                INNER JOIN marki ON marki.id=samochody.marki_id
                WHERE nazwa='$model';";
                $result=$conn->query($sql);
                $auta=$result->fetch_all(1);

                foreach($auta as $auto){
                    echo "<div class='oferty'>";
                    echo "<img src='{$auto['zdjecie']}' alt='{$auto['model']}'>";
                    echo "<h4>{$auto['nazwa']} {$auto['model']}</h4>";
                    echo "<h4>Cena: {$auto['cena']}</h4>";
                    echo "</div>";
                }
            }
            ?>
            </div>
        </div>

    </section>
    <footer>
        <p>Stronę wykonał: 000000</p>
        <p><a href=" http://firmy.pl/komis">Znajdź nas także</a></p>
    </footer>
</body>
</html>
<?php  
    $conn->close();
?>