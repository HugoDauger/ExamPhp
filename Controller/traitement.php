<?php
$fnameErr = $lnameErr = $emailErr = $allerr = "";
$fname = $lname = $email = "";

if (isset($_POST["prenom"], $_POST["nom"], $_POST["email"]) && (!empty($_POST["prenom"]) || !empty($_POST["nom"]) || !empty($_POST["email"]))) {
    $prenom = $_POST["prenom"];
    $nom = $_POST["nom"];
    $mail = $_POST["email"];
}
if($_SERVER["REQUEST_METHOD"] == "POST") {
    if (empty($_POST["prenom"])) {
        $nameErr = "Le prénom doit être rempli";
    } else {
        $name = test_input($_POST["prenom"]);
    }

    if (empty($_POST["email"])) {
        $emailErr = "L'email doit être rempli";
    } else {
        $email = test_input($_POST["email"]);
    }

    if (empty($_POST["nom"])) {
        $lname = "Le nom doit être rempli";
    } else {
        $lname = test_input($_POST["nom"]);
    }
    if (empty($_POST["nom"] && empty($_POST["prenom"]) && empty($_POST["email"]))){
        echo("Tout les champs doivent être remplis");
    }
}

function test_input($data) {
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}