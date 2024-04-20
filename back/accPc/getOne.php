<?php
header("Access-Control-Allow-Origin: *");

if($_SERVER['REQUEST_METHOD'] == 'GET'){
    $id_accesoirespc =$_GET['id_accesoirespc'];
    include "./../db.php";
    $query=$db->prepare("select * from accesoirespc where id_accesoirespc  = ".$id_accesoirespc );
    $query->execute();
    if($query->rowCount()>0){
        $data=$query->fetchAll(PDO::FETCH_ASSOC);
        echo json_encode($data);
    } else {
        $json['success']=0;
        $json['message']='data not found';
        $json['myintro']='';
        echo json_encode($json);
    }
}else {
    echo "Method not supported !";
}
?>
