<head>
<link rel="stylesheet" type="text/css" href="style.css">
</head>/
<div id="kayit">
    <b>KAYIT OL</b><br>
    <form action="kayit.php" method="post">
        <table>
            <tr><td>KULLANICI ADI:</td><td><input type="text"  name="kadik"></td></tr>
            <tr><td>ŞİFRE:</td><td><input type="password"  name="ksifrek"></td></tr>
            <tr><td colspan="2"><button type="submit" name="submit" value="1">kayıt</button></td></tr>


        </table>
    </form>

</div>
<div id="giris">
    <b>GİRİŞ YAP</b><br>
    <form action="index.php" method="post">
        <table>
            <tr><td>KULLANICI ADI:</td><td><input type="text"  name="kadig"></td></tr>
            <tr><td>ŞİFRE:</td><td><input type="password"  name="ksifreg"></td></tr>

            <tr><td colspan="2"><button type="submit" name="submit" value="1">giris</button></td></tr>

        </table>
    </form>
</div>

<?php

require __DIR__ . '/connection.php';
if(isset($_POST['submit'])) {
    $k_adi = $_POST['kadig'];
    $k_sifre = $_POST['ksifreg'];
    $query = $db->query("SELECT * FROM kisiler WHERE k_adi = '{$k_adi}' and k_sifre = '{$k_sifre}'")->fetch(PDO::FETCH_ASSOC);
    if ( $query ){
        setcookie("cerez_k_adi", $k_adi);
        header('Location:kisi_index.php');
    }
    else
    {echo "hata";}


}

?>