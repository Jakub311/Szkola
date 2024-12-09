<?php
    $conn=new mysqli('localhost','root','','jk_rzeki');
?>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Poziomy rzek</title>
    <link rel="stylesheet" href="styl.css">
</head>
<body>
    <header>
        <section id="h1">
            <img src="obraz1.png" alt="Mapa Polski">
        </section>
        <section id="h2">
            <h1>Rzeki w województwie dolnośląskim</h1>
        </section>
    </header>
    <section id="menu">
        <form action="poziomRzek.php" method="post">
            <input type="radio" name="stan" id="all" value="all">
            <label for="all" class="all">Wszystkie</label>
            <input type="radio" name="stan" id="overSO" value="overSO">
            <label for="overSO" class="overSO">Ponad stan ostrzegawczy</label>
            <input type="radio" name="stan" id="overSA" value="overSA">
            <label for="overSA" class="overSA">Ponad stan alarmowy</label>
            <button>Pokaż</button>
        </form>
    </section>
    <main>
        <section id="left">
            <h3>Stany na dzień 2022-05-05</h3>
            <table>
                <tr>
                    <th>Wodomierz</th>
                    <th>Rzeka</th>
                    <th>Ostrzegawczy</th>
                    <th>Alarmowy</th>
                    <th>Aktualny</th>
                </tr>
                <?php
                if(isset($_POST['stan'])){
                    $stan=$_POST['stan'];
                    if($stan=='all'){
                        $sql="SELECT nazwa, rzeka, stanAlarmowy, stanOstrzegawczy, stanWody
                        FROM wodowskazy
                            INNER JOIN pomiary ON wodowskazy.id=pomiary.wodowskazy_id
                        WHERE dataPomiaru='2022-05-05';";
                    }
                    else if($stan=='overSO'){
                        $sql="SELECT nazwa, rzeka, stanOstrzegawczy, stanAlarmowy, stanWody
                        FROM wodowskazy
                            INNER JOIN pomiary ON wodowskazy.id=pomiary.wodowskazy_id
                        WHERE dataPomiaru='2022-05-05' AND stanWody>stanOstrzegawczy;";
                    }
                    else if($stan=='overSA'){
                        $sql="SELECT nazwa, rzeka, stanOstrzegawczy, stanAlarmowy, stanWody
                        FROM wodowskazy
                            INNER JOIN pomiary ON wodowskazy.id=pomiary.wodowskazy_id
                        WHERE dataPomiaru='2022-05-05' AND stanWody>stanAlarmowy;";
                    }
                    $result=$conn->query($sql);
                    $pomiary=$result->fetch_all(1);
                    foreach($pomiary as $pomiar){
                        echo "<tr><td>{$pomiar['nazwa']}</td> <td>{$pomiar['rzeka']}</td><td>{$pomiar['stanOstrzegawczy']}</td><td>{$pomiar['stanAlarmowy']}</td><td>{$pomiar['stanWody']}</td> </tr>";
                    }
                }




                ?>
            </table>
        </section>
        <section id="right">
            <h3>Informacje</h3>
            <ul>
                <li>Brak ostrzeżeń o burzach z gradem</li>
                <li>Smog w mieście Wrocław</li>
                <li>Silny wiatr w Karkonoszach</li>
            </ul>
            <h3>Średnie stany wód</h3>
            <?php
            $sql="SELECT dataPomiaru, avg(stanWody)
            FROM pomiary
            GROUP BY dataPomiaru;";
            $result=$conn->query($sql);
            $srednie=$result->fetch_all(1);
            foreach($srednie as $srednia){
                echo "<p>{$srednia['dataPomiaru']}: {$srednia['avg(stanWody)']}</p>";
            }
            ?>
            <a href="https://komunikaty.pl">Dowiedz się więcej</a>
            <img src="obraz2.jpg" alt="rzeka">
        </section>
    </main>
    <footer>
        <p>Stronę wykonał: 00000000</p>
    </footer>
</body>
</html>
<?php
    $conn->close();
?>