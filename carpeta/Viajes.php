<?php
$servername = "localhost"; //las variables en php se definen con el signo "$" y luego el nombre de la variable. En php no es necesario indicar el tipo de datos, en este caso se guarda en la variable $servername el valor de localhost como string. 
$username = "root";
$password = "";

// esta parte es muy importante, cuando envían en un dato a través del formulario por el método post (para get es similar), se envían al archivo indicado en la parte del formulario. Estos datos se envían de acuerdo al valor que indicaron en el campo "name" que está en cada valor del formulario. Es decir si al llenar un formulario enviamos los datos, lo que se envío a través del campo que tenía como name="venta" lo podemos recuperar con el método post["venta"], en este caso estoy haciendo eso y lo guardo en una variable llamada $venta.
$Patente=$_POST["Patente"];
$Fecha_inicio_viaje=$_POST["Fecha_inicio_viaje"];
$Hora_fin_viaje=$_POST["Hora_fin_viaje"];
$Fecha_fin_viaje=$_POST["Fecha_fin_viaje"];
$Hora_inicio_viaje=$_POST["Hora_inicio_viaje"];
$Rut_cliente=$_POST["Rut_cliente"];
$Rut_chofer=$_POST["Rut_chofer"];
$Origen=$_POST["Origen"];
$Destino=$_POST["Destino"];


// Create connection

$conn = mysqli_connect("localhost", "root", "", "proyecto_ti");
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 



//$consulta=query($db,"select * from ventas"); manera alternativa
$sql="INSERT INTO viajes (Fecha_inicio_viaje, Hora_Fin_viaje, Fecha_fin_viaje, Hora_inicio_viaje, Rut_cliente, Origen,Destino) VALUES ('$Fecha_inicio_viaje','$Hora_fin_viaje','$Fecha_fin_viaje','$Hora_inicio_viaje','$Rut_cliente','$Origen','$Destino')";

$sql="INSERT INTO manejados (Patente, Rut_chofer) VALUES ('$Patente','$Rut_chofer')";



if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

?>