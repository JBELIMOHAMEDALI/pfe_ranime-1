<?php
header("Access-Control-Allow-Origin: *");

if($_SERVER['REQUEST_METHOD'] == 'GET'){
    $id_pc =$_GET['id_pc'];
    include "./../db.php";
    $query=$db->prepare("select * from pc where id_pc  = ".$id_pc );
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
