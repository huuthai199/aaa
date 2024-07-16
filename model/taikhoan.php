<?php
function insert_taikhoan($user, $pass, $email )
{
    $sql = "INSERT INTO user (user, pass, email) VALUES ('$user', '$pass', '$email')";
    pdo_execute($sql);
}
function checkuser($user, $pass)
{
    $sql = "SELECT * FROM user WHERE user='" . $user . "' AND pass='" . $pass . "'";
    $sp = pdo_query_one($sql);
    return $sp;
}

function checkemail($email)
{
    $sql = "SELECT * FROM user WHERE email='" . $email . "'";
    $sp = pdo_query_one($sql);
    return $sp;
}

function update_taikhoan($id, $user, $pass, $email, $address, $tel)
{
    $sql = "UPDATE user SET user='" . $user . "', pass='" . $pass . "', email='" . $email . "', address='" . $address . "', tel='" . $tel . "' WHERE id=" . $id;
    pdo_execute($sql);
}

function loadall_taikhoan()
{
    $sql = "SELECT * FROM user ORDER BY id desc";
    $listtaikhoan = pdo_query($sql);
    return $listtaikhoan;
}
