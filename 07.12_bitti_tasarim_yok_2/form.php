<?php

require __DIR__ . '/vendor/autoload.php';

use ElephantIO\Client;
use ElephantIO\Engine\SocketIO\Version2X;
require __DIR__ . '/connection.php';
$k=$_GET['konusulan'];
if(isset($_POST['submit']))
{
    $mesaj=$_POST['mesaj'];
    $kimden=$_COOKIE['cerez_k_adi'];
    $kime=$_GET['konusulan'];

    $query = $db->prepare("INSERT INTO mesajlar SET
mesaj = :mesaj,
kimden = :kimden,
kime = :kime");
    $insert = $query->execute(array(
        'mesaj' =>$mesaj,
        'kimden' =>$kimden,
        'kime' =>$kime
    ));
    if ( $insert ){
        $last_id = $db->lastInsertId();
        print "insert işlemi başarılı!";
    }

    $client = new Client(new Version2X('http://localhost:5000'));
    $client->initialize();
    $client->emit('new-post', [
        'id' => $db->lastInsertId() ,
        'mesaj' => $mesaj,
        'kimden' => $kimden,
        'kime' => $kime,
        'date' => date('Y-m-d')
    ]);
    $client->close();

    header("Location:form.php?konusulan=${k}");
}

?>


<form action="" method="post">
    <input type="text"  name="mesaj"><br>

    <button type="submit" name="submit" value="1">gönder</button>
</form>
