<?php
include "../model/pdo.php";
include "../model/danhmuc.php";
include "../model/sanpham.php";

include "view/header.php";
if (isset($_GET['act'])) {
    $act = $_GET['act'];
    switch ($act) {
        case'sanphamlist':
            $sanphamlist = loadall_sanpham1("",0);
            include "view/sanphamlist.php";
            break;
        case'sanphamadd':
            include "view/sanphamadd.php";
            break;
        default:
            include  "view/home.php";
            break;
    }
}else{
    include "view/home.php";
}
    include "view/footer.php";
?>