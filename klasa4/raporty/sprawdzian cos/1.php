<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    $miesiac= date("M");
    if($miesiac==5){
        echo"maj";
    }
    else{
        echo "inny";
    }
    echo '<br>';
    ?>
     <?php
    $i=6-3;
    echo "liczba po zmniejszeniu o 3 wynosi teraz $i";
    echo '<br>';
    ?>
    <?php
    for($i=10; $i<=60; $i++){
        if($i%2!=0){
            echo "$i, ";
        }
    }
    ?>
     <?php
    $inicjaly=['Jakub','Kopiszka','Nakło Osiedle Łokietka','Nakło nad Notecią'];
    foreach($inicjaly as $value){
        echo "<p> $value";
    }
    ?>
</body>
</html>