<?php 
session_start();

if (isset($_SESSION['id']) && isset($_SESSION['user_name'])) {

 ?>
<!DOCTYPE html>
<html>
<head>
	<title>HOME</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
     <h1>Good Day! Supremo, <?php echo $_SESSION['name']; ?></h1>
     <a href="index1.php" class="con">CONTINUE</a>
</body>
</html>

<?php 
}else{
     header("Location: index.php");
     exit();
}
 ?>