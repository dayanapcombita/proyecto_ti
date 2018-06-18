<?php
 include_once("header.php");
 include_once("carpeta/conexion.php");

 $id=$_GET["id"];
 $sql="Select * from viajes where ID=".$id;
 $res=$conn->query($sql);
 $row=mysqli_fetch_array($res);
?>
<div class="container">
<form action="GuardarViaje.php"> 
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
 <tr>
  <td><input type="text" name="ID" value="<?php echo $row['ID']; ?>" readonly ></td>
  <td> <input type="text" name="Rut_cliente" value="<?php echo $row['Rut_cliente']; ?>" ></td>  
  <td> <input type="text" name="Origen" value="<?php echo $row['Origen']; ?>" ></td>
  <td><input type="text" name="Destino" value="<?php echo $row['Destino']; ?>" > </td>
  <td><input type="text" name="num_pasajeros" value="<?php echo $row['num_pasajeros']; ?>" > </td>
  <td><input type="text" name="Fecha_inicio_viaje" value="<?php echo $row['Fecha_inicio_viaje']; ?>" ></td>
  <td><input type="text" name="Hora_inicio_viaje" value="<?php echo $row['Hora_inicio_viaje']; ?>" > </td>
  <td><input type="text" name="Fecha_fin_viaje" value="<?php echo $row['Fecha_fin_viaje']; ?>" > </td>
  <td><input type="text" name="Hora_Fin_viaje" value="<?php echo $row['Hora_Fin_viaje']; ?>" > </td>
  </tr>

</table>
</form>
</div>

<div class="container">
<iframe src="listaNecesita.php?id=<?php echo $id; ?>"  frameborder="0" style="border:0;width:100%;height:600"> 

</iframe>
</div>


