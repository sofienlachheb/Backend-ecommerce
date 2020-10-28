<?php 
require 'commun_services.php';
$user = new UserEntity();
$user->setEmail("contact@contact.com");
$user->setPassword("szczdcfez");
//var_dump(clearData($user));
produceResult($user);



?>