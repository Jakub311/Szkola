<?php
    $conn= new mysqli('localhost','root','','jk_baza2');
    $sql = 'SELECT kategoria, nazwa,cena 
    FROM podzespoly
        INNER JOIN typy ON podzespoly.typy_id=typy.id;';
    $result = $conn->query($sql);
    $podzespoly= $result->fetch_all(1);

    $sql='SELECT id,kategoria
    FROM typy;';
    $result = $conn->query($sql);
    $typy= $result->fetch_all(1);

    $conn->close();
?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Jakub Kopiszka</h1>
    <ul>
        <?php
            foreach($podzespoly as $podzespol){
                echo"
                    <li>
                        <b>{$podzespol['kategoria']}</b> {$podzespol['nazwa']} - {$podzespol['cena']}
                    </li>
                ";
            } 
        ?>
    </ul>
    <form action="dodawanie.php" method="POST">
        <input type="text" name="nazwa" placeholder="nazwa">
        <input type="number" name="cena" placeholder="cena">
        <input type="number" name="idproducenta" id="idproducenta" placeholder="idproducenta">
        <select name="id_typu" id="id_typu">
            <?php
            foreach($typy as $typ){
                echo "<option value='{$typ['id']}'>
                {$typ['kategoria']}
                </option>";
            }
            ?>
        </select>
        <button>Wyslij</button>
    </form>
</body>
</html>