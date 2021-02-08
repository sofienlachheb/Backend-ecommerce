<?php
/**
 * test.php
 * @author Espero-Soft Informatique
 * Site Web : espero-soft.com
 * script pour générer les données utilisateurs
 */

require 'commun_services.php'; 
for ($i=0; $i < 20; $i++) { 
    $user = new UserEntity();
    $user->setSexe(rand(1,2));
    $user->setPseudo("pseudo1");
    $user->setFirstname("DUPONT ".$i);
    $user->setLastname("Jeanne  ".$i);
    $user->setEmail("jeanne".$i."@espero-soft.com");
    $user->setPassword("espero-soft");
    $user->setDateBirth("1925-10-26 13:48:11");
    //$data = $db->createUser($user);
}