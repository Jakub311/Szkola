<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Szkoła</title>
</head>
<body>
    <h1>Uczniowie</h1>
    <section>
        <h2>Lista uczniów</h2>
        <table>
            <?php
                $conn = mysqli_connect("localhost","root","","jk_formularze-szkola");
                $sql = "SELECT * FROM uczen";
                $result = $conn->query($sql);

                while( $row = $result->fetch_row()){
                    echo "<tr>";
                    foreach($row as $field){
                        echo "<td> $field </td>";
                    }
                    echo "</tr>";
                }
                $conn -> close();
            ?>
        </table>
    </section>
</body>
</html>