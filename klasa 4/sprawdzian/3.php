<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    $liczby=[12,1,2,3,4,-2,-6,-7,9,15,21,18,-24];
    foreach($liczby as $podzielne){
        if($podzielne %3 ==0){
            echo "$podzielne, ";
        }
    }
    echo "<br>";
    foreach($liczby as $dodatnie){
        if($dodatnie %2 ==0){
            $dodatnie2 = $dodatnie +=1;
            echo "$dodatnie2, ";
        }
    }
    ?>
</body>
</html>