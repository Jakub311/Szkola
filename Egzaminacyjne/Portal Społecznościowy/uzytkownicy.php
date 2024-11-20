<?php
    $conn = new mysqli('localhost','root','','jk_portal');
?>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Portal społecznościowy</title>
    <link rel="stylesheet" href="styl5.css">
</head>
<body>
    <div id="flex">
        <header id="l">Nasze osiedle</header>
        <header id="r">
            <?php
            $sql="SELECT count(*)
            FROM dane;";
            $result=$conn->query($sql);
            $uzytkownicy=$result->fetch_all(1);
            foreach($uzytkownicy as $uzyt){
                echo "<h5> Liczba użytkowników portalu: {$uzyt['count(*)']} </h5>";
            }
            ?>
        </header>
        
    </div>
    <main>
        <section id="left">
            <h3>Logowanie</h3>
            <form method="POST">
                <label for="login">Login</label> <br>
                <input type="text" name="login" id="login"> <br>
                <label for="haslo">Hasło</label> <br>
                <input type="password" name="haslo" id="haslo"> <br>
                <button>Zaloguj</button>
            </form>
        </section>
        <section id="right">
            <h3>Wizytówka</h3>
            <div id="block">
                <?php
                //skrypt2
                if(!empty($_POST['login']) && !empty($_POST['haslo'])){
                    $login=$_POST['login'];
                    $haslo=$_POST['haslo'];
                    $hash = sha1($haslo);
                    $sql="SELECT haslo
                    FROM uzytkownicy
                    WHERE login='$login';";
                    $result=$conn->query($sql);
                    if($result->num_rows>0){
                        $row=$result->fetch_assoc();
                        $hash=sha1($haslo);
                        if($hash==$row['haslo']){
                            $sql="SELECT login, rok_urodz, przyjaciol, hobby, zdjecie
                            FROM uzytkownicy
                            INNER JOIN dane ON uzytkownicy.id=dane.id
                            WHERE login='$login';";
                            $result=$conn->query($sql);
                            $wizytowka=$result->fetch_all(1);
                            // $wiek=(rok_urodz-DATE('Y'));
                            foreach($wizytowka as $wizyt){
                                echo "<div class='wizy'>";
                                echo "<img src='{$wizyt['zdjecie']}' alt='osoba'>";
                                echo "<h4>{$wizyt['login']} ({$wizyt[$wiek]})</h4>";
                                echo "<button id='info'><a href='dane.html'>Więcej informacji</a></button>";
                                echo "</div>";
                        }
                        }
                        else{
                            echo "hasło nieprawidłowe";
                        }
                    }             
                    else {
                        echo "login nie istnieje";
                    }
                }
                else{
                    echo "Uzupełnij wszystkie dane";
                }

                ?>
            </div>
        </section>
    </main>
    <footer>Stronę wykonał: 00000000</footer>
</body>
</html>
<?php
    $conn->close();
?>