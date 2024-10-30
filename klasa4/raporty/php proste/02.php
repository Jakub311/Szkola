<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    $month = date('m');
    if($month == 8){
        echo 'jest sierpien wiec jest naprawde goraco' ;
    }
    else {
        echo 'nie jest sierpien nie jest wiec goraco';
    }

    switch($month){
        case 2:
            echo 'ostatnia szansa na chłód';
            break;
        case 3:
        case 4:
            echo 'wiosna';
            break;
        case 5:
            echo 'najpiekniejszy';
            break;
        case 6:
        case 7:
        case 8:
            echo 'lato';
            break;
        case 9:
        case 10:
            echo 'jesien';
            break;
        case 11:
            echo 'buro i ponuro';
            break;
        case 12:
            case 1:
            echo 'a moze zima?';

    }
    ?>
</body>
</html>