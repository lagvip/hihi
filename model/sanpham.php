<?php
function loadall_sanpham(){
    $sql = "select * from sanpham order by id asc  ";
    $listsp = pdo_query($sql);
    return $listsp;
}
function loadallone_sanpham($id){
    $sql = "select * from sanpham where id=".$id;
    $listspone = pdo_query_one($sql);
    return $listspone;
}
function load_sp_cungloai($id,$iddm){
    $sql = "select * from sanpham where iddm = '$iddm' and id <> $id";
    $spcungloai = pdo_query($sql);
    return $spcungloai;
}
function loadall_sanpham1($keyw="",$iddm=0){
    $sql="select * from sanpham where 1";
    // where 1 tức là nó đúng
    if($keyw!=""){
        $sql.=" and name like '%".$keyw."%'";
    }
    if($iddm>0){
        $sql.=" and iddm ='".$iddm."'";
    }
    $sql.=" order by id desc";
    $listsanpham=pdo_query($sql);
    return  $listsanpham;
}