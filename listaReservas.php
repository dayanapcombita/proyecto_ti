<?php
 include_once("header.php");
 include_once("carpeta/conexion.php");

 $sql="Select * from viajes where estado='reservado' order by ID desc";
 $res=$conn->query($sql);
?>
<div class="container">
<h4>Lista de Viajes Reservados</h4>
<table class="table">
 <tr>
  <th>ID </th>
  <th>RUT Cliente</th>  
  <th> Origen</th>
  <th>Destino </th>
  <th>Num Pasajeros </th>
  <th>Fecha Inicio</th>
  <th>Hora Inicio </th>
  <th>Fecha FInal </th>
  <th>Hora Final </th>
   </tr>
<?php
 while($row=mysqli_fetch_array($res)) {
   echo "<tr>";
	 echo "<td> <a href='EditarViaje.php?id=".$row["ID"]."'>" . $row["ID"] . "</a></td>";
	 echo "<td>" . $row["Rut_cliente"] . "</td>";
	 echo "<td>" . $row["Origen"] . "</td>";
	 echo "<td>" . $row["Destino"] ."</td>";
	 echo "<td>" . $row["num_pasajeros"] . "</td>";
	 echo "<td>" . $row["Fecha_inicio_viaje"] . "</td>";
	 echo "<td>" . $row["Hora_inicio_viaje"] . "</td>";
	 echo "<td>" . $row["Fecha_fin_viaje"] . "</td>";
	 echo "<td>" . $row["Hora_Fin_viaje"] .  "</td>";
   echo "</tr>";
	             
     }
  ?>
</table>
</div>