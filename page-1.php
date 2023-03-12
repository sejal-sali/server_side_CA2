<?php 

session_start();

include "database.php";

$conn = mysqli_connect("localhost","root","","projectdb");

//get laptops$laptops table
$sql = "SELECT * FROM laptops";
$result = mysqli_query($conn, $sql);
$laptops = mysqli_fetch_all($result, MYSQLI_ASSOC);




?>



<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.80.0">
    <title>Starter Template · Bootstrap v5.0</title>
    <!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="mystyle.css" rel="stylesheet">
  </head>
  <body>
    
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark" aria-label="Eighth navbar example">
      <div class="container">
        <a class="navbar-brand" href="page-1.php">Home </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample07" aria-controls="navbarsExample07" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
  
        <div class="collapse navbar-collapse" id="navbarsExample07">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          </ul>
          <span class="d-flex">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
              <li class="nav-item">
                <a class="nav-link" aria-current="page" href="login.php">Log In</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" aria-current="page" href="signup.php">Sign Up</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" aria-current="page" href="contactform.php">Contact Us</a>
              </li>
            </ul>
          </span>
        </div>
      </div>
    </nav>

<main class="container">
  <div class="starter-template text-center">
    <h1>LapTopS</h1>
    <p class="lead">Technology is best when it brings people together...</p>
  </div>

  <?php

echo '<div class="container">';
echo '<div class="row">';

foreach ($laptops as $laptop) {
    echo '<div class="col-md-4 mb-3">';
    echo '<div class="card h-100">';
    echo '<img src="' . $laptop['image_url'] . '" class="card-img-top" alt="' . $laptop['model'] . '">';
    echo '<div class="card-body">';
    echo '<h5 class="card-title">' . $laptop['model'] . '</h5>';
    echo '<p class="card-text">' . $laptop['price'] . '</p>';
    echo '</div>';
    echo '</div>';
    echo '</div>';
}

echo '</div>';
echo '</div>';
?>


<div class="container">
  <h2>Laptop List:</h2>
          
  <table class="table table-striped">
    <thead>
      <tr>
        <th>Id</th>
        <th>Model</th>
        <th>Processor</th>
        <th>Description</th>
      </tr>
    </thead>
    <tbody>
      <?php foreach($laptops as $laptop): ?>
      <tr>
        <td><?php echo $laptop['id']; ?></td>
        <td><?php echo $laptop['model']; ?></td>
        <td><?php echo $laptop['processor']; ?></td>
        <td><?php echo $laptop['description']; ?></td>
      </tr>
      <?php endforeach; ?>
    </tbody>
  </table>
</div>


</main><!-- /.container -->
    <script src="js/bootstrap.bundle.min.js"></script>
  </body>
</html>
