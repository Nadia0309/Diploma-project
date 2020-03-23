<?php
include "../classes/Db_query.php";
$db = new Db_query();

if (isset($_POST['deleteUser'])) {
    $db->deleteUser($_POST['deleteUser']);
}
if (isset($_POST['adminEmail']) && isset($_POST['adminPassword']) && isset($_POST['adminName'])) {
    $password = password_hash($_POST['adminPassword'], PASSWORD_DEFAULT);

    $db->setAdmin($_POST['adminName'], $_POST['adminEmail'], $password);
}
if (isset($_POST['email'])&& isset($_POST['name'])) {

    $result = $db->getAdmin($_POST['name'], $_POST['email']);
    echo json_encode($result);
}


?>