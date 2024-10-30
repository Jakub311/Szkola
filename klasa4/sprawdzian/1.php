<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    $dniTygodnia=['Poniedzialek','Wtorek','Sroda','Czwartek','Piatek','Sobota','Niedziela'];

    echo "$dniTygodnia[0]";
    echo "$dniTygodnia[1]";

    echo "<ol>";
    foreach($dniTygodnia as $Tydzien){
        echo "<li> $Tydzien";
    }
    ?>
</body>
</html>