<?php

try {
    $bdd = new PDO('mysql:host=localhost;dbname=bdd_films;charset=utf8', "root", "");
} catch (PDOException $e) {
    print "Erreur !: " . $e->getMessage() . "<br/>";
    die();
}

$idFilm = $_GET['idFilm'];
$films_list = $bdd->query('SELECT * FROM films');
$films = $films_list->fetchAll();

$acteurs_list = $bdd->query('SELECT * FROM acteurs JOIN acteurs_film ON acteurs_film.id = acteurs.id');
$acteurs = $acteurs_list->fetchAll();

$genres_list = $bdd->query('SELECT * FROM genre JOIN genre_film ON genre.id = genre_film.id');
$genres = $genres_list->fetchAll();

include ('views/filmView.php'); 

?>
