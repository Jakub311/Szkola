<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hurtownia szkolna</title>
    <link rel="stylesheet" href="styl.css">
</head>
<body>
    <header>
        <h1>Hurtownia z najlepszymi cenami</h1>
    </header>
    <main>
        <section id="left">
            <h2>Nasze ceny</h2>
            <table>
            <?php
            $link=new mysqli('localhost','root','','sklep');
            $sql='SELECT nazwa,cena
            FROM towary
            LIMIT 4;';
            $result = $link -> query($sql); 
            while($row=$result->fetch_array()){
                echo "<tr><td>$row[0]</td><td>$row[1]</td></tr>";
            }
            $link ->close();
            ?>
            </table>
        </section>
        <section id="mid">
            <h2>Koszt zakupów</h2>
            <form action="index.php" method="POST">
                <label for="lista">wybierz artykuł: </label>
                <select name="lista" id="lista">
                    <option value="Zeszyt 60 kartek">Zeszyt 60 kartek</option>
                    <option value="Zeszyt 32 kartki">Zeszyt 32 kartki</option>
                    <option value="Cyrkiel">Cyrkiel</option>
                    <option value="Linijka 30 cm">Linijka 30 cm</option>
                </select> <br>
                <label for="liczba">liczba sztuk: </label>
                <input type="number" name="liczba" id="liczba"><br>
                <button type="submit">OBLICZ</button>
            </form>
            <?php
            $link=new mysqli('localhost','root','','sklep');
             if(!empty($_POST['liczba'])){
                $produkt=$_POST['lista'];
                $liczba=$_POST['liczba'];
                $sql1="SELECT cena
                FROM towary
                WHERE nazwa='$produkt';";
                $result=$link->query($sql1);
                while($row=$result->fetch_array()){
                    $cena = $row[0]*$liczba;
                    echo "wartość zakupów: $cena";
                }
             }
            $link ->close();
            ?>
        </section>
        <section id="right">
            <h2>Kontakt</h2>
            <img src="zakupy.png" alt="hurtownia">
            <p>e-mail: <a href="mailto:">hurt@poczta2.pl</a></p>
        </section>
    </main>
    <footer>
        <h4>Witrynę wykonał: 12095y23868924</h4>
    </footer>
</body>
</html>