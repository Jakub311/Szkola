<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="03_opinie.php" method="POST">
        <textarea name="opinia" id="opinia" cols="30" rows="10">
        </textarea>
        <button>Wyślij</button>
    </form>
    <?php
    if(empty($_POST['opinia'])){
        echo "uzupelnij dane";
    }
    else{
        $tekst = substr($_POST['opinia'],0,255);
        $tekst=strip_tags($tekst)."\n";
        if($plik=fopen('opinie.txt','a')){
            echo "udalo sie";
            fwrite($plik,$tekst);
            fclose($plik);
        }
        else{
            echo "nie udalo sie otworzyc";
        }
    }
    ?>
</body>
</html>