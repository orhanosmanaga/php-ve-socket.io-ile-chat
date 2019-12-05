<?php
require __DIR__ . '/connection.php';
if(isset($_POST['submit'])) {
    $k_adi = $_POST['kadik'];
    $k_sifre = $_POST['ksifrek'];

    $query = $db->prepare("INSERT INTO kisiler SET
k_adi = ?,
k_sifre = ?
");
    $insert = $query->execute(array(
         $k_adi , $k_sifre
    ));
    if ( $insert ){
        $last_id = $db->lastInsertId();
        print "insert işlemi başarılı!";
    }
}
header("Location:index.php");
    ?>