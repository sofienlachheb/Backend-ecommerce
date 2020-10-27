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

 $product = new ProductEntity();
$product->setname("Produt de test");
$product->setDescription("bla bla bla");
$product->setStock(200);
$product->setPrice(56.96);
$product->setCategory(2);
$product->setImage("ddazedaz.png");

$order = new OrdersEntity();
$order->setIdUser(11);
$order->setIdProduct(14);
$order->setQuantity(5);
$order->setPrice(269.36);
 //$user->setIdUser(103);

// $var = $db->createOrders($order);
//var_dump($var);

?>