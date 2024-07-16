<div class="row mb">
    <div class="mr">
        <div class="row mb">

            <div class="boxtitle">GIỎ HÀNG</div>
            <div class="row boxcontent">
                <table>
                    <tr>
                        <th>Hình</th>
                        <th>Sản phẩm</th>
                        <th>Đơn giá</th>
                        <th>Số lượng</th>
                        <th>Thành tiền</th>
                        <th>Thao tác</th>
                    </tr>

                    <?php
                    $tong = 0;
                    $i = 0;
                    foreach ($_SESSION['mycart'] as $cart) {
                        $hinh = $img_path . $cart[3];
                        $ttien = $cart[2] * $cart[4];
                        $tong += $ttien;
                        $xoasp = '<a href="index.php?act=delcart&idcart=' . $i . '"><input type="button" value="Xóa"></a>';
                        echo '<tr>
                                    <td><img src="' . $hinh . '" alt="" height="80px"></td>
                                    <td>' . $cart[1] . '</td>
                                    <td>' . $cart[2] . '</td>
                                    <td>' . $cart[4] . '</td>
                                    <td>' . $ttien . '</td>
                                    <td>' . $xoasp . '</td>
                            </tr>';
                        $i += 1;
                    }
                    echo '<tr>
                        <td colspan="4">Tổng đơn hàng</td>
                        
                        <td>' . $tong . '</td>
                        <td></td>
                    </tr>'

                    ?>
                    <!-- <tr>
                        <td>1</td>
                        <td><img src="upload/638303101506730860_apw-ultra-2-xanhduong-daynho-1.webp" alt="" height="80px"></td>
                        <td>Đồng hồ</td>
                        <td>50</td>
                        <td>2</td>
                        <td>100000 VNĐ</td>
                        <td><input type="button" value="xóa"></td>
                    </tr>

                    <tr>
                        <td>2</td>
                        <td><img src="upload/638307989548944936_iphone-15-promax-xanh-1.webp" alt="" height="80px"></td>
                        <td>Điện thoại</td>
                        <td>120</td>
                        <td>3</td>
                        <td>10000000 VNĐ</td>
                        <td><input type="button" value="xóa"></td>
                    </tr> -->
                </table>
            </div>
        </div>

        <div class="row mb bill">
            <input type="submit" value="ĐỒNG Ý ĐẶT HÀNG"> <a href="index.php?act=delcart"> <input type="button" value="XÓA GIỎ HÀNG"></a>
        </div>
    </div>

</div>