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
                    <div id="inputForm" class="text-center mt-5">
                        <div class="input-group mb-3">
                            <input type="text" id="maSinhVienInput" class="form-control"
                                placeholder="Tên cơ sở vật chất">
                        </div>
                        <div class="input-group mb-3">
                            <input type="text" id="ngaybatdauInput" class="form-control"
                                placeholder="Năm">
                        </div>
                        
                        <button id="submitBtn" class="btn btn-primary btn-lg btn-block">Xem danh sách</button>
                    </div>
                    <table id="dataTable" class="shadow table caption-top rounded overflow-hidden d-none">
                        <thead class="table-light">
                            <tr>
                                <th scope="col">Tháng</th>
                                <th scope="col">Tổng doanh thu</th>
                                <th scope="col">Đã thanh toán</th>
                                <th scope="col">Còn nợ</th>
                              
                              
                               
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
                "v1": "01",
                "v2": "20000000",
                "v3": "4000000",
                "v4": "0",
               
               
            },
            {
                "v1": "02",
                "v2": "30000000",
                "v3": "3000000",
                "v4": "1000000",
              
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
          

            v1_Cell.textContent = item.v1;
            v2_Cell.textContent = item.v2;
            v3_Cell.textContent = item.v3;
            v4_Cell.textContent = item.v4;
          

            row.appendChild(v1_Cell);
            row.appendChild(v2_Cell);
            row.appendChild(v3_Cell);
            row.appendChild(v4_Cell);
            
          


            row.addEventListener("click", function() {
                showDetailModal(item.v1,item.v2,item.v3,item.v4);
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