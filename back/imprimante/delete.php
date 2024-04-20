<?php
header("Access-Control-Allow-Origin: *");
if($_SERVER['REQUEST_METHOD'] == 'POST'){
    require_once "../db.php";
    $id_imprimante = $_POST['id_imprimante'];
    $sql="DELETE FROM `imprimante` WHERE id_imprimante = $id_imprimante";
    $res=$db->exec($sql);
    if($res){
        $json['success']=1;
        $json['delete']=true;
        echo json_encode($json);
    }
    else {
        $json['success']=0;
        $json['delete']=false;
        echo json_encode($json);
    }
    //
    //echo"sucess insert for student";}else
    //{echo"no method  post";
} else {
    echo "Method not supported !";
}
?>