<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="index.css">
</head>
<body>
<?php
try {
$db = new PDO("mysql:host=localhost;dbname=healthone", "root", "");
} catch (PDOException $e) {
    die("Error!: " . $e->getmessage());
}

?>
</body>
</html>