<?php

/**
 * DataLayer.class.php
 * @author Espero-Soft Informatique
 * Site Web : espero-soft.com
 */

class DataLayer{

    private $connexion;

    function __construct()
    {
        $var = "mysql:host=".HOST.";db_name=".DB_NAME;

        try {
            $this->connexion = new PDO($var,DB_USER,DB_PASSWORD);
            //echo "connexion réussie";

        } catch (PDOException $e) {
            echo $e->getMessage();
        }
    }

    /* CREATE */

    function createUser(UserEntity $user){
        $sql = "INSERT INTO customers (sexe,pseudo,email,password,firstname,lastname,dateBirth)
         VALUES (:sexe,:pseudo,:email,:password,:firstname,:lastname,:dateBirth)";
         try {
             $result = $this->connexion->prepare($sql);
             $data = $result->execute(array(
                ':sexe' => $user->getSexe(),
                ':pseudo' => $user->getPseudo(),
                ':email' => $user->getEmail(),
                ':password' => sha1($user->getPassword()),
                ':firstname' => $user->getFirstname(),
                'lastname' => $user->getLastname(),
                ':dateBirth' => $user->getDateBirth()
             ));
             if($data){
                 return TRUE;
             }else {
                 return FALSE;
             }
         } catch (PDOException $th) {
             return NULL;
         }
    }


    function createCategory(CategoryEntity $category){
        $sql = "INSERT INTO `category`(`category`) VALUES (:name)";

        try {
            $result = $this->connexion->prepare($sql);
            $data = $result->execute(array(
                ':name' => $category->getName()
            ));
            if($data){
                return TRUE;
            }else{
                return FALSE;
            }
        } catch (PDOException $th) {
            return NULL;
        }
    }


    function createProduct(ProductEntity $product){
        $sql ='$sql = "INSERT INTO `product`(`name`, `description`, `price`, `stock`, `category`, `image`) VALUES 
        (:name,:description,:price,:stock,:category,:image)';
        try {
            $result = $this->connexion->prepare($sql);
            $data = $result->execute(array(
                ':name'=> $product->getName(),
                ':description' => $product->getDescription(),
                ':price' => $product->getPrice(),
                ':stock' => $product->getStock(),
                ':category' => $product->getCategory(),
                ':image'=> $product->getImage()
            ));
            if($data){
                return TRUE;
            }else{
                return FALSE;
            }
        } catch (PDOException $th) {
            return NULL;
        }

    }

    function createOrders(OrdersEntity $orders){
        $sql = 'INSERT INTO `orders`(`id_customers`, `id_product`, `quantity`, `price`)
         VALUES (:idCustomer,:idProduct,quantity,:price)';

        try {
            $result = $this->connexion->prepare($sql);
            $data = $result->execute(array(
                'idCustomer'=>$orders->getIdUser(),
                ':idProduct'=>$orders->getIdProduct(),
                ':quantity' => $orders->getQuantity(),
                ':price' => $orders->getPrice()
            ));
            if($data){
                return TRUE;
            }else{
                return FALSE;
            }
        } catch (PDOException $th) {
            return NULL;
        }
    }

    /* READ */

    function getUsers(){
        $sql = 'SELECT * FROM `ecommerce`.`customers`';

        try {
            $result = $this->connexion->prepare($sql);
            $var = $result->execute();
            $users = [];

            while($data = $result->fetch(PDO::FETCH_OBJ)){
                $user = new UserEntity();
                $user->setIdUser($data->id);
                $user->setEmail($data->email);
                $user->setSexe($data->sexe);
                $user->setFirstname($data->firstname);
                $user->setLastname($data->lastname);
                $users[] = $user;
            }

            if($users){
                return $users;
            }else{
                return FALSE;
            }


        } catch (PDOException $th) {
            return NULL;
        }
    }


    function getCategory(){
        $sql = 'SELECT * FROM `ecommerce`.`category`';

        try {
            $result = $this->connexion->prepare($sql);
            $var = $result->execute();
            $categories = [];

            while($data = $result->fetch(PDO::FETCH_OBJ)){
                $category = new CategoryEntity();
                $category->setIdCategory($data->id);
                $category->setName($data->category);

                $categories[] = $category;
            }

            if($categories){
                return $categories;
            }else{
                return FALSE;
            }


        } catch (PDOException $th) {
            return NULL;
        }
    }

    function getProduct(){
        $sql = 'SELECT * FROM `ecommerce`.`product`';

        try {
            $result = $this->connexion->prepare($sql);
            $var = $result->execute();
            $products = [];

            while($data = $result->fetch(PDO::FETCH_OBJ)){
               $product = new ProductEntity();
               $product->setIdProduct($data->id);
               $product->setName($data->name);
               $product->setDescription($data->description);
               $product->setPrice($data->price);
               $product->setStock($data->stock);
               $product->setImage($data->image);
               $product->setCategory($data->category);
               $product->setCreatedAt($data->createdat);

               $products[] = $product;
            }

            if($products){
                return $products;
            }else{
                return FALSE;
            }


        } catch (PDOException $th) {
            return NULL;
        }
    }

    function getOrders(){
        $sql = 'SELECT * FROM `ecommerce`.`orders`';

        try {
            $result = $this->connexion->prepare($sql);
            $var = $result->execute();
            $orders = [];

            while($data = $result->fetch(PDO::FETCH_OBJ)){
                $order = new OrdersEntity();
                $order->setIdOrder($data->id);
                $order->setIdUser($data->id_customers);
                $order->setIdProduct($data->id_product);
                $order->setPrice($data->price);
                $order->setQuantity($data->quantity);
                $order->setCreatedAd($data->createdat);

                $orders[] = $order;
            }

            if($orders){
                return $orders;
            }else{
                return FALSE;
            }


        } catch (PDOException $th) {
            return NULL;
        }
    }
    

    /* UPDATE */
    function updateUsers(UserEntity $user){
        $sql ="UPDATE `ecommerce`.`customers` SET ";
        try {
            $sql .= " Pseudo = '".$user->getPseudo()."',";
            $sql .= " email = '".$user->getEmail()."',";
            $sql .= " sexe = '".$user->getSexe()."',";
            $sql .= " firstname = '".$user->getFirstname()."',";
            $sql .= " lastname = '".$user->getLastname()."',";
            $sql .= " adresse_facturation = '".$user->getAdresseFactutation()."',";
            $sql .= " adresse_livraison = '".$user->getAdresseLivraison()."'";

            $sql .= " WHERE id=".$user->getIdUser(); 

            $result = $this->connexion->prepare($sql);
            $var = $result->execute();
            //var_dump($sql); exit();
            if($var){
                return TRUE;
            }else{
                return FALSE;
            }


        } catch (PDOException $th) {
            return NULL;
        }
    }

    function updateProduct(ProductEntity $product){

    }

    function updateCategory(CategoryEntity $category){

    }

    function updateOrders(OrdersEntity $order){

    }

       

    /* DELETE */
    function deleteUsers(UserEntity $user){
        $sql = "DELETE FROM `ecommerce`.`customers` WHERE id=".$user->getIdUser();

        try {
            $result = $this->connexion->prepare($sql);
            $var = $result->execute();
            //var_dump($sql); exit();
            if($var){
                return TRUE;
            }else{
                return FALSE;
            }
        } catch (PDOException $th) {
            return NULL;
        }
    }

    function deleteProduct(ProductEntity $product){
        $sql = "DELETE FROM `ecommerce`.`product` WHERE id=".$product->getIdProduct();

        try {
            $result = $this->connexion->prepare($sql);
            $var = $result->execute();
            //var_dump($sql); exit();
            if($var){
                return TRUE;
            }else{
                return FALSE;
            }
        } catch (PDOException $th) {
            return NULL;
        }
    }
    function deleteCategory(CategoryEntity $category){
        $sql = "DELETE FROM `ecommerce`.`category` WHERE id=".$category->getIdCategory();

        try {
            $result = $this->connexion->prepare($sql);
            $var = $result->execute();
            //var_dump($sql); exit();
            if($var){
                return TRUE;
            }else{
                return FALSE;
            }
        } catch (PDOException $th) {
            return NULL;
        }
    }
    function deleteOrders(OrdersEntity $order){
        $sql = "DELETE FROM `ecommerce`.`orders` WHERE id=".$order->getIdOrder();

        try {
            $result = $this->connexion->prepare($sql);
            $var = $result->execute();
            //var_dump($sql); exit();
            if($var){
                return TRUE;
            }else{
                return FALSE;
            }
        } catch (PDOException $th) {
            return NULL;
        }
    }

}


?>