<?php
// Get cURL resource
$curl = curl_init();
// Set some options - we are passing in a useragent too here
curl_setopt_array($curl, array(
    CURLOPT_RETURNTRANSFER => 1,
    CURLOPT_URL => 'http://localhost/API_ejemplos/API_php/product/read.php',
    CURLOPT_USERAGENT => 'Leer datos de API en php'
));
// Send the request & save response to $resp
$resp = curl_exec($curl);
$resp = json_decode($resp);
// print_r($resp);
if(count($resp) > 0){
    foreach($resp as $records){
       foreach($records as $r ){
            echo '<pre>Id '.$r->id.' Nombre '.$r->name.' description '.$r->description.
                    ' price '.$r->price.' category id '.$r->category_id.
                    ' category name '.$r->category_name.
                    ' created '.$r->created.
                '</pre>';
       }
    }
}else{
    echo 'No existen datos';
}
// Close request to clear up some resources
curl_close($curl);
?>