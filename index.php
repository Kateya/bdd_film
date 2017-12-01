<?php
$url = "http://localhost/bdd_film/";
?>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="stylesheet" href="<?=$url?>style.css">

    <title>Films</title>

    <!-- Bootstrap core CSS -->
    <link href="<?=$url?>vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="<?=$url?>css/shop-homepage.css" rel="stylesheet">

  </head>
	<body>
		    <!-- Navigation -->
			<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="http://localhost/bdd_film/home">Films</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link" href="http://localhost/bdd_film/home">Home
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="http://localhost/bdd_film/films">Liste des films</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

	<?php

$route = $_GET['route'];


if(empty($route)) {
	$route = 'home';
}

	switch ($route) {
		
			case 'home':
				include("views/homeView.php");
				break;
			
      case 'film':
      

				$idFilm = $_GET['idFilm'];
				include("controllers/filmController.php");
				break;
		
			default:
				include("controllers/".$route."Controller.php");
				break;
		}

?>
		    <!-- Bootstrap core JavaScript -->
			<script src="<?=$url?>vendor/jquery/jquery.min.js"></script>
    <script src="<?=$url?>vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	</body>
	
</html>