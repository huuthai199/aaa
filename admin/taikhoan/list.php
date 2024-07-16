<div class="row">
            <div class="row frmtitle">
                <h1>DANH SÁCH TÀI KHOẢN</h1>
            </div>
            <div class="row frmcontent">
                <form action="#" method="post">
                    <div class="row mb10 frmdsloaifk">
                        <table>
                            <tr>
                                <th></th>
                                <th>MÃ TÀI KHOẢN</th>
                                <th>TÊN ĐĂNG NHẬP</th>
                                <th>MẬT KHẨU</th>
                                <th>EAMIL</th>
                                <th>DỊA CHỈ</th>
                                <th>ĐIỆN THOẠI</th>
                                <th>VAI TRÒ</th>
                                <th></th>
                            </tr>
                            <?php
                                foreach ($listtaikhoan as $taikhoan ) {
                                    extract($taikhoan);
                                    $suatk = "index.php?act=suatk&id=".$id;
                                    

                                    echo '<tr>
                                            <td><input type="checkbox" name="" id=""></td>
                                            <td>'.$id.'</td>
                                            <td>'.$user.'</td>
                                            <td>'.$pass.'</td>
                                            <td>'.$email.'</td>
                                            <td>'.$address.'</td>
                                            <td>'.$tel.'</td>
                                            <td>'.$role.'</td>
                                            <td><a href="'.$suatk.'"><input type="button" value="Sửa"></a></td>
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