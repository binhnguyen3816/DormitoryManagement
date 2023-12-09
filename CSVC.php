<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lí kí túc xá</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
</head>

<body>
    <div class="w-100">
        <div class="row">
            <div class="col-2 auto text-bg-light  bg-opacity-75 shadow-lg" style="min-height: 100vh;background-color:rgba(0,0,0,0.6)">
                <h5 class="text-center display-6 m-4" style="width:fit-content;height:fit-content">Quản lí KTX</h5>
                <ul class="nav flex-column m-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="CSVC.php">Quản lí cơ sở vật chất</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="">Link</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Link</a>
                    </li>
                </ul>
            </div>
            <div class="col-10 auto text-bg-light  bg-opacity-75" style="min-height: 100vh;background-color:rgba(0,0,0,0.6)">
                <div class="d-flex justify-content-between align-items-center">
                    <h1 class="text-center display-5 m-4" style="width:fit-content;height:fit-content">Cơ sở vật chất</h2>
                        <p class="my-5 text-center">
                            <a href="create.php" class="btn btn-primary p-3" style="width:fit-content">Thêm cơ sở vật chất</a>
                        </p>
                </div>
                <table class="shadow table caption-top rounded overflow-hidden">
                    <thead class="table-light">
                        <tr>
                            <th scope="col">Tên cơ sở vật chất</th>
                            <th scope="col">Vị trí</th>
                            <th scope="col">Giá thuê</th>
                            <th scope="col">Giờ mở cửa</th>
                            <th scope="col">Giờ đóng cửa</th>
                            <th scope="col">Tên cụm nhà</th>
                            <th scope="col">Mã nhân viên</th>
                            <th scope="col">Trạng thái</th>
                            <th scope="col">Thao tác</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Sân bóng đá</td>
                            <td>AA5</td>
                            <td>50000</td>
                            <td>6:00:00</td>
                            <td>20:00:00</td>
                            <td>A</td>
                            <td>TCN0011</td>
                            <td>
                                <span class="badge rounded-pill text-bg-success p-2">Đang hoạt động</span>
                            </td>
                            <td class="d-flex">
                                <p>
                                    <a href="update.php?update_id=1" class="link-info p-2 link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover">Chỉnh sửa</a>
                                </p>
                                <p>
                                    <a onclick="return confirm('Bạn có muốn xóa cơ sở vật chất này không?')" class="link-danger p-2 link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover">Xóa</a>
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td>Sân bóng chuyền</td>
                            <td>AA18</td>
                            <td>20000</td>
                            <td>6:00:00</td>
                            <td>20:00:00</td>
                            <td>A</td>
                            <td>TCN0012</td>
                            <td>
                                <span class="badge rounded-pill text-bg-success p-2">Đang hoạt động</span>
                            </td>
                            <td class="d-flex">
                                <p>
                                    <a href="update.php?update_id=2" class="link-info p-2 link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover">Chỉnh sửa</a>
                                </p>
                                <p>
                                    <a onclick="return confirm('Bạn có muốn xóa cơ sở vật chất này không?')" class="link-danger p-2 link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover">Xóa</a>
                                </p>
                            </td>
                        </tr>
                        <tr>
                            <td>Sân cầu lông</td>
                            <td>AA18</td>
                            <td>10000</td>
                            <td>6:00:00</td>
                            <td>20:00:00</td>
                            <td>A</td>
                            <td>TCN0013</td>
                            <td><span class="badge rounded-pill text-bg-secondary p-2">Ngưng hoạt động</span></td>
                            <td class="d-flex">
                                <p>
                                    <a href="update.php?update_id=3" class="link-info p-2 link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover">Chỉnh sửa</a>
                                </p>
                                <p>
                                    <a onclick="return confirm('Bạn có muốn xóa cơ sở vật chất này không?')" class="link-danger p-2 link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover">Xóa</a>
                                </p>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <script src=" https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>