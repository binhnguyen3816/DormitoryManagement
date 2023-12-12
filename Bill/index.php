<?php
$rootPath = '/DormitoryManagement';

// Connect to the database
require_once '../db_connection.php';
$sqlShowCN = "SELECT * FROM sinhvien";
$bla = $conn->query($sqlShowCN);
$hoadonconno = '';
if (isset($_POST['xem'])) {
    $masosinhvien = $_POST['MSSV'];
    $query = "call hoadonconno('$masosinhvien')";
    $hoadonconno = $conn->query($query);
}
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lí kí túc xá</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../assets/style.css">
</head>

<body>
    <div class="w-100">
        <div class="row">
            <div class="col-2 auto text-bg-light  bg-opacity-75 shadow-lg" style="min-height: 100vh;background-color:rgba(0,0,0,0.6)">
                <?php include '../assets/sidebar.html'; ?>
            </div>
            <div class="col-10 auto text-bg-light  bg-opacity-75" style="min-height: 100vh;background-color:rgba(0,0,0,0.6)">
                <div class="shadow p-3 my-5 rounded" style="background-color: white">
                    <div class=" d-flex justify-content-between align-items-center">
                        <h1 class="text-center display-5 m-4" style="width:fit-content;height:fit-content">Danh sách hóa
                            đơn còn nợ</h1>
                        <div id="backBtnContainer" class="text-center mt-3 d-none">
                            <button id="backBtn" class="btn btn-primary p-3">Quay lại</button>
                        </div>
                    </div>
                    <form class="p-3" target="_self" id="inputForm" method="post">
                        <div class="input-group mb-3">
                            <span class="input-group-text" id="MSSV">Mã số sinh viên</span>
                            <!-- <input type="text" class="form-control" placeholder="Tên cụm nhà" name="TenCN" aria-describedby="TenCN"> -->
                            <select class="form-select" placeholder="Mã số sinh viên" name="MSSV" aria-describedby="MSSV">
                                <option></option>
                                <?php
                                while ($row = $bla->fetch_assoc()) {
                                ?>
                                    <option><?= $row['MSSV'] ?></option>
                                <?php
                                } ?>
                            </select>

                        </div>
                        <button id="submitBtn" name="xem" class="btn btn-primary btn-lg btn-block">Xem danh sách</button>
                    </form>
                    <table id="dataTable" class="shadow table caption-top rounded overflow-hidden">
                        <thead class="table-light">
                            <tr>
                                <th scope="col">Mã hóa đơn</th>
                                <th scope="col">Ngày tạo hóa đơn</th>
                                <th scope="col">Ngày đăng kí</th>
                                <th scope="col">Thời gian bắt đầu sử dụng</th>
                                <th scope="col">Thời giang ngừng sử dụng</th>
                                <th scope="col">Hạn thanh toán</th>
                                <th scope="col">Còn nợ</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php

                            if ($hoadonconno != '') {
                                while ($row2 = $hoadonconno->fetch_assoc()) {
                            ?>
                                    <tr>
                                        <td><?= $row2['MaHD'] ?></td>
                                        <td><?= $row2['NgayTaoHoaDon'] ?></td>
                                        <td><?= $row2['NgayDangKy'] ?></td>
                                        <td><?= $row2['ThoiGianBatDauSD'] ?></td>
                                        <td><?= $row2['ThoiGianNgungSD'] ?></td>
                                        <td><?= $row2['HanThanhToan'] ?></td>
                                        <td><?= $row2['ConNo'] ?></td>
                                    </tr>

                            <?php
                                }
                            } else {
                                echo "<tr><td colspan='7' class='text-center'>Không có dữ liệu</td></tr>";
                            }
                            ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>


</body>

</html>