<?php

/**
 * categoryEntity.php
 * @author Espero-Soft Informatique
 * site Web : espero-soft.com
 */
class CategoryEntity{

    /**
     * Identifiant de la categorie
     */
    protected $idCategory;

    /**
     * Le nom de la categorie
     */
    protected $name;


    /**
     *  Getter et Setter
     */
    function getIdCategory() { 
        return $this->idCategory; 
    } 

    function setIdCategory($idCategory) {  
        $this->idCategory = $idCategory; 
    } 

    function getName() { 
            return $this->name; 
    } 

    function setName($name) {  
        $this->name = $name; 
    } 

 


}



	
?>