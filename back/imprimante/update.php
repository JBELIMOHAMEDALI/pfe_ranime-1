<?php
header("Access-Control-Allow-Origin: *");
if($_SERVER['REQUEST_METHOD'] == 'POST'){
    require_once "../db.php";

    $marque = $_POST['marque'];
    $sn=$_POST['sn'];
    $adresse_ip=$_POST['adresse_ip'];
    $adresse_mac =$_POST['adresse_mac'];
    $id_imprimante =$_POST['id_imprimante'];
 
    $sql="UPDATE `imprimante` SET `marque`='$marque',`sn`='$sn',`adresse_ip`='$adresse_ip',`adresse_mac`='$adresse_mac' WHERE `id_imprimante` = $id_imprimante";
    $res=$db->exec($sql);
    if($res){

        $json['success']=1;
        $json['update']=true;
        echo json_encode($json);
    }
    else {
        $json['success']=0;
        $json['update']=false;
        echo json_encode($json);
    }
    //
    //echo"sucess insert for student";}else
    //{echo"no method  post";
} else {
    echo "Method not supported !";
}
?>