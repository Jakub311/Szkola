<?php
    $conn = new mysqli('localhost','root','','jk_przyloty');
?>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Port Lotniczy</title>
    <link rel="stylesheet" href="styl5.css">
</head>
<body>
    <header>
        <div id="h1">
            <img src="zad5.png" alt="logo lotnisko">
        </div>
        <div id="h2">
            <h1>Przyloty</h1>
        </div>
        <div id="h3">
            <h3>przydatne linki</h3>
            <a href="kwerendy.txt" target="_blank">Pobierz...</a>
        </div>
    </header>
    <main>
        <table>
            <tr>
                <th>Czas</th>
                <th>Kierunek</th>
                <th>Numer Rejsu</th>
                <th>Status</th>
            </tr>
            <?php
            $sql="SELECT czas, kierunek, nr_rejsu, status_lotu
            FROM przyloty
            ORDER BY czas asc;";
            $result=$conn->query($sql);
            $tables=$result->fetch_all(1);
            foreach($tables as $table){
                echo "<tr><td>{$table['czas']}</td>";
                echo "<td>{$table['kierunek']}</td>";
                echo "<td>{$table['nr_rejsu']}</td>";
                echo "<td>{$table['status_lotu']}</td>";
                echo "</tr>";
            }
            ?>
        </table>
    </main>
    <footer>
        <div id="f1">
            <?php
            if(isset($_COOKIE['visited'])) {
                echo "<p><i>Witaj ponownie na stronie lotniska</i></p>";
            }
            else {
                echo "<p><b>Dzień dobry! Strona lotniska używa ciasteczek.</b>/</p>";
                    setcookie("visited", "true", time() + 7200);
            }
            ?>
        </div>
        <div id="f2">
            Autor: 00000000
        </div>
    </footer>
</body>
</html>
<?php
    $conn->close();
?>