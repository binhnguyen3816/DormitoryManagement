<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lí kí túc xá</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* body {
            background-image: url("https://storage.googleapis.com/onthisinhvien.appspot.com/images/177923853-1602658848671-trung-tam-quan-ly-ky-tuc-xa-dhqg-hcm-4-15593818365402059953493(1).jpg");
            background-size: cover;
        } */
    </style>
    <link rel="stylesheet" href="../assets/style.css">
</head>

<body>
    <div class="container-fluid">
        <div class="row">
            <!-- Sidebar -->
            <div class="col-2 auto text-bg-light  bg-opacity-75 shadow-lg px-0" style="min-height: 100vh;background-color:rgba(0,0,0,0.6)">
                <h5 class="text-center display-6 m-4" style="width:fit-content;height:fit-content">Quản lí KTX</h5>
                <ul class="nav flex-column m-0">
                    <li class="nav-item">
                        <a class="nav-link hvr-sweep-to-right w-100 "  href="../CSVC/index.php">Quản lí cơ sở vật chất</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link hvr-sweep-to-right w-100" href="../Statistics/index.php">Thống kê</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link hvr-sweep-to-right w-100" href="../Bill/index.php">Hóa đơn</a>
                    </li>
                </ul>
            </div>

            <!-- Content -->
            <div class="col-10 auto text-bg-light  bg-opacity-75" style="min-height: 100vh;background-color:rgba(0,0,0,0.6)">
                <div class="shadow p-3 my-5 rounded" style="background-color: white">
                    <div class="d-flex justify-content-between align-items-center">
                        <h1 class="text-center display-5 m-4" style="width: fit-content; height: fit-content">Thống kê
                        </h1>
                        <div id="backBtnContainer" class="text-center mt-3 d-none">
                            <button id="backBtn" class="btn btn-primary p-3">Quay lại</button>
                        </div>
                    </div>
                    <div id="inputForm" class="text-center mt-5">
                        <div class="input-group mb-3">
                            <input type="text" id="tenCumNhaInput" class="form-control" placeholder="Nhập tên cụm nhà">
                        </div>
                        <div class="input-group mb-3">
                            <input type="text" id="namInput" class="form-control" placeholder="Nhập năm">
                        </div>
                        <button id="submitBtn" class="btn btn-primary btn-lg btn-block">Xem báo cáo</button>
                    </div>
                    <table id="dataTable" class="shadow table caption-top rounded overflow-hidden d-none">
                        <thead class="table-light">
                            <tr>
                                <th scope="col">Tên cơ sở vật chất</th>
                                <th scope="col">Số giờ hoạt động trung bình</th>
                                <th scope="col">Doanh thu</th>
                                <th scope="col">Chi tiết</th> <!-- New column for details -->
                            </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-10">

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