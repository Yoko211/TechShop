<!--
    Final Project
    Name: Juan Alejandro Londono
    Date: Apr 21 2023
    Description: Final Project

-->


<?php

        //Conection Information
        $host = 'localhost';
        $dbname = 'serverside';
        $username = 'serveruser';
        $password = 'gorgonzola7!';        

        //Conection manage using PDO
        try{
            $pdo = new PDO ("mysql:host=$host; dbname=$dbname", $username, $password);
            $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $pdo-> exec("SET CHARACTER SET utf8");
            //echo 'Connection OK';
            
        } catch (Exception $e){                       
            die ('Error: ' . $e->GetMessage());
            echo 'Line Error' . $e->GetLine();            
        }
?>


