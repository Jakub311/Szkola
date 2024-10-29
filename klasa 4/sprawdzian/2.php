<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    $produkt1=['nazwa'=> 'Jablko','cena'=>2];
    $produkt2=['nazwa'=> 'Kiwi','cena'=>3];
    $produkt3=['nazwa'=> 'banan','cena'=>1];
    echo "produkt: {$produkt1['nazwa']} - {$produkt1['cena']}";

    $produkty=[$produkt1,$produkt2,$produkt3];
    echo "<table>";
    echo "<tr>
    <th>produkt</th>
    <th>cena</th>
    </tr>";
    foreach($produkty as $produkt){
        echo "<tr> </tr>";
        
        foreach($produkt as $cena){
            echo "<td> $cena</td>";
        }
    }
    echo "</table>";
    ?>
</body>
</html>