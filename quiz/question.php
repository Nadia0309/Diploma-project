<?php session_start() ?>
<?php include "../init.php" ?>
<?php include "database.php" ?>

<?php
if (isset($_GET['n'])){
    $number =(int) $_GET['n'];
}else{
    $number =1;
}
$question = new Question();


//Get question
$query = "SELECT * FROM `questions` WHERE id = $number";

$count_query= "SELECT COUNT(id) as count FROM `questions`";
//Get results
$result = $mysqli->query($query) or die();
$count_query = $mysqli->query($count_query);

$question = $result ->fetch_assoc();
$count_query = $count_query->fetch_assoc();
$count_query =  $count_query['count'];
if ($number ==$count_query+1){
    header("Location: final.php");

}
//Get Choices
$query = "SELECT * FROM `choices`as c left Join questions as q on q.id  =c.id_question  WHERE c.id_question =$number";
//echo "<pre>";
//var_dump($query);
//die();
////Get choices
$choices = $mysqli ->query($query) or die();
//echo "<pre>";
//var_dump($choices);
//die();
////
//echo "<pre>";
//var_dump();
//echo count($choices);
//die();
?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" href="style.css">
</head>
<body>
	<div class="container">
		<div class="row"><br><br>
			<div class="col-sm-8 col-sm-offset-2">
				<div id="quiz">
					<div class="question">
						<h3>
							<span class="label label-warning" id="qid"></span>
							<span id="question"> <?php echo $question['text_questions']; ?></span>
						</h3>
					</div>
					<form action="process.php" method="get">
						<ul>
							<?php while ($row = $choices->fetch_assoc()): ?>
							<li>
								<input type="radio" class="radio" name="radio">
								<label for="f-option"  class="element-animation" > <?php echo $row['text'] ?> </label>
								<div class="check"><div class="inside"></div></div>
							</li>
							<?php endwhile; ?>
						</ul>
						<input style="display: none" type="submit"  class="sub">
						<input type="hidden" name="number"  value= "<?php echo $number+1 ?>" >
					</form>
				</div>

				<div class="text-muted">
				<span id="answer"></span>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-sm-8 col-sm-offset-2">
				<div id="result-of-question" class="pulse animated" style="display: none;">
					<span id="totalCorrect" class="pull-right"></span>
					<table class="table table-hover table-responsive" >
						<thead>
							<tr>
							<th>Question No.</th>
							<th>Our answer</th>
							<th>Your answer</th>
							<th>Result</th>
							</tr>
						</thead>
						<tbody id="quizResult"></tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>

<SCRIPT>
    $(".radio").click(function() {
    //<input type="hidden" name="number" value= "<?php //echo $number+1 ?>//" >
        document.getElementsByClassName("sub")[0].click();

    });
</SCRIPT>


