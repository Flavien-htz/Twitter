<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <title>Test technique</title>
</head>

<body>

    <article class="row">

        <section class="col-1"></section>

        <section class="col-4 mt-3" id="creation">
            <div class="container">
                <h1>Création d'un tweet</h1>
                <form name="new" action="new.php" method="POST">
                    <div class="form-group">
                        <label for="autheur">Autheur</label>
                        <input type="text" class="form-control" name="autheur_tweet" id="autheur" placeholder="Autheur">
                    </div>
                    <div class="form-group">
                        <label for="tweet">Tweet</label>
                        <textarea name="tweet_tweet" class="form-control" id="tweet" rows="3" maxlength="1000"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="hashtag">Hashtag</label>
                        <input type="text" class="form-control" name="hashtag_tweet" id="hashtag" placeholder="Hashtag">
                    </div>
                    <button type="submit" class="btn btn-success mt-2">Créer</button>
                </form>
            </div>
        </section>

        <section class="col-1"></section>

        <section class="col-4 mt-3" id="recherche">
            <div class="container">
                <form name="search" method="POST">
                    <h1>Recherche d'un tweet</h1>
                    <div class="form-group">
                        <label for="rechercher">Rechercher un tweet, un auteur, ou un hashtag :</label>
                        <input type="search" name="s" class="form-control" name="rechercher" placeholder="Rechercher">
                    </div>
                    <button type="submit" class="btn btn-success mt-2">Valider</button>
                </form>
                <section class="afficher_utilisateur">

                    <?php

                    include_once('connexion.php');

            


                    if (isset($_POST['s']) and !empty($_POST['s'])) {
                        $recherche = htmlspecialchars($_POST['s']);
                        $allTweets = $db->query('SELECT * FROM tweet WHERE CONCAT (author, Message, Hashtags) LIKE "%' . $recherche . '%" ORDER BY id ASC');

                        if ($allTweets->rowCount() > 0) {
                            while ($tweets = $allTweets->fetch()) {
                    ?>
                                <div class="card mt-3">
                                    <div class="card-header">
                                        <?= $tweets['Author']; ?>
                                        <?= $tweets['id']; ?>

                                    </div>
                                    <div class="card-body">
                                        <p class="card-text"><?= $tweets['Message']; ?></p>
                                        <p class="font-italic"><?= $tweets['Hashtags']; ?></p>
                                    </div>
                                </div>
                            <?php
                            }
                        } else {
                            ?>
                            <p>Aucun résultats ne correspond à votre recherche : <?= $_POST['s'] ?></p>
                    <?php
                        }
                    }



                    ?>

                </section>
            </div>
        </section>
    </article>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>

</html>