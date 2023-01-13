<!DOCTYPE html>
<head>
    <link rel="stylesheet" href="Public/style.css">
    <title>Quiz</title>
</head>
<body>
<div class = bravo>
<h2> Bravo ! Toutes vos réponses sont correctes ! </h2>
<img class="images" src="../public./images./bravo.png">
</div>
</body>
</html>
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
        $allerr = "Tous les champs doivent être rempli";
    }
}

function test_input($data) {
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}