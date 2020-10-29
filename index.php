 
<?php 
  define("BASE_URL", dirname($_SERVER['SCRIPT_NAME']));
 
?>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
 <style>
     body{
         background-color: #68cdce;
     }
     nav.navbar{
         background-color: #1c3335 !important;
     }

 </style>
    <title>API JSORE !</title>
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-success">
        <a class="navbar-brand" href="#">JSTORE API</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        
    </nav>

    <div class="container">
    <ul class="list-group  m-5">
    <?php
        $nom_dossier = 'api/';
        $dossier = opendir($nom_dossier);


        while($fichier = readdir($dossier))
        {
            if($fichier != '.' && $fichier != '..')
            {
            echo '<li class="list-group-item m-2">
          
            <var>Route : <a href="'.BASE_URL.'/api/'.$fichier.'" target="_blank">'.BASE_URL.'/api/'.$fichier.'</a></var>
            <p><strong>Description : </strong></p>
            <p><strong>Paramètres : </strong></p>
            <p><strong>Format de données retournées : </strong>Json</p>
            </li>';
            }
        }
        closedir($dossier);
    ?>

        
    </ul>

    </div>


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
  </body>
</html>

