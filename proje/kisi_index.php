<form action="kisi_index.php" method="post">
    KULLANICI ADI:<input type="text"  name="eklenenkadi"><br>
    <button type="submit" name="submit" value="1">ekle</button>
</form>

<hr>
<input type="button" src="" value="çıkış"><br>
<hr>
<?php
require __DIR__ . '/connection.php';


//arkadaş ekleme ->
if(isset($_POST['submit'])) {

    $ekleyen = $_COOKIE['cerez_k_adi'];
    $eklenenkadi = $_POST['eklenenkadi'];


    $query = $db->prepare("INSERT INTO arkadaslik SET
birinci = ?,
ikinci = ?
");
    $insert = $query->execute(array(
        $ekleyen,$eklenenkadi
    ));

    //tersi

    $query = $db->prepare("INSERT INTO arkadaslik SET
birinci = ?,
ikinci = ?
");
    $insert = $query->execute(array(
        $eklenenkadi,$ekleyen
    ));

    if ( $insert ){
        $last_id = $db->lastInsertId();
        echo "eklendi";
    }
    else
    {echo "hata";}
}
//<- arkadaş ekleme

//arkadaş listeleme ->

$ekleyen2 = $_COOKIE['cerez_k_adi'];
$stmt = $db->prepare("SELECT * FROM arkadaslik WHERE birinci=?");
$stmt->execute([$ekleyen2]);
$data = $stmt->fetchAll();
echo "burası değişecek<br><br>";
foreach ($data as $row) {


    echo "konuş";
    echo "<a href=mesaj.php?konusulan=${row['ikinci']}>${row['ikinci']}</a>";

    echo "-- yaz";
    echo "<a href=form.php?konusulan=${row['ikinci']}>${row['ikinci']}</a><br>";
    //echo $row['ikinci']."<br />";
}
//<- arkadaş listeleme


?>