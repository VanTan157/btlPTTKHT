<%--
  Created by IntelliJ IDEA.
  User: Tan
  Date: 11/12/2024
  Time: 9:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Them Doi Tac</title>
</head>
<style>
    body {
        font-family: Arial, sans-serif;

        background-color: #f5f5f5;
    }

    .form-container {
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
        margin: 0;
    }

    form {
        background-color: #ffffff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
        width: 70%;
    }

    label {
        display: block;
        margin-top: 10px;
        font-weight: bold;
        font-size: 14px;
    }

    input[type="text"],
    input[type="email"],
    input[type="date"] {
        width: 100%;
        padding: 8px;
        margin-top: 5px;
        border: 1px solid #ccc;
        border-radius: 4px;
        font-size: 14px;
    }

    .group {
        margin-top: 10px;
    }

    .group label {
        font-weight: normal;
        margin-top: 0;
    }
</style>
<body>
<h1 style="text-align: center">Thêm đối tác</h1>
<div class="form-container">
    <form method="post" action="">
        <label for="maDT">Mã đối tác: </label>
        <input type="text" name="maDT" id="maDT"/></br>
        <label for="tenDT">Tên đối tác: </label>
        <input type="text" name="tenDT" id="tenDT"/></br>
        <label>Họ tên:</label>
        <div class="group">
            <label for="ho">Họ: </label>
            <input type="text" name="ho" id="ho"/>
            <br>
            <label for="tendem">Tên đệm</label>
            <input type="text" name="tendem" id="tendem"/>
            <br>
            <label for="ten">Tên: </label>
            <input type="text" name="ten" id="ten"/>
        </div>
        <label for="email">Email: </label>
        <input type="email" name="email" id="email"/></br>
        <label>Địa chỉ: </label>
        <div class="group">
            <label for="sonha">Số nhà: </label>
            <input type="text" name="sonha" id="sonha"/>
            <br>
            <label for="phuongxa">Phường xã</label>
            <input type="text" name="phuongxa" id="phuongxa"/>
            <br>
            <label for="quanhuyen">Quận huyện: </label>
            <input type="text" name="quanhuyen" id="quanhuyen"/>
            <br>
            <label for="tinhthanh">Tỉnh thành: </label>
            <input type="text" name="tinhthanh" id="tinhthanh"/>
            <br>
        </div>
        <label for="loaiDT">Loại đối tác </label>
        <input type="text" name="loaiDT" id="loaiDT"/></br>
        <label for="ngayGN">Ngày gia nhập: </label>
        <input type="date" name="ngayGN" id="ngayGN"/></br>
        <label for="mota">Mô tả: </label>
        <input type="text" name="mota" id="mota"/></br>
        <div style="text-align: center; margin-top: 10px">
            <input style="border-radius: 4px; border: none; padding: 8px 24px; background-color: #4CAF50; color: #f2f2f2"
                   type="submit"
                   value="Lưu">
        </div>
    </form>
</div>
<div>
    <button onclick="window.location.href = 'gdQuanLiDT.jsp'">Quay lại</button>
</div>

</body>
</html>
