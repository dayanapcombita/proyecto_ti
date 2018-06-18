<?php
$servername = "localhost"; //las variables en php se definen con el signo "$" y luego el nombre de la variable. En php no es necesario indicar el tipo de datos, en este caso se guarda en la variable $servername el valor de localhost como string. 
$username = "root";
$password = "";

$patente=$_POST["Patente"];// esta parte es muy importante, cuando envían en un dato a través del formulario por el método post (para get es similar), se envían al archivo indicado en la parte del formulario. Estos datos se envían de acuerdo al valor que indicaron en el campo "name" que está en cada valor del formulario. Es decir si al llenar un formulario enviamos los datos, lo que se envío a través del campo que tenía como name="venta" lo podemos recuperar con el método post["venta"], en este caso estoy haciendo eso y lo guardo en una variable llamada $venta.





// Create connection
$servername = "localhost";
$username = "root";
$password = "";
$database= "proyecto_ti";


$conn = mysqli_connect($servername, $username, $password,$database);// esta conexión es si se quieren conectar localmente,servername deben dejarlo tal cual se indica en el ejemplo al menos que su base de datos no se encuentre en su propio computador, por otra parte database será el nombre de la base de datos que ustedes crearon, con su usario y password correspondientes

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 





//$consulta=query($db,"select * from ventas"); manera alternativa
$consulta=$conn->query("SELECT * fROM buses");
$a=$consulta->num_rows //acá obtengo el número de filas de la consulta, es para limitar el for que hago a continuación
//$a=num_rows($consulta);  manera alternativa
echo "numero de filas= ".$a."<br>";


for($i=0;$i<$a;$i++)
	{ /*acá imprimo todas las consultas una por una, hasta el número total de filas. Si quieren que quede más bonito pueden añadir código html para mostrar las consultas por medio de una tabla html*/ 


	$row = fetch_array ( $consulta,$i );
	echo "rut=".$row[$i]."  "; //Obtengo el valor de la primera columna
	echo "nombre=".$row[$i]."<br>"; //De la segunda columa y así sucesivamente dependiendo la cantidad de atributos que haya devuelto su consulta (o los que quieran mostrar)
		}





?>







