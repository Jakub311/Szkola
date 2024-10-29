    <?php
    echo 'test';
    $conn=new mysqli('localhost','root','','jk_zabawki');

    $sql="SELECT avg(cena) as sr_cena,adres_sklepu
    FROM zabawka_informacje
        INNER JOIN sklep_magazyn ON zabawka_informacje.id_zabawki=sklep_magazyn.id_zabawki
        INNER JOIN sklep_informacje ON sklep_magazyn.id_sklepu=sklep_informacje.id_sklepu
        GROUP BY sklep_informacje.id_sklepu;";
    $result=$conn->query($sql);
    $shops_avg=$result -> fetch_all(1);

    $sql="SELECT adres_sklepu,zabawka,stan_magazynu
    FROM zabawka_informacje
        INNER JOIN sklep_magazyn ON zabawka_informacje.id_zabawki=sklep_magazyn.id_zabawki
        INNER JOIN sklep_informacje ON sklep_magazyn.id_sklepu=sklep_informacje.id_sklepu;";
    $result=$conn->query($sql);
    $shops_toys=$result->fetch_all(1);

    $conn->close();
    ?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h2>Średnia cena zabawek</h2>
    <ol>
        <?php
        foreach($shops_avg as $shop){
            echo "<li> <b>{$shop['adres_sklepu']}</b>";
            echo "{$shop['sr_cena']} </li>";
        }
        ?>
    </ol>
    <h2>zabawki</h2>
    <table>
        <?php
        foreach($shops_toys as $shop_toy){
            echo "<tr> <td> <i>{$shop_toy['adres_sklepu']} </i></td>";
            echo "<td> {$shop_toy['stan_magazynu']}</td>";
            echo "<td> {$shop_toy['zabawka']} </td></tr>";
        }
        ?>
    </table>
</body>
</html>