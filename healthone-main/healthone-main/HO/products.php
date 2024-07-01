<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <title>Document</title>
    <link rel="stylesheet" href="producs.css">
</head>
<body>
<img src="./image/home page/Schermafbeelding 2022-05-13 142958.png" width="400px" heigh="320px" alt="" srcset="">
    
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
     <a class="navbar-brand" href="#">sportcenter</a>
     <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
       <span class="navbar-toggler-icon"></span>
     </button>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
       <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
         <a class="nav-link" href="#"> <span class="sr-only">(current)</span></a>
        </li>
      <li class="nav-item">
        <a class="nav-link" href="home.php">sportapparaat</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="">regristreren</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="./">contact</a>
      </li>
      <li class="nav-item .justify-content-end">
        <a class="nav-link" href="./">inloggen</a>
      </li>

    </ul>
  </div>
</nav>

    <?php
    try {
        include ("database.php");
    
        global $db;
        $getId = $_GET["categorie_id"];
        $query = $db->prepare("SELECT * FROM products  WHERE categorie_id =?");
        $query->bindParam(1, $getId);
        $query->execute();
        $result = $query->fetchAll(pdo::FETCH_ASSOC);
        echo"<div class='row'>";
        foreach ($result as $categ) {
            echo"<div class='col-12 col-sm-3 col-md-6'>";

            echo "<a href='product.php?id=" . $categ['id'] . " '> ";
            echo "<img class='img' src=". $categ["image"] . ">";
            echo "<br
            >";
            echo $categ['name'];
           
            echo"</div>";
        
        }
        echo"</div>";
       
    
    } catch (PDOException $e) {
        die("Error!: " . $e->getmessage());
    }
    
    ?>
    <a href="index.php">terug</a>

    <hr>
    <footer>
      <p>@ afdeling software development tinwerf 16 2544 ED, Denhaag</p>
    </footer>
    
    <script src="./bootstrap/js/jquery-3.5.1.min.js"></script>
    <script src="./bootstrap/js/bootstrap.min.js"></script>
</body>
</html>