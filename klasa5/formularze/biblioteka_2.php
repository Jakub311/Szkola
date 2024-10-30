<?php
    $conn = new mysqli('localhost','root','','jk_biblioteka');

    $sql = "SELECT id,nazwa
    FROM wydawnictwa;";

    $result=$conn->query($sql);
    $wydawnictwa = $result->fetch_all(1);

?>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="biblioteka_2.php" method="post">
        <?php
            foreach($wydawnictwa as $wydaw){
                echo "<label><input type='radio' name='wydaw' value='{$wydaw['id']}'>{$wydaw['nazwa']}</label><br>";
            };
        ?>
        <button>Wyślij</button>
    </form>
    <?php
    if(!empty($_POST['wydaw'])){
        $wydaw=$_POST['wydaw'];
        
        $sql2 = "SELECT tytul
        FROM ksiazki
        WHERE id_wydawnictwo=$wydaw;";

        $result=$conn->query($sql2);
        $tytul=$result->fetch_all(1);

        foreach($tytul as $tytu){
            echo"<ul><li>{$tytu['tytul']}</li></ul>";
        }
    };     
    ?>
</body>
</html>
<?php
    $conn->close();
?>