<?php
foreach ($films as $film) {
	if  ($film["id"] == $idFilm) {
		$id_Real = $film["id_Realisateurs"];

		echo $film["Titre"];

    	$realisateurs_list = $bdd->query('SELECT * FROM realisateurs');
		$realisateurs = $realisateurs_list->fetchAll();

		foreach ($realisateurs as $realisateur) {
			
			if ($realisateur["id"] == $id_Real) { 
			?>
			<p>
				<?= $realisateur["Prenom"]; ?>
				<?= $realisateur["Nom"]; ?>
			</p>
				
			<p>
				<?= $film["Synopsis"]; ?>
			</p>
			<?php
			}
		}
	}
}     


foreach ($genres as $genre) :
	if ($genre["id_Films"] == $idFilm) : ?>

       	<p>
       		<?= $genre["Genre"]; ?>
       	</p>
       	
       
<?php endif;
endforeach;

foreach ($acteurs as $acteur) :
	if ($acteur["id_Films"] == $idFilm) : ?>

       	<p>
       		<?= $acteur["Prenom"]; ?>
       		<?= $acteur["Nom"]; ?>
       		<br>
       		<?= $acteur["Role"]; ?>
       	</p>
       	
       
<?php endif;
endforeach;
?>
