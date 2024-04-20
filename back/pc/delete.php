<?php
header("Access-Control-Allow-Origin: *");
if($_SERVER['REQUEST_METHOD'] == 'POST'){
    require_once "../db.php";
    $id_pc = $_POST['id_pc'];
    $sql="DELETE FROM `pc` WHERE id_pc = $id_pc";
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