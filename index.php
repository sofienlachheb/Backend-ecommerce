<?php

 require 'config/config.php';
 require 'entity/userEntity.php';
 require 'entity/productEntity.php';
 require 'entity/categoryEntity.php';
 require 'entity/ordersEntity.php';
 require 'model/DataLayer.class.php';

 $db = new DataLayer();

 $users = $db->getUsers();
 $categories = $db->getCategory();
 $products = $db->getProduct();
 $orders = $db->getOrders();

 $user = new UserEntity();

 $user->setPseudo("motivation");
 $user->setEmail("motivation@email.com");
 $user->setFirstname("Pauline");
 $user->setLastname("LA JOIE");
 $user->setSexe(1);
 $user->setAdresseFactutation("Adresse fac");
 $user->setAdresseLivraison("Adresse Liv");
 $user->setIdUser(3);

 $var = $db->deleteUsers($user);
var_dump($var);

?>