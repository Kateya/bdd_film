<?php

try {
    $db = new PDO('mysql:host=localhost;dbname=bdd_films', "root", "");
} catch (PDOException $e) {
    print "Erreur !: " . $e->getMessage() . "<br/>";
    die();
}

$results = $db->query("SELECT * FROM films");

$films = $results->fetchAll();

include("views/filmsView.php"); //Attention, les fichiers sont include donc pour le serveur on est toujours au niveau d'index.php, et pas dans le dossier "controllers", donc on apelle "views/filmsView.php" et non pas "../views/filmsView.php"

?>