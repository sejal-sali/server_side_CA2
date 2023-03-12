<html>
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

<title>Laptop Shopee Signin page</title>
<link rel="stylesheet" type="text/css" href="style.css">
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

<div id="main"> 
<div id="login">
<h2>Login Form</h2>
<hr/>
<form action="login.php" method="post">
<label>User Name :</label>
<input type="text" name="u_name" id="name" required="required" placeholder="Please Enter Name"/><br /><br />
<label>Password :</label>
<input type="text" name="u_pass" id="pass" required="required" placeholder="Please Enter Your password"/><br/><br />
<input type="submit" value=" Submit " name="submit"/><br />
</form>
</div>
<?php 

if(isset($_POST['submit']))
{
$hostname='localhost';
$username='root';
$password='';
$dbh = new PDO("mysql:host=$hostname;dbname=projectdb",$username,$password);
$dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$uname = $_POST['u_name'];
$pass = $_POST['u_pass'];
$sql = "SELECT  * from users where username='$uname' and password='$pass'";
//Prepare the query:
$query = $dbh->prepare($sql);
//Execute the query:
$query->execute();
//Assign the data which you pulled from the database (in the preceding step) to a variable.
$results=$query->fetchAll(PDO::FETCH_OBJ);
// For serial number initialization
if($query->rowCount() > 0)
{
echo "<script type= text/javascript>alert('login success');</script>";
echo "<script>window.location.href='index.php'</script>"; 
}
else
echo "<script type= text/javascript>alert('invalid login');</script>";
}
?>
</body>
</html>