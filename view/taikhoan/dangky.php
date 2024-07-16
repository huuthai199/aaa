<div class="row mb ">
    <div class="boxtrai mr">
        <div class="row mb">
            <h1 class="PARFUMERIE">PARFUMERIE</h1>
            <div class="boxtitledktv">
                <div>Đã là thành viên?</div>
                <div>Đăng nhập để truy cập vào tài khoản của bạn</div>
                <a href="index.php?act=dangnhap"><div class="boxtitledktvdn"><input type="submit" value="Đăng nhập"></div></a>
            </div>
            <div class="dangky">Đăng Ký</div>
            <div class="row boxcontent formtaikhoan">
                <form action="index.php?act=dangky" method="post">
                  
                    <div class="row mb10">
                        Email*: <br>
                        <input type="email" name="email">
                    </div>
                    <div class="row mb10">
                        Tên đăng nhập*:
                        <input type="text" name="user">
                    </div>
                    <div class="row mb10">
                        Mật khẩu*:
                        <input type="password" name="pass">
                    </div>
                    <input type="submit" name="dangky" value="Đăng ký">
                    <input type="reset" value="Nhập lại">
                </form>
                <h2 class="thongbao">
                <?php 
                if(isset($thongbao)&&($thongbao!="")){
                    echo $thongbao;
                }
                ?>
                </h2>
            </div>
        </div>
    </div>
</div>