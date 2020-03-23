<?php session_start() ?>
<?php include "../classes/Post.php"?>

<?php
$rand  = rand(500, 510);
$res = file_get_contents("https://api.themoviedb.org/3/movie/".$rand."?api_key=0c9512a9f618330bf3e27d3901f4fdc5");
$res = json_decode($res);

if (isset($_SESSION) && !empty($_SESSION)){

    $title = $res->original_title;
    $homepage = $res->homepage;

    $poster = $res->poster_path;
    $vote_average = $res->vote_average;
    $genres= $res->genres[0]->name;
    $overview =$res->overview;
    $post = new Post();
    $post->setSurveyResults($_SESSION['id'],$title,$homepage,$poster,$vote_average,$genres,$overview);

    //header("location:/Films/templates/profile.php");

}else {


    $title = $res->original_title;
    $homepage = $res->homepage;
    $poster = $res->poster_path;
    $vote_average = $res->vote_average;
    if (isset($res->genres[0]->name)){
        $genres = $res->genres[0]->name;

    }else{
        $genres ='';
    }
    $overview = $res->overview;
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<link rel="stylesheet" href="css/style.css">
	<title>Document</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<!-- Custom fonts for this template -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="../bootstrap/dist/css/bootstrap.min.css">
	<link rel='stylesheet prefetch' href='http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css'>
	<script src="jquery/dist/jquery.min.js"></script>
	<script src="../bootstrap/dist/js/bootstrap.js"></script>
	<!-- Custom styles for this template -->
	<link href="../css/central.css" rel="stylesheet">
</head>
<body>

<nav class="navbar blue static-top">
    <div class="container">
    <?php if (isset($_SESSION) && !empty($_SESSION)): ?>

        <a class="navbar-brand" href="../templates/profile.php">MOVIES</a> 
		<a href="../logout.php" id="logout" class="btn btn-white">Log out</a>
		 <?php unset($_SESSION['login_success']); ?>
		<?php else: ?>
        <a class="navbar-brand" href="../index.php">MOVIES</a> 
		<a href="../logout.php" id="logout" class="btn btn-white">Login</a>
		 <?php endif; ?>
     </div>
</nav>
  
	<header class="page-header section-dark ">
		<div class="col-12 col-md-8 col-sm-12  col-xs-12 ">

			<div class="container">
				<div class="row flex-column-reverse flex-md-row movie-card justify-content-center">
					<div class="col-md-6">
							<div class="col-md-6 justify-content-center">
								<h3> YOUR RESULT</h3>
							</div>
						<div class="card">
							<div class="card-header">
								<img src="https://image.tmdb.org/t/p/w500/<?=$poster?>" alt="Card image">
							</div>
							<div class="card-body">
								<h3 class="card-title" style="color: black"><?=$title?></h3>
								<div class="container">
									<div class="row">
										<div class="col-5 metadata">
											<i class="fa fa-star" aria-hidden="true"></i> 
											<p><?=$vote_average?>/10</p>
										</div>
											<div class="col-7 metadata"><?=$genres?></div>
									</div>
								</div>      
								<p class="card-text"><?=$overview?></p>
								<a class="btn btn-sm btn-submit" href="https://www.google.com/search?q=<?=$title?>&oq=Carne%20tr%C3%A9mula&aqs=chrome..69i57j0l5.1129j0j7&sourceid=chrome&ie=UTF-8" target="new">
									MORE INFO
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<?php include "../includes/footer.php"?>
	</header>
</body>
</html>