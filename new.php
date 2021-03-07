<?php

include_once('connexion.php');

$sql = $db->prepare("INSERT INTO tweet ( Author, Message, Hashtags) VALUES (:Author, :Message, :Hashtags)");


$author = $_POST['autheur_tweet'];
$tweet = $_POST['tweet_tweet'];
$hastag = $_POST['hashtag_tweet'];
$sql->bindParam(':Author', $author);
$sql->bindParam(':Message', $tweet);
$sql->bindParam(':Hashtags', $hastag);


if (!$sql->execute()) {
    echo 'erreur';
} else {

    header("location:index.php");
}
