<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h2>Gatunek SF</h2>
    <?php
    $conn = new mysqli('localhost','root','','jk_raporty');
    $sql = "SELECT Tytul, Gatunek FROM filmy WHERE Gatunek='SF'";
    $result = $conn->query($sql);

    echo '<ol>';
        while ($row= $result->fetch_assoc()){
            $Tytul=$row['Tytul'];
            $Gatunek=$row['Gatunek'];
            echo "<li> $Tytul $Gatunek </li>";
        }
        echo '</ol>';

    $conn->close();
    
    ?>

    <h2>Tytuły z nazwiskami</h2>
    <?php
    $conn = new mysqli('localhost','root','','jk_raporty');
    $sql = 'SELECT Tytul, Nazwisko FROM filmy INNER JOIN rezyserzy ON filmy.RezyserID=rezyserzy.IDRezyser;';
    $result = $conn->query($sql);

    echo '<ul>';
        while ($row= $result->fetch_assoc()){
            $Tytul=$row['Tytul'];
            $Nazwisko=$row['Nazwisko'];
            echo "<li> $Tytul $Nazwisko </li>";
        }
    echo '</ul>';

    $conn->close();

    ?>

    <h2>Filmy z ocena 4</h2>
    <?php
    $conn = new mysqli('localhost','root','','jk_raporty');
    $sql = 'SELECT IDfilm, Tytul, Gatunek, RezyserID, RecenzjaID, Link 
    FROM filmy 
        INNER JOIN recenzje ON filmy.RecenzjaID=recenzje.IDRecenzja 
    Where ocena=4';
    $result = $conn->query($sql);
    
    echo '<table>';
        while ($row= $result->fetch_assoc()){
            $film = $row['IDfilm'];
            $Tytul = $row['Tytul'];
            $Gatunek = $row['Gatunek'];
            $Rezyser = $row['RezyserID'];
            $Recenzja = $row['RecenzjaID'];
            $Link = $row['Link'];
            echo "<tr>";
            echo "<td> $film </td>";
            echo "<td> $Tytul </td>";
            echo "<td> $Gatunek </td>";
            echo "<td> $Rezyser </td>";
            echo "<td> $Recenzja </td>";
            echo "<td> $Link </td>";
            echo "</tr>";
        }
    echo '</table>';

    $conn->close();
    ?>
    <?php
    //tabele z wykorzystaniem foreach
    $conn = new mysqli('localhost','root','','jk_raporty');
    $sql = 'SELECT filmy.*
    FROM filmy 
        INNER JOIN recenzje ON filmy.RecenzjaID=recenzje.IDRecenzja 
    Where ocena=4';
    $result = $conn->query($sql);

    echo '<table>';
    while ($row=$result->fetch_assoc()){
        echo'<tr>';
        foreach ($row as $field){
            echo "<td>$field</td>";
        }
        echo'</tr>';
    }

    echo '</table>';
    $sql = 'SELECT ocena, tresc
    FROM filmy';
    $result=$conn->query($sql);

    $conn->close();
    ?>

</body>
</html>