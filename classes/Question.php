<?php
include '../init.php';

class Question {
    public function getQuestion(){
    $source = new Source();
        $result = $source->query("SELECT * FROM questions limit 5");
        $row = $source->FetchAll();

        return $row;
    }
}

?>