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
                        <h1 class="text-center display-5 m-4" style="width:fit-content;height:fit-content">Doanh thu cơ sở vật chất</h1>
                        <div id="backBtnContainer" class="text-center mt-3 d-none">
                            <button id="backBtn" class="btn btn-primary p-3">Quay lại</button>
                        </div>
                    </div>
                    <div id="inputForm" class="text-center mt-5">
                        <div class="input-group mb-3">
                            <input type="text" id="maSinhVienInput" class="form-control"
                                placeholder="Tên cơ sở vật chất">
                        </div>
                        <div class="input-group mb-3">
                            <input type="text" id="ngaybatdauInput" class="form-control"
                                placeholder="Ngày bắt đầu">
                        </div>
                        <div class="input-group mb-3">
                            <input type="text" id="ngayketthucInput" class="form-control"
                                placeholder="Ngày kết thúc">
                        </div>
                        <button id="submitBtn" class="btn btn-primary btn-lg btn-block">Xem danh sách</button>
                    </div>
                    <table id="dataTable" class="shadow table caption-top rounded overflow-hidden d-none">
                        <thead class="table-light">
                            <tr>
                                <th scope="col">Mã số hóa đơn</th>
                                <th scope="col">Ngày tạo hóa đơn</th>
                                <th scope="col">Loại dịch vụ</th>
                                <th scope="col">Thời gian đăng kí</th>
                                <th scope="col">Thời gian bắt đầu sử dụng</th>
                                <th scope="col">Thời gian ngưng sử dụng</th>
                                <th scope="col">Hạn thanh toán</th>
                                <th scope="col">Trạng thái thanh toán</th>
                                <th scope="col">Loại cơ sở vật chất</th>
                                <th scope="col">Địa điểm thuê</th>
                                <th scope="col">Giá thuê 1 giờ</th>
                                <th scope="col">Tên tài khoản</th>
                                <th scope="col">Mã số phiếu</th>
                              
                               
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
                "v1": "hd1",
                "v2": "25/02/2023",
                "v3": "Quán ăn",
                "v4": "01/03/2023",
                "v5": "02/03/2023",
                "v6": "31/07/2023",
                "v7": "10/08/2023",
                "v8": "Đã thanh toán",
                "v9": "Kho trống",
                "v10": "tòa A1",
                "v11": "30000",
                "v12": "mb0001",
                "v13": "tmb0001",
               
            },
            {
                "v1": "hd2",
                "v2": "25/04/2023",
                "v3": "Sân bóng",
                "v4": "11/03/2023",
                "v5": "12/03/2023",
                "v6": "30/11/2023",
                "v7": "14/12/2023",
                "v8": "Chưa thanh toán",
                "v9": "Đất trống",
                "v10": "tòa A2",
                "v11": "40000",
                "v12": "mb0002",
                "v13": "tmb0002",
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

            var v1_Cell = document.createElement("td");
            var v2_Cell = document.createElement("td");
            var v3_Cell = document.createElement("td");
            var v4_Cell = document.createElement("td");
            var v5_Cell = document.createElement("td");
            var v6_Cell = document.createElement("td");
            var v7_Cell = document.createElement("td");
            var v8_Cell = document.createElement("td");
            var v9_Cell = document.createElement("td");
            var v10_Cell = document.createElement("td");
            var v11_Cell = document.createElement("td");
            var v12_Cell = document.createElement("td");
            var v13_Cell = document.createElement("td");

            v1_Cell.textContent = item.v1;
            v2_Cell.textContent = item.v2;
            v3_Cell.textContent = item.v3;
            v4_Cell.textContent = item.v4;
            v5_Cell.textContent = item.v5;
            v6_Cell.textContent = item.v6;
            v7_Cell.textContent = item.v7;
            v8_Cell.textContent = item.v8;
            v9_Cell.textContent = item.v9;
            v10_Cell.textContent = item.v10;
            v11_Cell.textContent = item.v11;
            v12_Cell.textContent = item.v12;
            v13_Cell.textContent = item.v13;

            row.appendChild(v1_Cell);
            row.appendChild(v2_Cell);
            row.appendChild(v3_Cell);
            row.appendChild(v4_Cell);
            
            row.appendChild(v5_Cell);
            row.appendChild(v6_Cell);
            row.appendChild(v7_Cell);
            row.appendChild(v8_Cell);
            
            row.appendChild(v9_Cell);
            row.appendChild(v10_Cell);
            row.appendChild(v11_Cell);
            row.appendChild(v12_Cell);
            row.appendChild(v13_Cell);


            row.addEventListener("click", function() {
                showDetailModal(item.v1,item.v2,item.v3,item.v4,item.v5,item.v6,item.v7,item.v8,item.v9,item.v10,item.v11,item.v12,item.v13);
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