<?php
session_start();
include "model/pdo.php";
include "model/danhmuc.php";
include "model/sanpham.php";
include "model/taikhoan.php";
include "view/header.php";
include "global.php";

if (!isset($_SESSION['mycart'])) {
    $_SESSION['mycart'] = [];
} 

$spnew = loadall_sanpham_home();
// $dsdm = loadall_danhmuc();
$dstop10 = loadall_sanpham_top10();

if ((isset($_GET['act'])) && ($_GET['act'] != '')) {
    $act = $_GET['act'];
    switch ($act) {
        // case 'sanpham':
        //     if (isset($_POST['kyw']) && ($_POST['kyw'] != "")) {
        //         $kyw = $_POST['kyw'];
        //     } else {
        //         $kyw = "";
        //     }
        //     if (isset($_GET['iddm']) && ($_GET['iddm'] > 0)) {
        //         $iddm = $_GET['iddm'];
        //     } else {
        //         $iddm = 0;
        //     }
        //     $dssp = loadall_sanpham($kyw, $iddm);
        //     $tendm = load_ten_dm($iddm);
        //     include "view/sanpham.php";
        //     break;
        case 'sanphamct':
            if (isset($_GET['idsp']) && ($_GET['idsp'] > 0)) {
                $id = $_GET['idsp'];
                $onesp = loadone_sanpham($id);
                extract($onesp);
                include "view/sanphamct.php";
            } else {
                include "view/home.php";
            }
            break;
        case 'dangky':
            if (isset($_POST['dangky']) && ($_POST['dangky'] > 0)) {
                $email = $_POST['email'];
                $user = $_POST['user'];
                $pass = $_POST['pass'];
                insert_taikhoan($user, $pass, $email);
                $thongbao = "Đã đăng ký thành công. Vui lòng đăng nhập để thực hiện chức năng";
            }
            include "view/taikhoan/dangky.php";
            break;
        case 'dangnhap':
            if (isset($_POST['dangnhap']) && ($_POST['dangnhap'] > 0)) {
                $user = $_POST['user'];
                $pass = $_POST['pass'];
                $checkuser = checkuser($user, $pass);
                if (is_array($checkuser)) {
                    $_SESSION['user'] = $checkuser;
                    header('Location: index.php');
                } else {
                    $thongbao = "Tài khoản không tồn tại. Vui lòng kiểm tra lại";
                }
            }
            include "view/taikhoan/dangnhap.php";
            break;
        case 'edit_taikhoan':
            if (isset($_POST['capnhat']) && ($_POST['capnhat'] > 0)) {
                $user = $_POST['user'];
                $pass = $_POST['pass'];
                $email = $_POST['email'];
                $address = $_POST['address'];
                $tel = $_POST['tel'];
                $id = $_POST['id'];

                update_taikhoan($id, $user, $pass, $email, $address, $tel);
                $_SESSION['user'] = checkuser($user, $pass);
                header('Location: index.php?act=edit_taikhoan');
            }
            include "view/taikhoan/edit_taikhoan.php";
            break;
        case 'quenmk':
            if (isset($_POST['guiemail']) && ($_POST['guiemail'] > 0)) {
                $email = $_POST['email'];
                $checkemail = checkemail($email);
                if (is_array($checkemail)) {
                    $thongbao = "Mật khẩu của bạn là: " . $checkemail['pass'];
                } else {
                    $thongbao = "Email này không tồn tại";
                }
            }
            include "view/taikhoan/quenmk.php";
            break;
        case 'thoat':
            session_unset();
            header('Location: index.php');
            break;
        case 'addtocart':
            if (isset($_POST['addtocart']) && ($_POST['addtocart'] > 0)) {
                $id = $_POST['id'];
                $name = $_POST['name'];
                $price = $_POST['price'];
                $img = $_POST['img'];
                $soluong = 1;
                $ttien = $soluong * $price;
                $spadd = [$id, $name, $price, $img, $soluong, $ttien];
                array_push($_SESSION['mycart'], $spadd);
            }
            include "view/cart/viewcart.php";
            break;
            //  case 'addto':
            //     if (isset($_POST['addtocart']) && ($_POST['addtocart'] > 0)) {
            //         $id = $_POST['id'];
            //         $name = $_POST['name'];
            //         $price = $_POST['price'];
            //         $img = $_POST['img'];
            //         $soluong = 1;
            //         $ttien = $soluong * $price;
            //         $spadd = [$id, $name, $price, $img, $soluong, $ttien];
            //         array_push($_SESSION['mycart'], $spadd);
            //     }
            //     include "view/cart/viewcart.php";
            //     break;
        case 'delcart':
            if (isset($_GET['idcart'])) {
                array_slice($_SESSION['mycart'],$_GET['idcart'],1);
            } else {
                $_SESSION['mycart']=[];
            }

            header(' Location: index.php?act=viewcart');
            break;
        case 'gioithieu':
            include "view/gioithieu.php";
            break;
        case 'thuonghieu':
            include "view/thuonghieu.php";
            break;
            case 'nuochoa':
                include "view/nuochoa.php";
                break;  
                case 'blog':
                    include "view/blog.php";
                    break;      
        case 'lienhe':
            include "view/lienhe.php";
            break;
        default:
            include "view/home.php";
            break;
    }
} else {
    include "view/home.php";
}

include "view/footer.php";
