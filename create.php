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
                    <form class="p-3" method="post">
                        <h1 class="text-center display-6 p-2">Thêm cơ sở vật chất</h2>
                            <div class="form-floating">
                                <input class="form-control my-3" placeholder="Nhập tên cơ sở vật chất" id="tenCSVC" name="tenCSVC"></input>
                                <label for="tenCSVC">Tên cơ sở vật chất</label>
                            </div>
                            <div class="input-group mb-3">
                                <span class="input-group-text" id="tenCN">Tên cụm nhà</span>
                                <input type="text" class="form-control" placeholder="Tên cụm nhà" aria-describedby="tenCN">
                            </div>
                            <div class="form-floating">
                                <input class="form-control my-3" placeholder="Nhập vị trí" id="viTri" name="viTri"></input>
                                <label for="viTri">Vị trí</label>
                            </div>
                            <div class="input-group mb-3">
                                <span class="input-group-text">Giá thuê</span>
                                <input type="text" class="form-control" placeholder="Eg:20000" name="giaThue">
                                <span class="input-group-text">VNĐ</span>
                            </div>
                            <div class="input-group mb-3">
                                <span class="input-group-text">Giờ mở cửa</span>
                                <input type="text" class="form-control" placeholder="Eg: 6:00:00" name="gioMoCua">
                                <span class="input-group-text">Giờ đóng cửa</span>
                                <input type="text" class="form-control" placeholder="Eg: 20:00:00" name="gioDongCua">
                            </div>
                            <div class="form-floating">
                                <input class="form-control my-3" placeholder="Nhập vị trí" id="maNV" name="maNV"></input>
                                <label for="maNV">Mã số nhân viên</label>
                            </div>
                            <div class="d-flex justify-content-evenly mt-3">
                                <a href="index.php" class="btn btn-secondary">Hủy bỏ</a>
                                <a href="index.php" class="btn btn-primary">Xác nhận</a>
                            </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>

</html>