<?php
    $conn = new mysqli('localhost','root','','jk_sklep1');

    $sql = "SELECT nazwa
    FROM towary
    WHERE promocja=1;";
    $result=$conn->query($sql);
    $towarys=$result->fetch_all(1);

    
?>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sklep dla uczniów</title>
    <link rel="stylesheet" href="styl.css">
</head>
<body>
    <header>
        <h1>Dzisiejsze promocje naszego sklepu</h1>
    </header>
    <main>
        <section id="left">
            <h2>Taniej o 30%</h2>
            <ol>
                <?php
                foreach($towarys as $towary){
                    echo "<li>{$towary['nazwa']}</li>";
                }
                ?>
            </ol>
        </section>
        <section id="mid">
            <h2>Sprawdź cenę</h2>
            <form method="POST">
                <select name="lista" id="lista">
                    <option value="Gumka do mazania">Gumka do mazania</option>
                    <option value="Cienkopis">Cienkopis</option>
                    <option value="Pisaki 60 szt.">Pisaki 60 szt.</option>
                    <option value="Markery 4 szt.</">Markery 4 szt.</option>
                </select>
                <button>Sprawdź</button>
            </form>
            <section id="wynik"> 
                <?php
                if(!empty($_POST['lista'])){
                    $lista=$_POST['lista'];
                    $sql="SELECT cena
                    FROM towary
                    WHERE nazwa='$lista';";

                    $result=$conn->query($sql);
                    $zapytanie=$result->fetch_all(1);

                    foreach($zapytanie as $zapyta){
                        $cena=$zapyta['cena']*0.7;
                        echo "cena regularna: {$zapyta['cena']} <br> 
                               cena promocji 30%: $cena";
                    }
                }
                ?>
            </section>
        </section>
        <section id="right">
            <h2>Kontakt</h2>
            <p>e-mail:<a href="mailto:bok@sklep.pl">bok@sklep.pl</a></p>
            <img src="promocja.png" alt="promocja">
        </section>
    </main>
    <footer>
        <h4>Autor strony: 00000000000</h4>
    </footer>
</body>
</html>
<?php
    $conn->close();
?>