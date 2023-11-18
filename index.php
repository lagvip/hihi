<?php
include "model/pdo.php";
include "model/sanpham.php";
include "model/danhmuc.php";
include "model/global.php";
$sanpham = loadall_sanpham();
$danhmuc = load_danhmuc();
include "view/header.php";
if (isset($_GET['act'])){
    $act = $_GET['act'];
    switch ($act){
        case "ctsp":
            if (isset($_GET['id']) && $_GET['id'] > 0){
                $id = $_GET['id'];
                $sp = loadallone_sanpham($id);
                $sp_cungloai = load_sp_cungloai($id , $sp['iddm']);
                include "view/chitietsp.php";
            }
            break;
    }
}else {
    include "view/home.php";
}
include "view/footer.php";