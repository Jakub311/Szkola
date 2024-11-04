<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    $conn = new mysqli('localhost','root','','jk_jk');
    if(!empty($_POST['id']) && !empty($_POST['nazwa']) && !empty($_POST['cena'])){
        $id=$_POST['id'];
        $nazwa=$_POST['nazwa'];
        $cena=$_POST['cena'];

        $sql="INSERT INTO podzespoly (typy_id, nazwa, cena)
        VALUES ($id,'$nazwa',$cena);";
        $result=$conn->query($sql);
        echo "podzespol {$nazwa} zostal dodany";
    }
    else {
        echo "uzupelnij dane ";
    }
    ?>
    <a href="index.php">odsylacz</a>
</body>
</html>
<?php
    $conn ->close();
?>