<%@ page import="java.util.List" %>
<%@ page import="model.DoiTac" %>
<%@ page import="dao.DoiTacDAO" %><%--
  Created by IntelliJ IDEA.
  User: Tan
  Date: 11/11/2024
  Time: 11:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Quan li doi tac</title>
</head>
<style>
    table {
        width: 100%;
        border-collapse: collapse;
    }

    th, td {
        border: 1px solid #ddd;
        padding: 8px;
        text-align: center;
    }

    th {
        background-color: #4CAF50;
        color: white;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    tr:hover {
        background-color: #ddd;
    }
</style>
<body>
<div class="container">
    <h1 style="text-align: center">Quản lí đối tác</h1>
    <%
        List<DoiTac> listdt = DoiTacDAO.getAllDT();
        if (listdt != null) {
    %>
    <table>
        <tr>
            <th>Mã đối tác</th>
            <th>Tên đối tác</th>
            <th>Số điện thoại</th>
            <th>Email</th>
            <th>Địa chỉ</th>
            <th>Loại đối tác</th>
            <th>Ngày gia nhập</th>
            <th>Mô tả</th>
            <th>Sửa</th>
            <th>Xóa</th>
        </tr>
        <%
            for (DoiTac dt : listdt) {
        %>
        <tr>
            <td><%=dt.getMaDT()%>
            </td>
            <td><%=dt.getTen()%>
            </td>
            <td><%=dt.getSdt()%>
            </td>
            <td><%=dt.getEmail()%>
            </td>
            <td><%=dt.getDiachi()%>
            </td>
            <td><%=dt.getLoaiDT()%>
            </td>
            <td><%=dt.getNgaygianhap()%>
            </td>
            <td><%=dt.getMota()%>
            </td>
            <td>Sửa</td>
            <td>Xóa</td>
        </tr>
        <%
            }
        %>
    </table>
    <%
        }
    %>
    <div style="display: flex; align-items: center; justify-content: space-between; padding: 20px 10px">
        <button onclick="window.location.href='gdQuanLi.jsp'">Quay lại</button>
        <button onclick="window.location.href='gdThemDT.jsp'">Thêm đối tác</button>
    </div>
</div>
</body>
</html>
