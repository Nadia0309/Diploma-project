<?php
include '../init.php';

class Db_query{
    public function getAllUser(){
        $source = new Source();

        $result = $source->query("SELECT * FROM `users` left join role on role.role_id =users.role_id");
        $row = $source->FetchAll();
       return $row;
    }
    public function deleteUser($id){
        $source = new Source();
        $source->query("DELETE FROM users where id={$id}");
    }
    public function setAdmin($name,$email,$password){
        $source = new Source();
        $source->query("INSERT INTO users (name,email,password,role_id) VALUES ('{$name}','{$email}','{$password}',2)");
    }
    public function getAdmin($name,$email){
        $source = new Source();
      $source->query("SELECT * FROM users WHERE name ='{$name}'and email= '{$email}'");
        $row = $source->FetchAll();
        return $row;
    }
    public function getQuestions(){
        $source = new Source();
        $source->query("SELECT * FROM questions order by id desc");
        $row = $source->FetchAll();
        return $row;
    }
    public function getChoices(){
        $source = new Source();
        $source->query("SELECT * FROM choices order by id desc");
        $row = $source->FetchAll();
        return $row;
    }
}
?>