<?php
    $conn = new mysqli('localhost','root','','jk_egzamin');
?>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>piłka nożna</title>
    <link rel="stylesheet" href="styl2.css">
</head>
<body>
    <header>
        <h3>Reprezentacja polski w piłce nożnej</h3>
        <img src="obraz1.jpg" alt="„reprezentacja">
    </header>
    <div id="flex">
    <section>
        <form action="" method="post">
            <select name="lista">
                <option value="1">Bramkarze</option>
                <option value="2">Obrońcy</option>
                <option value="3">Pomocnicy</option>
                <option value="4">Napastnicy</option>
            </select>
            <button>Zobacz</button>
        </form>
        <img src="zad2.png" alt="piłka">
        <p>Autor: 00000000000</p>
    </section>
    <aside>
        <ol>
            <?php
            if(!empty($_POST['lista'])){
                $lista=$_POST['lista'];
                $sql="SELECT imie,nazwisko
                FROM zawodnik
                WHERE pozycja_id=$lista;";
                $result=$conn->query($sql);
                $pilkarze=$result->fetch_all(1);
                foreach($pilkarze as $pilka){
                    echo "<li>";
                    echo "<p>{$pilka['imie']} {$pilka['nazwisko']}</p>";
                    echo "</li>";
                }
            }
            ?>
        </ol>
    </aside>
    </div>
    <main>
        <h3>Liga mistrzów</h3>
    </main>
    <div id="liga">
        <?php
        $sql="SELECT zespol,punkty,grupa
        FROM liga
        GROUP BY punkty desc;";
        $result=$conn->query($sql);
        $mecze=$result->fetch_all(mode: 1);
        foreach($mecze as $mecz){
            echo "<div class='mecze'> ";
            echo "<h2>{$mecz['zespol']}</h2>";
            echo "<h1>{$mecz['punkty']}</h1>";
            echo "<p>grupa:{$mecz['grupa']}</p>";
            echo "</div>";
        }
        ?>
    </div>
</body>
</html>
<?php
    $conn->close();
?>