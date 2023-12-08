<?php
   
    require_once './db_connection.php';
  
    if (isset($_GET['TenCSVC'])) {
        $TenCSVC = $_GET['TenCSVC'];
        $sqlDelete = "DELETE FROM cosovatchat WHERE TenCSVC = '$TenCSVC'";
        $conn->query($sqlDelete);
        setcookie('thongBao', 'Đã xóa CSVC thành công', time()+5);
        header("location: index.php");
    }
?>