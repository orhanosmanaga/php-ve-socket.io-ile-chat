<?php
require __DIR__ . '/connection.php';
require __DIR__ . '/vendor/autoload.php';

use ElephantIO\Client;
use ElephantIO\Engine\SocketIO\Version2X;

//$posts =$db ->query('SELECT * FROM mesajlar WHERE kimden="orhan" and kime="orhan2" or kimden="orhan2" and kime="orhan"  ORDER BY  tarih DESC ')->fetchAll(PDO::FETCH_ASSOC);

$mesajatan = $_COOKIE['cerez_k_adi'];
$mesajatilan=$_GET['konusulan'];
$stmt = $db->prepare("SELECT * FROM mesajlar WHERE kimden=? and kime=? or kimden=? and kime=?  ORDER BY  tarih DESC");
$stmt->execute([$mesajatan,$mesajatilan,$mesajatilan,$mesajatan]);
$data2 = $stmt->fetchAll(PDO::FETCH_ASSOC);
$k=$_GET['konusulan'];
$genelmesaj="";
$genelkimden="";
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" type="text/css" href="style.css">
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
    <div id="mesajat">
        <?php
        if(isset($_POST['submit']))
        {
            echo "<script>console.log('mesaj yollandı ' );</script>";
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

            }

            $client2 = new Client(new Version2X('http://localhost:5000'));
            $client2->initialize();
            $client2->emit('new-post', [
                'id' => $db->lastInsertId() ,
                'mesaj' => $mesaj,
                'kimden' => $kimden,
                'kime' => $kime,
                'date' => date('Y-m-d')
            ]);
            echo "<script>console.log('socket yollandi " . $mesaj . "' );</script>";
            $genelmesaj=$mesaj;
            $genelkimden=$kimden;
            $client2->close();



        }


        ?>

        <form action="" method="post">
            <input type="text"  name="mesaj">

            <button type="submit" name="submit" value="1">gönder</button>
        </form>







    </div>
    <div id="genel">
    <?php
    echo "<script>console.log('veri tabanını getir ' );</script>";

    if($genelkimden==$mesajatilan) {
        ?>
        <div id="mesajsol"><?= $genelmesaj ?></div><br>
        <?php
    }
    if($genelkimden==$mesajatan){?>
        <div id="mesajsag"><?=$genelmesaj?></div><br>



    <?php } ?>
        <?php

    $karakter=array(":)",":(");
    $emoji=array("<img width='10px' height='10px' src='emoji_gul.png'>","<img width='10px' height='10px' src='emoji_mutsuz.png'>");

    foreach ($data2 as $post):
        $emojitarama=str_replace($karakter,$emoji,$post['mesaj']);
        if($post['kimden']==$mesajatilan) {
            ?>
            <div id="mesajsol"><?= $emojitarama ?></div><br>
            <?php
        }
        if($post['kimden']==$mesajatan){?>
            <div id="mesajsag"><?=$emojitarama?></div><br>



    <?php } endforeach;



        ?>

    </div>



</table>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/socket.io/2.2.0/socket.io.js"></script>
<script>

    var url_string = window.location.href; //window.location.href
    var url = new URL(url_string);
    var konusulanc = url.searchParams.get("konusulan");

    var decodedCookie = decodeURIComponent(document.cookie);
    var ca = decodedCookie.split('=');



    var socket = io('http://localhost:5000');


    socket.on('posts', function (data) {
        //$('#posts').prepend(data.id+"-"+data.title+"-"+data.content+"-"+data.date+"-");
        console.log("socket alındı");
        if(data.kime == konusulanc && data.kimden == ca[1] || data.kime == ca[1]  && data.kimden == konusulanc ) {
           /* $('#posts').prepend("<tr>" +
                "<td>" + data.id + "</td>" +
                "<td>" + data.mesaj + "</td>" +
                "<td>" + data.kimden + "</td>" +
                "<td>" + data.kime + "</td>" +
                "<td>" + data.tarih + "</td>" +
                " </tr>");

            */

           if(data.kimden==ca[1]) {
               $('#genel').prepend("<div id='mesajsag'>" +
                   data.mesaj +
                   " </div><br>"
               );
           }
            if(data.kimden==konusulanc) {
                $('#genel').prepend("<div id='mesajsol'>" +
                    data.mesaj +
                " </div><br>"
            );
            }

        }
            console.log("socket alındı ekrana yazıldı");
     }

     );


    // eğer client tarafından socket'in posts event'ına daha göndermek isteseydik yine emit'i kullanacaktık
    //--sockete veri yollar
   // socket.emit('new-post', {
     //   'id': 5,
       // 'title': 'Test',
        //'content': 'bu bir tesstir',
        //'date': '2019-08-11 12:00:00'
    //});




</script>
</body>
</html>