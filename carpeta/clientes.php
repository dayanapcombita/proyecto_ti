<?php
$servername = "localhost"; //las variables en php se definen con el signo "$" y luego el nombre de la variable. En php no es necesario indicar el tipo de datos, en este caso se guarda en la variable $servername el valor de localhost como string. 
$username = "root";
$password = "";

$Rut_cliente=$_POST["Rut_cliente"];// esta parte es muy importante, cuando envían en un dato a través del formulario por el método post (para get es similar), se envían al archivo indicado en la parte del formulario. Estos datos se envían de acuerdo al valor que indicaron en el campo "name" que está en cada valor del formulario. Es decir si al llenar un formulario enviamos los datos, lo que se envío a través del campo que tenía como name="venta" lo podemos recuperar con el método post["venta"], en este caso estoy haciendo eso y lo guardo en una variable llamada $venta.
$Direccion=$_POST["Direccion"];
$Correo=$_POST["Correo1"];
$Correo2=$_POST["Correo2"];
$Telefono1=$_POST["Telefono1"];
$Telefono2=$_POST["Telefono2"];



// Create connection

$conn = mysqli_connect("localhost", "root", "", "proyecto_ti");
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 



//$consulta=query($db,"select * from ventas"); manera alternativa
$sql="INSERT INTO clientes (Rut_cliente,Direccion,Correo1,Correo2,Telefono1,Telefono2) VALUES ('$Rut_cliente','$Direccion','$Correo','$Correo2','$Telefono1','$Telefono2')";
		
if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

?>







