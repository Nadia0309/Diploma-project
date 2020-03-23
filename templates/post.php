
<?php include "../classes/Post.php"?>

<?php

if (isset($_FILES) && !empty($_FILES)){
    $uploaddir = '../files/';
    $uploadfile = $uploaddir.basename($_FILES['file']['name']);
    $img =$uploaddir.$_FILES['file']['name'];
	//Copy file from catalog to the temp.storage
    copy($_FILES['file']['tmp_name'], $uploadfile);
}
//echo "<pre>";
//var_dump($_POST);
//die();
if (isset($_POST['id']) && isset($_POST['name'])){
    $post= new Post();
    $post->updateUser($_POST['id'],$_POST['name'],$_POST['email'],$_POST['description'],$img);
}
if (isset($_POST['questions'])){
    $post= new Post();
    $post->setQuestions($_POST['questions']);

}
if (isset($_POST['choices']) && isset($_POST['numberQuestions'])){
    $post= new Post();
    $post->setChoices($_POST['numberQuestions'],$_POST['choices']);
}



