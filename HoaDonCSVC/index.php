<?php
require_once '../db_connection.php';

$sqlShowCSVC = "SELECT * FROM cosovatchat";
$cosovatchat = $conn->query($sqlShowCSVC);
$hoadon = '';
if (isset($_POST['show'])) {
    $TenCSVC = $_POST['TenCSVC'];
    $ngaybatdau = $_POST['ngaybatdau'];
    $ngayketthuc = $_POST['ngayketthuc'];
    $tb = '';
    $ok = true;
    if ($ok) {
        $sqlInsert = "call hoadon_CSVC('$TenCSVC', '$ngaybatdau', '$ngayketthuc')";
        $hoadon = $conn->query($sqlInsert);
    }
}


?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hóa đơn cơ sở vật chất</title>
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
                        <h1 class="text-center display-5 m-4" style="width:fit-content;height:fit-content">Hóa đơn cơ sở vật chất</h1>
                        <div id="backBtnContainer" class="text-center mt-3 d-none">
                            <button id="backBtn" class="btn btn-primary p-3">Quay lại</button>
                        </div>
                    </div>
                    <form class="p-3" target="_self" id="inputForm" method="post">
                        <div class="input-group mb-3">
                            <span class="input-group-text" id="TenCSVC">Tên cơ sở vật chất</span>
                            <!-- <input type="text" class="form-control" placeholder="Tên cụm nhà" name="TenCN" aria-describedby="TenCN"> -->
                            <select class="form-select" placeholder="Tên cơ sở vật chất" name="TenCSVC" aria-describedby="TenCSVC">
                                <option></option>
                                <?php
                                while ($row = $cosovatchat->fetch_assoc()) {
                                ?>
                                    <option><?= $row['TenCSVC'] ?></option>
                                <?php
                                } ?>
                            </select>

                        </div>
                        <div class="row mb-3">
                            <div class="col-lg-3 col-sm-6">
                                <label for="startDate">Ngày bắt đầu</label>
                                <input id="startDate" name="ngaybatdau" class="form-control" type="date" />

                            </div>
                            <div class="col-lg-3 col-sm-6">
                                <label for="endDate">Ngày kết thúc</label>
                                <input id="endDate" name="ngayketthuc" class="form-control" type="date" />

                            </div>
                        </div>
                        <script>
                            let startDate = document.getElementById('startDate')
                            let endDate = document.getElementById('endDate')

                            startDate.addEventListener('change', (e) => {
                                let startDateVal = e.target.value
                                document.getElementById('startDateSelected').innerText = startDateVal
                            })

                            endDate.addEventListener('change', (e) => {
                                let endDateVal = e.target.value
                                document.getElementById('endDateSelected').innerText = endDateVal
                            })
                        </script>
                        <!-- <div class="input-group mb-3">
                    <input type="text" id="ngayketthucInput" class="form-control" placeholder="Ngày kết thúc">
                </div> -->
                        <button id="submitBtn" name="show" class="btn btn-primary btn-lg btn-block">Xem danh sách</button>
                    </form>
                    <table id="dataTable" class="shadow table caption-top rounded overflow-hidden">
                        <thead class="table-light">
                            <tr>
                                <th scope="col">Mã hóa đơn</th>
                                <th scope="col">Mã phiếu đăng kí</th>
                                <th scope="col">Ngày tạo hóa đơn</th>
                                <th scope="col">Thời gian bắt đầu sử dụng</th>
                                <th scope="col">Thời gian ngưng sử dụng</th>
                                <th scope="col">Số giờ thuê</th>
                                <th scope="col">Hạn thanh toán</th>
                                <th scope="col">Trạng thái thanh toán</th>
                                <th scope="col">Thành tiền</th>
                                <th scope="col">Tên cơ sở vật chất</th>
                                <th scope="col">Tên cụm nhà</th>
                                <th scope="col">Giá thuê 1 giờ</th>
                                <th scope="col">Tên tài khoản</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            if ($hoadon != '') {
                                while ($row = $hoadon->fetch_assoc()) {
                            ?>
                                    <tr>
                                        <td><?= $row['MaHD'] ?></td>
                                        <td><?= $row['MaPDK'] ?></td>
                                        <td><?= $row['NgayTaoHoaDon'] ?></td>
                                        <td><?= $row['ThoiGianBatDauSD'] ?></td>
                                        <td><?= $row['ThoiGianNgungSD'] ?></td>
                                        <td><?= $row['SoGioThue'] ?></td>
                                        <td><?= $row['HanThanhToan'] ?></td>
                                        <td><?= $row['TrangThaiThanhToan'] ?></td>
                                        <td><?= $row['ThanhTien'] ?></td>
                                        <td><?= $row['TenCSVC'] ?></td>
                                        <td><?= $row['TenCN'] ?></td>
                                        <td><?= $row['GiaThue'] ?></td>
                                        <td><?= $row['TenTaiKhoan'] ?></td>
                                    </tr>
                            <?php
                                }
                            }
                            ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <script>
        var inputForm = document.getElementById("inputForm");
        var dataTable = document.getElementById("dataTable");
        var backBtnContainer = document.getElementById("backBtnContainer");

        document.getElementById("submitBtn").addEventListener("click", function() {
            var maSinhVien = document.getElementById("maSinhVienInput").value;

            // Xóa dữ liệu bảng cũ (nếu có)
            var tableBody = document.querySelector("#dataTable tbody");
            while (tableBody.firstChild) {
                tableBody.firstChild.remove();
            }
            // Hiển thị bảng và ẩn form nhập
            inputForm.classList.add("d-none");
            dataTable.classList.remove("d-none");
            backBtnContainer.classList.remove("d-none");
        });

        document.getElementById("backBtn").addEventListener('click', function() {
            // Hiển thị form nhập và ẩn bảng
            inputForm.classList.remove("d-none");
            dataTable.classList.add("d-none");
            backBtnContainer.classList.add("d-none");
        });
    </script>

</body>

</html>