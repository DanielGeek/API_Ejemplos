<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Leer por id</title>
</head>
<body>
    <form action="leer_por_id.php" method="get">
        <input type="text" name="id">
        <input type="submit" value="Enviar">
    </form>
</body>
</html>

<?php
if(!isset($_GET['id'])){
    echo '<hr>No existe el id';
    exit;
}

// Get cURL resource
$curl = curl_init();
// Set some options - we are passing in a useragent too here



curl_setopt_array($curl, array(
    CURLOPT_RETURNTRANSFER => 1,
    CURLOPT_URL => 'http://localhost/API_ejemplos/API_php/product/read_one.php?id='.$_GET['id'],
    CURLOPT_USERAGENT => 'Leer datos por id de API en php'
));
// Send the request & save response to $resp
$resp = curl_exec($curl);
$r = json_decode($resp);
if(isset($r->message)){
    echo $r->message;
    exit;
}

if(count($r) > 0){
    echo '<pre> Nombre '.$r->name.'| description '.$r->description.
            '| price '.$r->price.'| category id '.$r->category_id.
            '| category name '.$r->category_name.
            '| created '.$r->created.
        '</pre>';
}else{
    echo 'No existen datos';
}
// Close request to clear up some resources
curl_close($curl);
?>

