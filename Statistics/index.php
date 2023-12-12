<?php
$rootPath = '/DormitoryManagement';

// Connect to the database
require_once '../db_connection.php';
$sqlShowCN = "SELECT * FROM cumnha";
$cumnha = $conn->query($sqlShowCN);
$tbSoGio = '';
$tbDoanhThu = '';
if (isset($_POST['show'])) {
    $TenCN = $_POST['TenCN'];
    $nam = $_POST['nam'];

    $tb = '';
    $ok = true;
    if ($ok) {
        $sqlInsert = "select TrungBinhSoGio('$TenCN', '$nam') as TrungBinhSoGio";
        $tbSoGio = $conn->query($sqlInsert);
        $sqlInsert2 = "select TrungBinhDoanhThu('$TenCN', '$nam') as TrungBinhDoanhThu";
        $tbDoanhThu = $conn->query($sqlInsert2);
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
                    <div class="d-flex justify-content-between align-items-center">
                        <h1 class="text-center display-5 m-4" style="width: fit-content; height: fit-content">Thống kê
                        </h1>
                        <div id="backBtnContainer" class="text-center mt-3 d-none">
                            <button id="backBtn" class="btn btn-primary p-3">Quay lại</button>
                        </div>
                    </div>
                    <form class="p-3" target="_self" id="inputForm" method="post">
                        <!-- <div class="input-group mb-3">
                            <input type="text" id="tenCumNhaInput" class="form-control" placeholder="Nhập tên cụm nhà">
                        </div> -->
                        <div class="input-group mb-3">
                            <span class="input-group-text" id="TenCSVC">Tên cụm nhà</span>
                            <!-- <input type="text" class="form-control" placeholder="Tên cụm nhà" name="TenCN" aria-describedby="TenCN"> -->
                            <select class="form-select" placeholder="Tên cụm nhà" name="TenCN" aria-describedby="TenCN">
                                <option></option>
                                <?php
                                while ($row = $cumnha->fetch_assoc()) {
                                ?>
                                    <option><?= $row['TenCN'] ?></option>
                                <?php
                                } ?>
                            </select>

                        </div>
                        <div class="input-group mb-3">
                            <input type="text" id="namInput" name="nam" class="form-control" placeholder="Nhập năm">
                        </div>
                        <button id="submitBtn" name="show" class="btn btn-primary btn-lg btn-block">Xem báo cáo</button>
                    </form>
                    <table id="dataTable" class="shadow table caption-top rounded overflow-hidden">
                        <thead class="table-light">
                            <tr>
                                <th scope="col">Tên cụm nhà</th>
                                <th scope="col">Năm</th>
                                <th scope="col">Số giờ hoạt động (giờ/tháng)</th>
                                <th scope="col">Doanh thu (đồng/tháng)</th>
                                <!-- <th scope="col">Chi tiết</th> New column for details -->
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            if ($tbSoGio != '') {
                                $row1 = $tbSoGio->fetch_assoc();
                                $row2 = $tbDoanhThu->fetch_assoc();
                            ?>
                                <tr>
                                    <td><?= $_POST['TenCN'] ?></td>
                                    <td><?= $_POST['nam'] ?></td>
                                    <td><?= $row1['TrungBinhSoGio'] ?></td>
                                    <td><?= $row2['TrungBinhDoanhThu'] ?></td>
                                </tr>
                            <?php
                            }
                            ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="detailModal" tabindex="-1" aria-labelledby="detailModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="detailModalLabel">Chi tiết số giờ và doanh thu</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div id="monthlyDetails">
                        <!-- Monthly details table will be appended here dynamically -->
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        document.getElementById("submitBtn").addEventListener("click", function() {
            var tenCumNha = document.getElementById("tenCumNhaInput").value;
            var nam = document.getElementById("namInput").value;

            // Các dữ liệu JSON mẫu
            var data = [{
                    "tenCoSoVatChat": "Sân bóng đá",
                    "soGioHoatDong": 1000000,
                    "doanhThu": 50000,
                    "monthlyDetails": [{
                            "month": "Tháng 1",
                            "hours": 100,
                            "revenue": 5000
                        },
                        {
                            "month": "Tháng 2",
                            "hours": 120,
                            "revenue": 6000
                        },
                        // Add more months as needed
                    ]
                },
                // Add details for other facilities
            ];

            // Xóa dữ liệu bảng cũ (nếu có)
            var tableBody = document.querySelector("#dataTable tbody");
            while (tableBody.firstChild) {
                tableBody.firstChild.remove();
            }

            // Thêm dữ liệu mới vào bảng
            data.forEach(function(item) {
                var row = document.createElement("tr");
                var tenCoSoVatChatCell = document.createElement("td");
                var soGioHoatDongCell = document.createElement("td");
                var doanhThuCell = document.createElement("td");
                var detailButtonCell = document.createElement("td");

                tenCoSoVatChatCell.textContent = item.tenCoSoVatChat;
                soGioHoatDongCell.textContent = item.soGioHoatDong;
                doanhThuCell.textContent = item.doanhThu;

                var detailButton = document.createElement("button");
                detailButton.textContent = "Chi tiết";
                detailButton.classList.add("btn", "btn-primary");
                detailButton.addEventListener("click", function() {
                    showMonthlyDetails(item.monthlyDetails);
                });

                detailButtonCell.appendChild(detailButton);

                row.appendChild(tenCoSoVatChatCell);
                row.appendChild(soGioHoatDongCell);
                row.appendChild(doanhThuCell);
                row.appendChild(detailButtonCell);

                tableBody.appendChild(row);
            });

            // Hiển thị bảng và ẩn form nhập
            inputForm.classList.add("d-none");
            dataTable.classList.remove("d-none");
            backBtnContainer.classList.remove("d-none");
        });

        document.getElementById("backBtn").addEventListener("click", function() {
            // Hiển thị form nhập và ẩn bảng
            inputForm.classList.remove("d-none");
            dataTable.classList.add("d-none");
            backBtnContainer.classList.add("d-none");
        });

        function showMonthlyDetails(monthlyDetails) {
            // Clear previous details
            var monthlyDetailsContainer = document.getElementById("monthlyDetails");
            monthlyDetailsContainer.innerHTML = "";

            // Create a table
            var table = document.createElement("table");
            table.classList.add("table", "table-bordered");

            // Create table header
            var thead = document.createElement("thead");
            var headerRow = document.createElement("tr");
            var headerCells = ["Tháng", "Số giờ", "Doanh thu"];
            headerCells.forEach(function(header) {
                var th = document.createElement("th");
                th.textContent = header;
                headerRow.appendChild(th);
            });
            thead.appendChild(headerRow);
            table.appendChild(thead);

            // Create table body
            var tbody = document.createElement("tbody");
            monthlyDetails.forEach(function(month) {
                var row = document.createElement("tr");
                var cells = [month.month, month.hours + " giờ", month.revenue + " đồng"];
                cells.forEach(function(cellText) {
                    var td = document.createElement("td");
                    td.textContent = cellText;
                    row.appendChild(td);
                });
                tbody.appendChild(row);
            });
            table.appendChild(tbody);

            // Append the table to the modal content
            monthlyDetailsContainer.appendChild(table);

            // Show the modal
            var myModal = new bootstrap.Modal(document.getElementById('detailModal'));
            myModal.show();
        }
    </script>
</body>

</html>