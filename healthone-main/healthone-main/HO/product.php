<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1> HealthOne</h1>
   <?php
      try {
        include ("database.php");
    
        global $db;
        $query = $db->prepare("SELECT * FROM products  WHERE id =:id");
        $query->bindParam("id", $_GET['id']);
        $query->execute();
        $result = $query->fetchAll(pdo::FETCH_ASSOC);
        echo"<div class='row'>";
        foreach ($result as $categ) {
            echo"<div class='col-12'>";
            echo "<h3>" . $categ['name'] . "<h3>";
            echo "<img src=". $categ["image"] . ">";
            echo "<p>" . $categ['description'] . "</p>";
           
            echo "<br>";
           
           
            echo"</div>";
        
        }
        echo"</div>";
       
    
    
    } catch (PDOException $e) {
        die("Error!: " . $e->getmessage());
    }
    
    ?>
    <hr>
    <footer>
      <p>@ afdeling software development tinwerf 16 2544 ED, Denhaag</p>
    </footer>
</body>
</html>