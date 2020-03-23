<?php
//include 'source.php';
//include 'init.php';
require_once(dirname(__FILE__) .'/../init.php');


class Post
{
    public function login()
    {
        $source = new Source();
        if (isset($_POST['login'])) {

            $data = [
                'name' => $_POST['name'],
                'password' => $_POST['password'],
                'name_error' => '',
                'password_error' => ''
            ];


            if (empty($data['name'])) {
                $data['name_error'] = "Name is required";
                $_SESSION['name_error'] = $data['name_error'];
            }else{
                unset($_SESSION['name_error']);
            }

            if (empty($data['password'])) {

                $data['password_error'] = "Password is required";
                $_SESSION['password_error'] =$data['password_error'];
            }else{
                unset($_SESSION['password_error']);
            }

            /*
                * Submit the login form
            */

              if(empty($data['email_error']) && empty($data['password_error'])){
                if($source->Query("SELECT * FROM users WHERE name = ?", [$data['name']])){
                 if($source->CountRows() > 0){
                   $row = $source->Single();
                    $id = $row->id;
                    $db_password = $row->password;
                    $name = $row->name;
                    $roleId = $row->role_id;
                    $description= $row->description;
                    $email= $row->email;
                    $img = $row->img;
                        if(password_verify($data['password'], $db_password)){

                        $_SESSION['login_success'] = "Hi " . $name . " You are successfully logged in";
                        $_SESSION['id'] = $id;
                        $_SESSION['name'] = $name;
                        $_SESSION['role'] = $roleId;
                        $_SESSION['description'] = $description;
                        $_SESSION['email']=$email;
                        $_SESSION['img']=$img;
                            if ($_SESSION['role']==1){
                           header("location:templates/profile.php");

                       }else{
                           header("location:templates/admin.php");
                       }

                     } else {
                        $data['password_error'] = "Please enter correct password";
                        $_SESSION['password_error'] =$data['password_error'];
                     }
                    } else {
                        $data['name_error'] = "Please enter correct name";
                     $_SESSION['name_error'] = $data['name_error'] ;

                 }

                    }
                    }
   


        }

    }

    public function signup()
    {
        if (isset($_POST['signup'])) {
            $source = new Source();

            $data = [
                'name' => $_POST['name'],
                'email' => $_POST['email'],
                'password' => $_POST['password'],
                'confirm_password' => $_POST['confirm'],
                'name_error' => '',
                'email_error' => '',
                'password_error' => '',
                'confirm_error' => ''
            ];

            /*
                 * Name validation
            */
            if (empty($data['name'])) {
                $data['name_error'] = "Name is required";
                $_SESSION['name_error'] = $data['name_error'];
            }else{
                unset($_SESSION['name_error']);
            }
            /*
                * Email validation
            */
            if (empty($data['email'])) {
                $data['email_error'] = "Email is required";
                $_SESSION['email_error'] = $data['email_error'];
            } else {
                if ($source->Query("SELECT * FROM users WHERE email = ?", [$data['email']])) {
                    if ($source->CountRows() > 0) {
                        $data['email_error'] = "Sorry email is already exist";
                        $_SESSION['email_error'] = $data['email_error'];
                    }else{
                        unset($_SESSION['email_error']);
                    }
                }
            }

            /*
                 * Password validations
            */
            if (empty($data['password'])) {
                $data['password_error'] = "Password is required";
                $_SESSION['password_error'] =$data['password_error'] ;
            } else if (strlen($data['password']) < 5) {
                $data['password_error'] = "Password is too short";
                $_SESSION['password_error'] =$data['password_error'] ;
            }else{
                unset($_SESSION['password_error'] );
            }

            /*
                * Confirm password validations
            */

            if (empty($data['confirm_password'])) {

                $data['confirm_error'] = "Confirm password is required";
                $_SESSION['confirm_error'] =$data['confirm_error'];
            } else if ($data['password'] != $data['confirm_password']) {
                $data['confirm_error'] = "Confirm password is not matched";
                $_SESSION['confirm_error'] =$data['confirm_error'];
            }else{
                unset($_SESSION['confirm_error'] );
            }

            /*
                 * Submit the form
            */

            if (empty($data['name_error']) && empty($data['email_error']) && empty($data['password_error']) && empty($data['confirm_error'])) {
                $password = password_hash($data['password'], PASSWORD_DEFAULT);
                if ($source->Query("INSERT INTO users (name,email,password) VALUES (?,?,?)", [$data['name'], $data['email'], $password])) {
				if($source->Query("SELECT * FROM users WHERE name = ?", [$data['name']])){
                 if($source->CountRows() > 0){
                   $row = $source->Single();
                    $id = $row->id;
                    $db_password = $row->password;
                    $name = $row->name;
                    $description= $row->description;
                    $email= $row->email;
                    $img = $row->img;
                        if(password_verify($data['password'], $db_password)){

                        $_SESSION['login_success'] = "Hi " . $name . " You are successfully logged in";
                        $_SESSION['id'] = $id;
                        $_SESSION['name'] = $name;
                        $_SESSION['description'] = $description;
                        $_SESSION['email']=$email;
                        $_SESSION['img']=$img;
                    

                     } else {
                        $data['password_error'] = "Please enter correct password";
                        $_SESSION['password_error'] =$data['password_error'];
                     }
                    } else {
                        $data['name_error'] = "Please enter correct name";
                     $_SESSION['name_error'] = $data['name_error'] ;

                 }

                    }
						$_SESSION['account_created'] = "Your account is successfully created";
                    header("location:templates/profile.php");
                }
            }
        }
    }
    public function updateUser($id,$name,$email,$description,$img){
        $source = new Source();
        $query = "UPDATE users
                    SET 
                    name ='".$name."',
                    email ='".$email."',
                    description ='".$description."',
                    img ='".$img."'
                    WHERE id =".$id;

        $source->Query($query);
        $result = $source->query("SELECT * FROM users WHERE id =".$id);

        if ($result) {
            $row = $source->Single();
            $id = $row->id;
            $name = $row->name;
            $roleId = $row->role_id;
            $description = $row->description;
            $email = $row->email;
            $img = $row->img;
            session_start();
            $_SESSION['login_success'] = "Hi " . $name . " You are successfully logged in";
            $_SESSION['id'] = $id;
            $_SESSION['name'] = $name;
            $_SESSION['role'] = $roleId;
            $_SESSION['description'] = $description;
            $_SESSION['email'] = $email;
            $_SESSION['img'] = $img;
            header("location:../templates/profile.php");
        }
    }
    public function setSurveyResults($id,$title,$homepage,$poster,$vote_average,$genres,$overview){
        $source = new Source();
        $query = "INSERT INTO survey_results (user_id,title,homepage,poster,vote_average,genres,overview) VALUES ('{$id}','{$title}','{$homepage}','{$poster}','{$vote_average}','{$genres}','{$overview}')";
        $source->query($query);
    }
    public function getSurveyResults($id){
        $source = new Source();
        $query = "SELECT * FROM survey_results where title is not NULL ORDER BY ID DESC  LIMIT 4";
        $source->query($query);

        $row = $source->FetchAll();
        return $row;
    }

    public function setQuestions($questions){
        $db = new Db_query();
        $res = $db->getQuestions();
        $id = $res[0]->id+1;
        $source = new Source();
        $query = "INSERT INTO questions (id,text_questions) VALUES ('{$id}','{$questions}')";
        $source->query($query);
        header("location:/Films/templates/admin.php");

    }
    public function setChoices($numberQuestions,$choices){

        $source = new Source();
        $query = "INSERT INTO choices (id_question,text) VALUES ('{$numberQuestions}','{$choices}')";

        $source->query($query);
        header("location:/Films/templates/admin.php");

    }


}