<?php include 'database.php'; ?>
<?php session_start(); ?>
<?php 
if (isset($_GET['number'])){
    echo "<pre>";
    var_dump($_GET);
    header("Location: question.php?n=".$_GET['number']);

}

?>