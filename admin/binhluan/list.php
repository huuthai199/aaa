<div class="row">
            <div class="row frmtitle">
                <h1>DANH SÁCH BÌNH LUẬN</h1>
            </div>
            <div class="row frmcontent">
                <form action="#" method="post">
                    <div class="row mb10 frmdsloai">
                        <table>
                            <tr>
                                <th></th>
                                <th>ID</th>
                                <th>NỘI DUNG BÌNH LUẬN</th>
                                <th>IDUSER</th>
                                <th>IDPRO</th>
                                <th>NGÀY BÌNH LUẬN</th>
                                <th></th>
                            </tr>
                            <?php
                                foreach ($listbinhluan as $binhluan ) {
                                    extract($binhluan);
                                    $xoabl = "index.php?act=xoabl&id=".$id;

                                    echo '<tr>
                                            <td><input type="checkbox" name="" id=""></td>
                                            <td>'.$id.'</td>
                                            <td>'.$noidung.'</td>
                                            <td>'.$iduser.'</td>
                                            <td>'.$idpro.'</td>
                                            <td>'.$ngaybinhluan.'</td>
                                            <td><a href="'.$xoabl.'"><input type="button" value="Xóa"></a></td>
                                        </tr>';
                                }
                            ?>
                            
                        </table>
                    </div>
                    <div class="row mb10">
                        <a href="index.php?act=adddm"><input type="button" value="Nhập thêm"></a>
                    </div>
                </form>
            </div>
        </div>