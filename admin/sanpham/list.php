<div class="row">
    <div class="row frmtitle mb">
        <h1>DANH SÁCH LOẠI HÀNG</h1>
    </div>
    <!-- <form action="index.php?act=listsp" method="post">
        <input type="text" name="kyw">
        <select name="iddm">
            <option value="0" selected>Tất cả</option>
            <?php
            foreach ($listdanhmuc as $danhmuc) {
                extract($danhmuc);
                echo '<option value="' . $id . '">' . $name . '</option>';
            }
            ?>
        </select>
        <input type="submit" name="listok" value="GO">;
    </form> -->
    <div class="row frmcontent">
        <form action="#" method="post">
            <div class="row mb10 frmdsloai">
                <table>
                    <tr>
                        <th></th>
                        <th>MÃ SẢN PHẨM</th>
                        <th>TÊN SẢN PHẨM</th>
                        <th>SỐ LƯỢNG</th>
                        <th>GIÁ</th>
                        <th>HÌNH ẢNH</th>
                        <th></th>
                    </tr>
                    <?php
                    foreach ($listsanpham as $sanpham) {
                        extract($sanpham);
                        $suasp = "index.php?act=suasp&id=" . $id;
                        $xoasp = "index.php?act=xoasp&id=" . $id;
                        $hinhpath = "../upload/" . $image;
                        if (is_file($hinhpath)) {
                            $hinh = "<img src='" . $hinhpath . "' alt='' height='80'>";
                        } else {
                            $hinh = "no photo";
                        }

                        echo '<tr>
                                            <td><input type="checkbox" name="" id=""></td>
                                            <td>' . $id . '</td>
                                            <td>' . $name . '</td>
                                            <td>' . $quantity . '</td>
                                            <td>' . $price . '</td>
                                            <td>' . $hinh . '</td>
                                            <td><a href="' . $suasp . '"><input type="button" value="Sửa"></a> <a href="' . $xoasp . '"><input type="button" value="Xóa"></a></td>
                                        </tr>';
                    }
                    ?>

                </table>
            </div>
            <div class="row mb10">
                <a href="index.php?act=addsp"><input type="button" value="Nhập thêm"></a>
            </div>
        </form>
    </div>
</div>