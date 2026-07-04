<?php

$conn=new mysqli(
"db",
"root",
"123456",
"practica"
);

?>

<!DOCTYPE html>

<html>

<head>

<title>Hola Mundo Docker</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

</head>

<body class="bg-dark">

<div class="container mt-5">

<div class="card shadow">

<div class="card-header bg-primary text-white">

<h2>Aplicación Docker + PHP + MySQL</h2>

</div>

<div class="card-body">

<?php

if($conn->connect_error){

echo "<div class='alert alert-danger'>No se pudo conectar a MySQL</div>";

}else{

echo "<div class='alert alert-success'>Conectado correctamente a MySQL</div>";

$result=$conn->query("SELECT texto FROM mensaje");

$fila=$result->fetch_assoc();

echo "<h3>".$fila["texto"]."</h3>";

}

?>

</div>

</div>

</div>

</body>

</html>
