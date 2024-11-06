<?php
$conn = new mysqli('localhost','root','','jk_dania');
$sql = "SELECT id,nazwa FROM typy_dan";
$result=$conn->query($sql);
$dania=$result->fetch_all(1);

?>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="index.php" method="post">
        <select name="typ_id" id="typ_id">
            <?php
            foreach($dania as $danie){
                echo "<option value='{$danie['id']}'>{$danie['nazwa']}</option>";
            }
            ?>
        </select>
        <button>Dodaj</button>
    </form>
</body>
</html>
<?php
$conn->close();
?>
