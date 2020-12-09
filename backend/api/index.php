<?php 

//var_dump($_SERVER["REQUEST_URI"]);
$url = trim($_SERVER["REQUEST_URI"],'/');

$url_clean = explode("/", $url);



if(sizeof($url_clean) !== 4){
    header("Location: ../");
    exit();
}else{
    $action = $url_clean[sizeof($url_clean)-1];
    $pos = strpos($action,'?');
    if($pos){
        $temp = explode("?",$action);
        $action = $temp[0];
    }

    if($_SERVER["REQUEST_METHOD"] === "GET"){
        if(file_exists('./get'.ucwords($action).".php"))
        { 
               require './get'.ucwords($action).".php";
        }else{
            require "./404.php";
        }
    }elseif($_SERVER["REQUEST_METHOD"] === "POST"){
        if(file_exists('./create'.ucwords($action).".php"))
        { 
               require './create'.ucwords($action).".php";
        }else{
            require "./404.php";
        }
    }elseif($_SERVER["REQUEST_METHOD"] === "DELETE"){
        if(file_exists('./delete'.ucwords($action).".php"))
        { 
               require './delete'.ucwords($action).".php";
        }else{
            require "./404.php";
        }
    }elseif($_SERVER["REQUEST_METHOD"] === "PUT"){
        if(file_exists('./update'.ucwords($action).".php"))
        { 
               require './update'.ucwords($action).".php";
        }else{
            require "./404.php";
        }
    }


}

//var_dump($action);
//echo "Bonne nouvelle";

?>