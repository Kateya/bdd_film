<!DOCTYPE html>
<html>
	<head>
		<title>Vue des films</title>
	</head>
	<body>
		<section id="liste" class="container">
		<?php foreach ($films as $key => $film): ?>
			
			<div class="film>">
			<a href="film/<?= $key+1 ?>"><h3><?=$film['Titre']?></h3></a>
			</div>

		<?php endforeach ?>
		</section>
		


	</body>
</html>