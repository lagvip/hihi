
<div class="main-content">
    <h3 class="title-page">Sản phẩm</h3>
    <div class="d-flex justify-content-end">
        <a href="index.php?act=sanphamadd" class="btn btn-primary mb-2"
        >Thêm sản phẩm</a
        >
    </div>
    <table id="example" class="table table-striped" style="width: 100%">
        <thead>
        <tr>
            <th>STT</th>
            <th>Tên</th>
            <th>Hình ảnh</th>
            <th>Giá</th>
            <th>Mô tả</th>
            <th>Tháo tác</th>
        </tr>
        </thead>
        <tbody>
         <?php
         $i=1;
         foreach ($sanphamlist as $sanpham){
             extract($sanpham);
             $hinhpath="../img/" .$img;
             if(is_file($hinhpath)){
                 $hinhpath="<img src ='".$hinhpath."' width='100px' height='100px'";
             }else{
                 $hinhpath="No file img";
             }

             echo '  <tr>

            <td>'.$i.'</td>
            <td>'.$name.'</td>
            <td>'.$hinhpath.'</td>
            <td>'.$price.'</td>
            <td>'.$mota.'</td>
            <td>
                <a href="#" class="btn btn-warning"
                ><i class="fa-solid fa-pen-to-square"></i> Sửa</a
                >
                <a href="#" class="btn btn-danger"
                ><i class="fa-solid fa-trash"></i> Xóa</a
                >
            </td>
        </tr>';
             $i++;
         }
         ?>


        </tbody>
        <tfoot>

        <tr>
            <th>STT</th>
            <th>Tên</th>
            <th>Hình ảnh</th>
            <th>Giá</th>
            <th>Mô tả</th>
            <th>Tháo tác</th>
        </tr>
        </tfoot>
    </table>
</div>
</div>
</div>
<script src="assets/js/main.js"></script>
<script>
    new DataTable("#example");
</script>