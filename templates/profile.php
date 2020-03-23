<?php
session_start();
$name=$_SESSION['name'];
$description=$_SESSION['description'];
$email=$_SESSION['email'];
$id= $_SESSION['id'];
$img = $_SESSION['img'];

include "../classes/Post.php";
include "head.php";    
if (isset($id) && !empty($id)){
    $post = new Post();
    $res = $post->getSurveyResults($id);
}   
?>

<body>
<nav class="navbar blue static-top">
    <div class="container">
    <?php if(isset($_SESSION['login_success']) ): ?>
<!--
         <div class="success" style="color: red; width:100px;">
            <?php echo $_SESSION['login_success']; ?>
        </div> 
-->
         <?php endif; ?>
         <?php unset($_SESSION['login_success']); ?>
        <a class="navbar-brand" href="#">MOVIES</a> 
        <a href="../logout.php" id="logout" class="btn btn-white">Log out</a>
     </div>
</nav>
<main>
	<div class="profile-wrapper">
		<div class="container">
			<div class="row">
				<div class="col-12 col-md-4 col-sm-12 col-xs-12">
					<div class="col-12 col-xs-12">
						<h2>PROFILE</h2>
					</div>
					<div class="profile-card">
						<div class="card-body py-4">
							<a class="btn-edit" href="edit_profile.php">
								<span>Edit Profile</span> <i class="fa fa-edit"></i>
							</a>
							<div class="img-wrapper">
							<img class="profile-picture" src="<?=$img?>" />
							<div class="overlay"></div>
							</div>
							<h3 class="text-dark font-weight-bold">
								<?=$name?>
							</h3>
							<p class="px-1 text-muted quote-text">
								<?=$description?>
							</p>
							<p class="text-dark h5 mb-1">
								<?=$email?>
							</p>
							<a href="../quiz/question.php" class="btn btn-sm btn-submit">
								SURPRISE ME!
							</a>
							
						</div>
					</div>
				</div>
		

			<div class="col-12 col-md-8 col-sm-12  col-xs-12 justify-content-center">
				<div class="col-12  col-xs-12">
						<h2>RESULTS</h2>
				</div>
				<div class="container">
					<div class="row flex-column-reverse flex-md-row movie-card justify-content-center">
						<?php for ($i=0;$i<count($res);$i++){ ?>

						<div class="col-md-6">
							<div class="card">
								<div class="card-header">
									<img src="https://image.tmdb.org/t/p/w500/<?=$res[$i]->poster?>" alt="Card image">
								</div>
								<div class="card-body">
									<h3 class="card-title" style="color: black"><?=$res[$i]->title?></h3>
									<div class="container">
										<div class="row">
											<div class="col-5 metadata">
												<i class="fa fa-star" aria-hidden="true"></i> 
												<p><?=$res[$i]->vote_average?>/10</p>
											</div>
											<div class="col-7 metadata"><?=$res[$i]->genres?></div>
										</div>
									</div>      
									<p class="card-text"><?=$res[$i]->overview?></p>
									<a class="btn btn-sm btn-submit" href="https://www.google.com/search?q=<?=$res[$i]->title?>&oq=Carne%20tr%C3%A9mula&aqs=chrome..69i57j0l5.1129j0j7&sourceid=chrome&ie=UTF-8" target="new">
									<!-- <i class="fa fa-play" aria-hidden="true"></i> -->
									 MORE INFO
									</a>
								</div>
							</div>
						</div>
					<?php }?>
					</div>
				</div>
			</div>
		</div>
	</div>
<main>
<?php require("../includes/footer.php")?>



 