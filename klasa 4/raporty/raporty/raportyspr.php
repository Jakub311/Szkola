<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Jakub K</title>
</head>
<body>
    <h2>podzespoly z procesorami</h2>
    <?php
    $conn = new mysqli('localhost','root','','sklep_jk');
    $sql = 'SELECT nazwa, opis, cena
            FROM podzespoly
            WHERE typy_id=1';
    $result = $conn->query($sql);

    echo '<ul>';
        while($row=$result->fetch_assoc()){
            $nazwa=$row['nazwa'];
            $opis=$row['opis'];
            $cena=$row['cena'];
            echo "<li> $nazwa $opis - $cena zł </li>";
        }
    echo '</ul>';

    $conn->close();
    ?>

    <h2>podzespoly w osobnym paragrafie</h2>
    <?php
    $conn = new mysqli('localhost','root','','sklep_jk');
    $sql = 'SELECT nazwa, cena
            FROM podzespoly';
    $result = $conn->query($sql);

    echo '<p>';
        while($row=$result->fetch_assoc()){
            $nazwa=$row['nazwa'];
            $cena=$row['cena'];
            echo " <p> nazwa: [$nazwa] cena: [$cena] </p>";
        }
    echo '</p>';

    $conn->close();
    ?>

</body>
</html>