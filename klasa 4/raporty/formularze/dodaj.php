<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    if(empty($_POST['Name']) || empty($_POST['Surname']) || empty($_POST['code'])){
        echo 'Uzupełnij dane';
    }
    else {
        $Imię=$_POST['Name'];
        $Nazwisko=$_POST['Surname'];
        $Kod=$_POST['code'];
        $conn = new mysqli('localhost','root','','jk_biblioteka');

        $sql = "INSERT INTO czytelnicy (imie,nazwisko,kod)
        VALUES ('$Imię','$Nazwisko','$Kod');";

        if($conn->query($sql)){
            echo "User $Imię $Nazwisko został dodany";
        }
        $conn ->close();
    }
    ?>
</body>
</html>