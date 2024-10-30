<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="01_04.php" method="get">
        <label for="nazwa_pliku">nazwa pliku</label>
        <input type="text" name="nazwa_pliku" id="nazwa_pliku">
        <button>wyslij</button>
    </form>
    <?php
    if(empty($_GET['nazwa.pliku'])){
        echo 'wpisz nazwe pliku';        
    }
    else {
        $nazwa_pliku = $_GET['nazwa.pliku'];
        if(file_exists($nazwa_pliku)){
            echo "plik $nazwa_pliku istnieje ". filesize($nazwa_pliku);
        }
    }
    
    ?>
</body>
</html>