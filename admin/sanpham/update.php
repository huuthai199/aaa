<?php
if (is_array($sanpham)) {
    extract($sanpham);
}
$hinhpath = "../upload/" . $image;
if (is_file($hinhpath)) {
    $hinh = "<img src='" . $hinhpath . "' alt='' height='80'>";
} else {
    $hinh = "no photo";
}
?>

<div class="row">
    <div class="row frmtitle">
        <h1>CẬP NHẬT SẢN PHẨM</h1>
    </div>
    <div class="row frmcontent">
        <form action="index.php?act=updatesp" method="post" enctype="multipart/form-data">
            <!-- <div class="row mb10">
                <select name="iddm">
                    <option value="0" selected>Tất cả</option>
                    <?php
                    foreach ($listdanhmuc as $danhmuc) {
                        extract($danhmuc);
                        if ($iddm==$id) $s="selected"; else $s="";
                        echo '<option value="' . $id . '" '.$s.'>' . $name . '</option>';
                    }
                    ?>
                </select>
            </div> -->
            <div class="row mb10">
                Tên sản phẩm <br>
                <input type="text" name="tensp" value="<?=$name?>">
            </div>
            <div class="row mb10">
                Giá sản phẩm <br>
                <input type="text" name="giasp" value="<?=$price?>">
            </div>
            <div class="row mb10">
                Số lượng <br>
                <input type="number" name="soluong" value="<?=$quantity?>">
            </div>
            <div class="row mb10">
                Hình ảnh<br>
                <input type="file" name="hinh">
                <?=$hinh?>
            </div>
            <div class="row mb10">
                Mô tả <br>
                <textarea name="mota" cols="30" rows="10"><?=$mota?>></textarea>
            </div>

            <div class="row mb10">
                <input type="hidden" name="id" value="<?=$id?>">
                <input type="submit" name="capnhat" value="CẬP NHẬT">
                <input type="reset" value="NHẬP LẠI">
                <a href="index.php?act=listsp"><input type="button" value="DANH SÁCH"></a>
            </div>
            <?php
            if (isset($thongbao) && ($thongbao!="")) {
                echo $thongbao;
            }
            ?>
        </form>
    </div>
</div>
</div>