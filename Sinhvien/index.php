<?php
require_once '../db_connection.php';

$sqlShowCSVC = "SELECT * FROM cosovatchat";
$cosovatchat = $conn->query($sqlShowCSVC);
$tensv = '';
if (isset($_POST['show'])) {
    $TenCSVC = $_POST['TenCSVC'];
    $thoidiem = $_POST['thoidiem'];

    $tb = '';
    $ok = true;
    if ($ok) {
        $sqlInsert = "select sinhvien_CSVC('$TenCSVC','$thoidiem') as sinhvien_CSVC ;";
        $tensv = $conn->query($sqlInsert);
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
                        <h1 class="text-center display-5 m-4" style="width:fit-content;height:fit-content">Sinh viên nào đang sử dụng cơ sở vật chất</h1>
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
                        <label for="birthdaytime">Thời điểm:</label>
                        <input type="datetime-local" id="thoidiem" name="thoidiem">

                        <button id="submitBtn" name="show" class="btn btn-primary btn-lg btn-block">Xem danh sách</button>
                    </form>
                    <table id="dataTable" class="shadow table caption-top rounded overflow-hidden">
                        <thead class="table-light">
                            <tr>
                                <th scope="col">Họ và tên sinh viên</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            if ($tensv != '') {
                                $row1 = $tensv->fetch_assoc();
                            ?>
                                <tr>
                                    <td><?= $row1['sinhvien_CSVC'] ?></td>
                                </tr>
                            <?php
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