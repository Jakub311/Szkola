<?php
    $conn = new mysqli('localhost','root','','jk_egzamin');
?>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Twój wskaźnik BMI</title>
    <link rel="stylesheet" href="styl4.css">
</head>
<body>
    <header>
        <div id="lewo">
            <h2>Oblicz wskaźnik BMI</h2>
        </div>
        <div id="prawo">
            <img src="wzor.png" alt="liczymy BMI">
        </div>
    </header>
    <section>
        <img src="rys1.png" alt="zrzuć kalorie!">
    </section>
    <aside>
        <h1>Podaj dane</h1> 
        <form method="post">
            <label for="waga">Waga:</label>
            <input type="number" name="waga" id="waga"> <br>
            <label for="wzrost">Wzrost [cm]:</label>
            <input type="number" name="wzrost" id="wzrost">
            <button>Licz BMI i zapisz wynik</button>
        </form>
        <?php
        if(!empty($_POST['waga']) && !empty($_POST['wzrost'])){
            $waga=$_POST['waga'];
            $wzrost=$_POST['wzrost'];
            echo "Twoja waga: {$waga}; Twój wzrost: {$wzrost} <br>";
            $bmi=($waga/($wzrost*$wzrost))*10000;
            echo "BMI wynosi: {$bmi}";
            
            if($bmi<18){
                $bmi_id=1;
            }
            elseif ($bmi >= 19 && $bmi <= 25) {
                $bmi_id = 2;
            }
            elseif ($bmi >= 26 && $bmi <= 30) {
                $bmi_id = 3;
            }
            elseif ($bmi > 30) {
              	$bmi_id = 4;
            }
            $data_pomiaru=date("Y-m-d");
            $sql="INSERT INTO wynik (bmi_id,data_pomiaru,wynik)
                    VALUES ($bmi_id,'$data_pomiaru',$bmi);";
            $result=$conn->query($sql);
                
        }
        ?>
    </aside>
    <main>
        <table>
            <tr>
                <th>lp.</th>
                <th>Interpretacja</th>
                <th>zaczyna się od...</th>
            </tr>
            <?php
            $sql="SELECT id, informacja, wart_min
                    FROM bmi;";
            $result=$conn->query($sql);
            $informacje=$result->fetch_all(1);
            foreach($informacje as $informacja){
                echo "<tr><td>{$informacja['id']}</td>";
                echo "<td>{$informacja['informacja']}</td>";
                echo "<td>{$informacja['wart_min']}</td></tr>";
            }
            ?>
        </table>
    </main> 
    <footer>
        Autor: 00000000 <a href="kw2.jpg">Wynik działania kwerendy 2</a>
    </footer>
</body>
</html>
<?php
    $conn->close();
?>