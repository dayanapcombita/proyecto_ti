<?php
  include_once("conexion.php");
 $sql="Select * from buses where estado='disponible'";
 $res=$conn->query($sql);
 

?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
	<title>Viajes</title>
</head>
<body>
	<form action="">
		
		<label for="buses">Buses:</label>
		<select name="buses" id="buses" > 
		   <?php
			 while($row=mysqli_fetch_array($res)) {
               echo "<option value='" . $row["Patente"] . "'>" . $row["Patente"] . "</option>";
             
             }
           ?>  
		</select>
	</form>
</body>
</html>

 echo "<option value='" . $row["Patente"] ."'> ". $row["Patente"] . "</option>";