<?php
$conn= new mysqli('localhost','root','','jk_biblioteka');
$sql='SELECT imie,nazwisko
FROM czytelnicy;';
$result=$conn->query($sql);
$readers=$result->fetch_all(1);

$sql="INSERT INTO czytelnicy (imie,nazwisko,kod)
VALUES ('Anna','Michalak','an05mi');";

?>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="index.php" method="POST">
        <label for="name">imię: </label>
        <input type="text" name="name" id="name">
        <label for="surname">nazwisko: </label>
        <input type="text" name="surname" id="surname">
        <label for="birth">rok urodzenia: </label>
        <input type="number" name="birth" id="birth">
        <button type="submit">DODAJ</button>
    </form>
    <?php
    if(!empty($_POST['name']) && !empty($_POST['surname']) && !empty($_POST['birth'])){
        $nazwisko=$_POST['surname'];
        $imie=$_POST['name'];
        $rok=$_POST['birth'];
        $code=substr($imie,0,2).substr($rok,-2,2).substr($nazwisko,0,2);
        $code=strtolower($code);
        $sql="INSERT INTO czytelnicy (imie,nazwisko,kod)
        VALUES ('$imie','$nazwisko','$code');";
        if($conn->query($sql)){
            echo "Czytelnik $nazwisko zostal dodany";
        }
    }
    else{
        echo "uzupelnij dane";
    }
    ?>
    <h3>Nasi czytelnicy</h3>
    <ul>
        <?php
        foreach($readers as $reader){
            echo "<li>{$reader['imie']} {$reader['nazwisko']}";
        }
        ?>
    </ul>
</body>
</html>
<?php
$conn->close();
?>