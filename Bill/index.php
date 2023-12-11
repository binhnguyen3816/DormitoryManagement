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
                        <a class="nav-link hvr-sweep-to-right w-100 " href="../CSVC/index.php">Quản lí cơ sở vật chất</a>
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
                    <div class=" d-flex justify-content-between align-items-center">
                        <h1 class="text-center display-5 m-4" style="width:fit-content;height:fit-content">Danh sách hóa
                            đơn còn nợ</h1>
                        <div id="backBtnContainer" class="text-center mt-3 d-none">
                            <button id="backBtn" class="btn btn-primary p-3">Quay lại</button>
                        </div>
                    </div>
                    <div id="inputForm" class="text-center mt-5">
                        <div class="input-group mb-3">
                            <input type="text" id="maSinhVienInput" class="form-control" placeholder="Nhập mã số sinh viên">
                        </div>
                        <button id="submitBtn" class="btn btn-primary btn-lg btn-block">Xem danh sách</button>
                    </div>
                    <table id="dataTable" class="shadow table caption-top rounded overflow-hidden d-none">
                        <thead class="table-light">
                            <tr>
                                <th scope="col">Tên hóa đơn</th>
                                <th scope="col">Chi tiết</th>
                            </tr>
                        </thead>
                        <tbody>
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

            // Dữ liệu JSON mẫu
            var data = [{
                    "tenHoaDon": "Hóa đơn 1",
                    "thang": "Tháng 1"
                },
                {
                    "tenHoaDon": "Hóa đơn 2",
                    "thang": "Tháng 2"
                },
                {
                    "tenHoaDon": "Hóa đơn 3",
                    "thang": "Tháng 3"
                }
            ];

            // Xóa dữ liệu bảng cũ (nếu có)
            var tableBody = document.querySelector("#dataTable tbody");
            while (tableBody.firstChild) {
                tableBody.firstChild.remove();
            }

            // Thêm dữ liệu mới vào bảng
            data.forEach(function(item) {
                var row = document.createElement("tr");
                var tenHoaDonCell = document.createElement("td");
                var thangCell = document.createElement("td");

                tenHoaDonCell.textContent = item.tenHoaDon;
                thangCell.textContent = item.thang;

                row.appendChild(tenHoaDonCell);
                row.appendChild(thangCell);

                row.addEventListener("click", function() {
                    showDetailModal(item.tenHoaDon, item.thang);
                });

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
    </script>
</body>

</html>