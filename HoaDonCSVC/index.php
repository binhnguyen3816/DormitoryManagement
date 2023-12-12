<?php
require_once '../db_connection.php';

$sqlShowCSVC = "SELECT * FROM cosovatchat";
$cosovatchat = $conn->query($sqlShowCSVC);
$doanhthu = '';
if (isset($_POST['show'])) {
    $TenCSVC = $_POST['TenCSVC'];
    $nam = $_POST['nam'];
    
    $tb = '';
    $ok = true;
    if ($ok) {
        $sqlInsert = "call doanhthu_CSVC('$TenCSVC', '$nam')";
        $doanhthu = $conn->query($sqlInsert);
    }
}


?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Doanh thu cơ sở vật chất</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-image: url("https://storage.googleapis.com/onthisinhvien.appspot.com/images/177923853-1602658848671-trung-tam-quan-ly-ky-tuc-xa-dhqg-hcm-4-15593818365402059953493(1).jpg");
            background-size: cover;
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="shadow p-3 my-5 rounded" style="background-color: white">
                    <div class=" d-flex justify-content-between align-items-center">
                        <h1 class="text-center display-5 m-4" style="width:fit-content;height:fit-content">Hóa đơn cơ sở vật chất</h1>
                        <div id="backBtnContainer" class="text-center mt-3 d-none">
                            <button id="backBtn" class="btn btn-primary p-3">Quay lại</button>
                        </div>
                    </div>
                    <form class="p-3" target="_self" id="inputForm" method="post">
                        <!-- <div class="input-group mb-3">
                            <input type="text" id="maSinhVienInput" class="form-control"
                                placeholder="Tên cơ sở vật chất">
                        </div> -->
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
                        <div class="input-group mb-3">
                            <input type="text" id="ngaybatdauInput" name="nam" class="form-control" placeholder="Năm">
                        </div>

                        <button id="submitBtn" name="show" class="btn btn-primary btn-lg btn-block">Xem danh sách</button>
                    </form>
                    <table id="dataTable" class="shadow table caption-top rounded overflow-hidden">
                        <thead class="table-light">
                            <tr>
                                <th scope="col">Tháng</th>
                                <th scope="col">Tổng doanh thu</th>
                                <th scope="col">Đã thanh toán</th>
                                <th scope="col">Còn nợ</th>
                            </tr>
                        </thead>
                        <tbody>
                        <?php
                            if ($doanhthu!='') {
                                while ($row = $doanhthu->fetch_assoc()) {
                            ?>
                                    <tr>
                                        <td><?= $row['thang'] ?></td>
                                        <td><?= $row['DoanhThu'] ?></td>
                                        <td><?= $row['DaThanhToan'] ?></td>
                                        <td><?= $row['ChuaThanhToan'] ?></td>
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

    
</body>

</html>