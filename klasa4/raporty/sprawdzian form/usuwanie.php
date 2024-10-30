<?php

$id=$_POST['id_czytelnika'];

$sql ="DELETE FROM wypozyczenia
WHERE id_czytelnik=$id;";

$conn = new mysqli('localhost','root','','jakub_kopiszka');

if($conn->query($sql)){
    echo "wypozyczenia czytelnika $id usunieto";
}

$conn->close();

?>