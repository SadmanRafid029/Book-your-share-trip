<?php
include_once "connection.php";

  $info = $_GET['seat_no'];
if($_SERVER['REQUEST_METHOD'] =="POST"){
  
  $information= $_POST['guid'];
  $sql="UPDATE seat set guid='$information' , booking='yes' where seat_no='$info'";
  $result = mysqli_query($conn, $sql);

  if($result){
    header("Location:guide.php");
  }
  else{
    echo '<script >alert("Warning!! Something went wrong")</script>';
}
}

 ?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>For More Information</title>
    <style>
.first{
  padding-left: 500px;
}
a{
  font-size: larger;
  background-color: aqua;
}
input{
  font-size: larger;
}
    </style>
</head>

<body>
  <div class="first">
    <form method="post">
        <h1>Do you want Guide:</h1>
        <input type="radio"  name="guid" value="yes">
        <label for="Yes">Yes</label><br>
        <input type="radio"  name="guid" value="no">
        <label for="No">No</label><br>
 
        <input type="submit" value="Submit">
        <br>
      </form>
      <a href="food.php">For food</a>
    </div>
</body>
</html>