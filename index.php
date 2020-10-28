<?php

 require 'config/config.php';
 require 'entity/userEntity.php';
 require 'entity/productEntity.php';
 require 'entity/categoryEntity.php';
 require 'entity/ordersEntity.php';
 require 'model/DataLayer.class.php';

 $db = new DataLayer();

 /*$user1 = new UserEntity();
 $user1->setsexe(1);
 $user1->setEmail("testdatabase@test.tes");
 $user1->setPseudo("Paul");
 $user1->setPassword("test2020");
 $user1->setFirstname("AGBA");
 $user1->setLastname("Pascal");
 $user1->setDateBirth("12/12/19989");

 $db->createUser($user1);*/

 $user = new UserEntity();
 $user->setEmail("testdatabase@test.tes");
 $user->setPassword("test2020");
 

 //$user->setIdUser(103);

$var = $db->authentifier($user);
var_dump($var);

?>