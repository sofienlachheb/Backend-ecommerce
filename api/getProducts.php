<?php 
require 'commun_services.php';

try {
    $products = $db->getProduct();
    if($products){
        produceResult(clearDataArray($products));
    }else {
        produceError("Problème de Récupération des produits");
    }
} catch (Exception $th) {
    produceError($th->getMessage());
}



?>
