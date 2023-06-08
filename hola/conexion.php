<?php
//Conexion a la base de datos//
$enlace = mysqli_connect("localhost","coco","jajaja","olvera");

//Verificar base de datos
if (!$enlace) {
    echo "No funciono, pipipi";
 }else{
     echo "Si jalo, :D";
 }

 //Llamado de datos del html
 $name = $_POST['nom'];
 $email = $_POST['correo'];
 $password = $_POST['contras'];
 $equipo = $_POST['equipo'];
 


 //Paso de datos a la base de datos
 $insert = "INSERT INTO fernado( name, email , password, equipo) VALUES ('$name','$email','$password','$equipo')";

//Verificar si los datos se insertaron en la base de datos
if (mysqli_query($enlace,$insert)) {
    echo "Se ingresado los datos correctamente";
} else {
    echo "UPS algo malo paso";
}
echo "<br>$name<br>$email<br>$password<br>$equipo";

?> 
<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $errors = array(); // Array para almacenar los errores de validación

    // Validación del campo "Nombre"
    if (empty($_POST["nom"])) {
        $errors[] = "El campo Nombre es obligatorio.";
    }

    // Validación del campo "Email"
    if (empty($_POST["correo"])) {
        $errors[] = "El campo Email es obligatorio.";
    } elseif (!filter_var($_POST["correo"], FILTER_VALIDATE_EMAIL)) {
        $errors[] = "El formato del Email es inválido.";
    }

    // Validación del campo "Password"
    if (empty($_POST["contras"])) {
        $errors[] = "El campo Password es obligatorio.";
    }

    // Validación del campo "Equipo"
    if (empty($_POST["equipo"])) {
        $errors[] = "Debes seleccionar una opción para el campo Equipo.";
    }

    // Verificar si hubo errores de validación
    if (count($errors) > 0) {
        // Mostrar los errores en pantalla
        echo "<ul>";
        foreach ($errors as $error) {
            echo "<li>$error</li>";
        }
        echo "</ul>";
    } else {
        // Los datos son válidos, realizar acciones adicionales aquí
        // Por ejemplo, almacenar en la base de datos, enviar un correo, etc.
        echo "¡Los datos son válidos y se pueden procesar correctamente!";
    }
}
?>
