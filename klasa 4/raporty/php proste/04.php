<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    $pogoda=['rain', 'sunshine', 'clouds', 'hail', 'sleet', 'snow', 'wind'];
    echo  "We've seen all kinds of weather this month. At the beginning of the month, we had snow and wind. Then came sunshine with a few clouds and some rain. At least we didn't get any hail or sleet.";
    echo"<br>";
    echo "We've seen all kinds of weather this month. At the beginning of the month, we had $pogoda[5] and $pogoda[6]. Then came $pogoda[1] with a few $pogoda[2] and some $pogoda[0]. At least we didn't get any $pogoda[3] or $pogoda[4].";

    $inicjaly=['imie','nazwisko','Teksas','Tokio'];
    echo "<table>";
    foreach($inicjaly as $value){
        echo "<tr> <td> $value </td> </tr>";
    }
    echo "</table>";

    $imie=[1,2,3,4,5,6,7,8,9,10];
    foreach($imie as $number){
        if($number%2==0){
            echo $number. " , ";
        }
    }

    $nazwisko=['banan','jablko','kiwi','liczi'];
    foreach ($nazwisko as $key => $value) {
        echo "<p> tablica[$key]=$value";
    }

    ?>
</body>
</html>