<?php
header("Access-Control-Allow-Origin: *");
if($_SERVER['REQUEST_METHOD'] == 'POST'){
    require_once "../db.php";

    $marque = $_POST['marque'];
    $sn=$_POST['sn'];
    $adresse_ip=$_POST['adresse_ip'];
    $adresse_mac =$_POST['adresse_mac'];


    $sql=" INSERT INTO `imprimante`(`marque`, `sn`, `adresse_ip`, `adresse_mac`) VALUES  ('$marque','$sn','$adresse_ip','$adresse_mac');";
    $res=$db->exec($sql);
    if($res){

        $json['success']=1;
        $json['insert']=true;
        echo json_encode($json);
    }
    else {
        $json['success']=0;
        $json['insert']=false;
        echo json_encode($json);
    }
    //
    //echo"sucess insert for student";}else
    //{echo"no method  post";
} else {
    echo "Method not supported !";
}
?>