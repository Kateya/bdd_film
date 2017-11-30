<!DOCTYPE html>
<html>
	<head>
		<title>Vue des films</title>
	</head>
	<body>
		
		<?php foreach ($films as $key => $film): ?>
			
			<div class="film>">
				<h3><?=$film['Titre']?></h3>

			</div>

		<?php endforeach ?>


	</body>
</html>