<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="view/css/style.css">
</head>

<body>

    <div class="row mb ">
        <div class="boxtrai mr">
            <div class="row mb">
                <h1 class="PARFUMERIE">PARFUMERIE</h1>
                <div class="dangky">Đăng Nhập</div>
                <div class="row boxcontent formtaikhoan">
                    <form action="index.php?act=dangnhap" method="post">
                        <div class="row mb10">
                            Tên đăng nhập*:
                            <input type="text" name="user">
                        </div>
                        <div class="row mb10">
                            Mật khẩu*:
                            <input type="password" name="pass">
                        </div>
                        <input type="submit" name="dangnhap" value="Đăng nhập">
                        <input type="reset" value="Nhập lại">
                        <div class="boxtitledntv">
                            <div>Thành viên mới?</div>
                            <div>Trở thành thành viên của parfumerie
                            </div>
                            <div>
                                Để nhận những ưu đãi và dịch vụ bất ngờ
                            </div>
                             <a href="index.php?act=dangnhap.php"><div class="boxtitledktvdn"><input type="submit" value="Đăng ký"></div></a>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>

</html>