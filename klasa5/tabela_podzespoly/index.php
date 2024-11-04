<?php
    $conn = new mysqli('localhost','root','','jk_jk');

?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Jakub Kopiszka</h1>
    <ul>
        <?php
            $sql="SELECT nazwa,cena
            FROM podzespoly;";
            $result=$conn->query($sql);
            $podzespoly=$result->fetch_all(1);
        foreach($podzespoly as $podezspol){
            echo "<li><b>{$podezspol['nazwa']} - {$podezspol['cena']}</b></li>";
        }
        ?>
    </ul>

    <h1>Jakub Kopiszka</h1>
    <table border=" 1">
    <?php
    $sql ="SELECT max(cena),typy_id
    FROM podzespoly
    GROUP BY typy_id;";
    $result=$conn->query($sql);
    $maxceny=$result->fetch_all(1);
    foreach($maxceny as $max){
        echo "<tr><td>{$max['typy_id']}</td> <td>{$max['max(cena)']}</td></tr>";
    }
    ?>
    </table>
    <h1>Jakub Kopiszka</h1>
    <ol>
            <?php
            $sql="SELECT nazwa,kategoria
            FROM podzespoly
                INNER JOIN typy ON podzespoly.typy_id=typy.id;";
                $result=$conn->query($sql);
                $nazwy=$result->fetch_all(1);
                foreach($nazwy as $nazwa){
                    echo "<li>{$nazwa['kategoria']} {$nazwa['nazwa']}</li>";
                }
            ?>
    </ol>
    <form action="dodawanie.php" method="post">
        <input type="text" name="id" id="id">typ_id <br>
        <input type="text" name="nazwa" id="nazwa">nazwa <br>
        <input type="text" name="cena" id="cena">cena <br>
        <button>Wyslij</button>
    </form>
</body>
</html>
<?php
    $conn ->close();
?>