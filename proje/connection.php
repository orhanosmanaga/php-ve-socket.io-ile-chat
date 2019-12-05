<?php
try {
    $db = new PDO("mysql:host=localhost;dbname=socket_mesaj", "root", "");
} catch ( PDOException $e ){
    print $e->getMessage();
}