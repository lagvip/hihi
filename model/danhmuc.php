<?php
function load_danhmuc(){
    $sql = "select * from danhmuc order by iddm";
    $listdm = pdo_query($sql);
    return $listdm;
}