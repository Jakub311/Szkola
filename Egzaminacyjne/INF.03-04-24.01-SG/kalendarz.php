<?php
    $conn = new mysqli('localhost','root','','jk_baza');

    $sql1="SELECT DISTINCT wpis 
    FROM zadania
    WHERE dataZadania BETWEEN '2020-07-01' AND  '2020-07-07' AND
    wpis IS NOT NULL AND
    wpis !='';";

    $result=$conn->query($sql1);
    $tasks=$result->fetch_all(1);

    $sql2="SELECT dataZadania, wpis 
    FROM zadania
    WHERE miesiac='lipiec';";

    $result=$conn->query($sql2);
    $tasks2=$result->fetch_all(1);

    $conn->close();
    ?>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Zadania na lipiec</title>
    <link rel="stylesheet" href="styl6.css">
</head>
<body>
    <header>
        <div id="left">
            <img src="logo1.png" alt="lipiec">
        </div>
        <div id="right">
            <h1>Terminarz</h1>
            <p>Najbliższe zadania:
                <?php
                foreach($tasks as $task){
                    echo "{$task['wpis']}; ";
                }
                ?>
            </p>
        </div>
    </header>
    <main>
    <?php
    foreach($tasks2 as $task1){
        echo "<section class='calendar'>";
        echo "<h6> {$task1['dataZadania']} </h6>";
        echo "<p> {$task1['wpis']} </p>";
        echo "</section>";
    }
    ?>
    </main>
    <footer>
        <a href="sierpien.html">Terminarz na sierpień</a>
        <p>Stronę wykonał: 000000000</p>
    </footer>
</body>
</html>