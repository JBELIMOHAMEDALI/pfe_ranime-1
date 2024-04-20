<?php
$servername="localhost";
$dbname="pfe_back";
$username="root";
$password="";
try{
$db=new PDO("mysql:host=$servername;dbname=$dbname",$username,$password);
// echo"sucess connexion";
}catch (PDOexception $e) {
    echo"err";
//echo"not connected"+$e->getMessage();
die();}
?>