<?php

function insert_sanpham($tensp, $giasp, $soluong, $hinh, $mota)
{
    $sql = "INSERT INTO product(name, price, quantity, image, description) VALUES ('$tensp', '$giasp', '$soluong', '$hinh', '$mota')";
    pdo_execute($sql);
}

function delete_sanpham($id)
{
    $sql = "DELETE FROM product WHERE id=" . $id;
    pdo_execute($sql);
}

function loadall_sanpham_top10()
{
    $sql = "SELECT * FROM product WHERE 1 order by view desc limit 0,10  ";
    $listsanpham = pdo_query($sql);
    return $listsanpham;
}

function loadall_sanpham_home()
{
    $sql = "SELECT * FROM product WHERE 1 order by id desc limit 0,9  ";
    $listsanpham = pdo_query($sql);
    return $listsanpham;
}

function loadall_sanpham()
{
    $sql = "SELECT * FROM product WHERE 1";
    // if ($kyw != "") {
    //     $sql .= " and name like '%" . $kyw . "%'";
    // }
    // if ($iddm > 0) {
    //     $sql .= " and iddm ='" . $iddm . "'";
    // }
    $sql .= " ORDER BY id desc";
    $listsanpham = pdo_query($sql);
    return $listsanpham;
}

function loadone_sanpham($id)
{
    $sql = "SELECT * FROM product WHERE id=" . $id;
    $sp = pdo_query_one($sql);
    return $sp;
}

function load_ten_dm($iddm)
{
    if ($iddm > 0) {
        $sql = "SELECT * FROM danhmuc WHERE id=" . $iddm;
        $dm = pdo_query_one($sql);
        extract($dm);
        return $name;
    } else {
        return "";
    }
}

function load_sanpham_cungloai($id, $iddm)
{
    $sql = "SELECT * FROM product WHERE iddm = " . $iddm . " AND id <>" . $id;
    $listsanpham = pdo_query($sql);
    return $listsanpham;
}

function update_sanpham($id, $tensp, $soluong, $giasp, $mota, $hinh)
{
    if ($hinh!="")
        $sql = "UPDATE product SET name='" .$tensp. "', quantity='" .$soluong. "' , price='" .$giasp. "', description='" .$mota. "', image='" .$hinh. "' WHERE id=" .$id;
    else
        $sql = "UPDATE product SET name='" .$tensp. "', quantity='" .$soluong. "' , price='" .$giasp. "', description='" .$mota. "' WHERE id=" .$id;
    pdo_execute($sql);
}
