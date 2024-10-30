<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
        $id_typu=$_POST['id_typu']?? NULL;    
        $nazwa=$_POST['nazwa']?? NULL;    
        $cena=$_POST['cena']?? NULL;    
        $idproducenta=$_POST['idproducenta']?? NULL;    

        if($nazwa && $cena && $idproducenta && $id_typu){
            $conn = mysqli_connect("localhost","root","","jk_baza2");
            $sql = "INSERT INTO podzespoly (typy_id,producenci_id,nazwa,cena)
            VALUES ($id_typu,$idproducenta,'$nazwa',$cena);";
            $result=$conn->query($sql);
            if($result){
               echo"Zostało dodane pomyślnie $nazwa";
            }
        }
        else{
            echo "jest zle - uzupelnij dane";
        }
    
        $conn->close();
    ?>
</body>
</html>