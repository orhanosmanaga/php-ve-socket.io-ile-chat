<?php

require __DIR__ . '/vendor/autoload.php';

use ElephantIO\Client;
use ElephantIO\Engine\SocketIO\Version2X;

$client = new Client(new Version2X('http://localhost:5000'));
$client->initialize();
$client->emit('new-post', [
    'title' => 'b aşlık',
    'content' => 'içerik',
    'date' => date('Y-m-d'),
    'id' => 2
]);
$client->close();