<?php
require_once './db_connection.php';

// lấy productId
if (isset($_GET['TenCSVC'])) {
    $TenCSVC = mysqli_real_escape_string($conn, $_GET['TenCSVC']);
}
$sqlFindProduct = "SELECT * FROM cosovatchat WHERE TenCSVC = '$TenCSVC'";
$cosovatchat = $conn->query($sqlFindProduct);

// khi nút update được nhấn
if (isset($_POST['update'])) {
    $TenCSVC = $_POST['TenCSVC'];
    $TinhTrang = $_POST['TinhTrang'];
    $GiaThue = $_POST['GiaThue'];
    $GioMoCua = $_POST['GioMoCua'];
    $GioDongCua = $_POST['GioDongCua'];
    $TenCN = $_POST['TenCN'];
    $MaNVQL = $_POST['MaNVQL'];
    if ($TenCSVC == '' || $TinhTrang == '' || $GiaThue == '' || $GioMoCua == '' || $GioDongCua == '' || $TenCN == '' || $MaNVQL == '') {
        $tb = 'Bạn chưa nhập đủ các trường' . '<br/>';
    } else {
        // $sqlInsert = "INSERT INTO cosovatchat (TenCSVC, TinhTrang, GiaThue, GioMoCua, GioDongCua, TenCN, MaNVQL) 
        //              VALUES ('$TenCSVC', '$TinhTrang', '$GiaThue', '$GioMoCua', '$GioDongCua', '$TenCN', '$MaNVQL')";
        $sqlUpdate = "UPDATE cosovatchat 
                    SET TenCSVC = '$TenCSVC', TinhTrang = '$TinhTrang', GiaThue = '$GiaThue', GioMoCua = '$GioMoCua', GioDongCua = '$GioDongCua', TenCN = '$TenCN', MaNVQL = '$MaNVQL' 
                    WHERE TenCSVC = '$TenCSVC'";
        $conn->query($sqlUpdate);
        setcookie('thongBao', 'Đã cập nhật cơ sở vật chất thành công', time() + 5);
        header("location: index.php");
    }
}
?>




<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lí kí túc xá</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-clockpicker@0.0.7/dist/bootstrap-clockpicker.min.css" rel="stylesheet">
</head>

<body>
    <div class="container">
        <div class="row d-flex justify-content-center">
            <div class="col-6">
                <div class="shadow p-3 my-5 rounded">
                    <?php
                    if (isset($tb)) {
                        echo '<div class="row"><div class="alert alert-danger">' . $tb . '</div></div>';
                    }
                    ?>
                    <!-- <form class="p-3" method="post"> -->
                    <form class="p-3" action="<?= $_SERVER['PHP_SELF'] ?>?TenCSVC=<?= $TenCSVC ?>" method="post" enctype="multipart/form-data">
                        <?php
                        $cosovatchat = $cosovatchat->fetch_array();
                        ?>
                        <h1 class="text-center display-6 p-2">Sửa thông tin</h2>
                            <div class="form-floating">
                                <input class="form-control my-3" placeholder="Nhập tên cơ sở vật chất" id="TenCSVC" name="TenCSVC" value="<?= $cosovatchat['TenCSVC'] ?>" disabled></input>
                                <label for="TenCSVC">Tên cơ sở vật chất</label>
                            </div>
                            <div class="input-group mb-3">
                                <span class="input-group-text" id="TenCN">Tên cụm nhà</span>
                                <input type="text" class="form-control" placeholder="Tên cụm nhà" name="TenCN" value="<?= $cosovatchat['TenCN'] ?>">
                            </div>
                            <div class="form-floating">
                                <input class="form-control my-3" placeholder="Nhập Tình Trạng" id="TinhTrang" name="TinhTrang" value="<?= $cosovatchat['TinhTrang'] ?>"></input>
                                <label for="TinhTrang">Tình Trạng</label>
                            </div>
                            <div class="input-group mb-3">
                                <span class="input-group-text">Giá thuê</span>
                                <input type="text" class="form-control" placeholder="Eg:20000" name="GiaThue" value="<?= $cosovatchat['GiaThue'] ?>">
                                <span class="input-group-text">VNĐ</span>
                            </div>
                            <div class="input-group mb-3">
                                <span class="input-group-text">Giờ mở cửa</span>
                                <input type="text" class="form-control" placeholder="Eg: 6:00:00" name="GioMoCua" value="<?= $cosovatchat['GioMoCua'] ?>">
                                <span class="input-group-text">Giờ đóng cửa</span>
                                <input type="text" class="form-control" placeholder="Eg: 20:00:00" name="GioDongCua" value="<?= $cosovatchat['GioDongCua'] ?>">
                            </div>
                            <div class="form-floating">
                                <input class="form-control my-3" placeholder="Nhập Tình Trạng" id="MaNVQL" name="MaNVQL" value="<?= $cosovatchat['MaNVQL'] ?>"></input>
                                <label for="MaNVQL">Mã số nhân viên</label>
                            </div>
                            <div class="d-flex justify-content-evenly mt-3">
                                <a href="index.php" class="btn btn-secondary">Hủy bỏ</a>
                                <!-- <a href="index.php" class="btn btn-primary">Xác nhận</a> -->
                                <input type="submit" class="btn btn-primary" value="Cập nhật" name="update">
                            </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>

</html>