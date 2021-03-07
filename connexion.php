<?php

$servername = 'localhost';
$user = 'root';
$pass = '';


try {

    $db = new PDO("mysql:host=$servername;dbname=tweeter", $user, $pass);

} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}
