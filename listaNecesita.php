<?php
 include_once("carpeta/conexion.php");
 include_once("header2.php");

 $id=$_GET['id'];
 $sql="Select * from necesita where ID=".$id;


 $res=$conn->query($sql);
?>
<div class="container">
<h4>Lista de Buses</h4>
<table class="table">
 <tr>
  <th> id det viaje </th>
  <th> Patente</th>  
  <th> Rut Chofer </th>  
 </tr>
<?php
 while($row=mysqli_fetch_array($res)) {
   echo "<tr>";
	 echo "<td> <a href='EditarNecesita.php?id=".$row["id_necesita"]."'>" . $row["id_necesita"] . "</a></td>";
	 echo "<td>" . $row["Patente"] . "</td>";
   echo "<td>" . $row["Rut_chofer"] . "</td>";
   echo "</tr>";
	             
     }
  ?>
</table>
</div>