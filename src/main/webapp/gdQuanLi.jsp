<%@ page import="model.QuanLi" %><%--
  Created by IntelliJ IDEA.
  User: Tan
  Date: 11/11/2024
  Time: 9:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Quan Li</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-content: center;
            background-color: #f2f2f2;
            margin: 0;
        }

        .container {
            text-align: center;
        }

        .message {
            color: #4CAF50;
            font-weight: bold;
            justify-content: center;
        }

        .chucnang {
            display: flex;
            justify-content: space-around;
            margin-top: 30px;
        }

        .chucnang button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            font-size: 16px;
            width: 30%;
            text-align: center;
            margin: 5px;
            transition: background-color 0.3s ease;
        }

        .chucnang a:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<div class="container">
    <% String mess = (String) session.getAttribute("message");
        if (mess != null) {
    %>
    <p class="message" id="mess"><%= mess %>
    </p>
    <%
        }
        session.removeAttribute("message");
    %>
    <% QuanLi quanLi = (QuanLi) session.getAttribute("ql");
        if (quanLi == null) {
            response.sendRedirect("../gdDangNhap.jsp");
            return;
        } else {
            session.setAttribute("ql", quanLi);
        }
    %>
    <div>
        <h1>Quan Li:</h1>
        <h2>Ten: <%=quanLi.getTen()%>
        </h2>
        <h2>Vi tri: <%=quanLi.getVitri()%>
        </h2>
    </div>
    
    <div class="chucnang">
        <button onclick="window.location.href='gdQuanLiDT.jsp'">Quan Li Doi Tac</button>
        <button onclick="window.location.href='gdQuanLiDT.jsp'">Quan Li Doi Tac</button>
        <button onclick="window.location.href='gdQuanLiDT.jsp'">Quan Li Doi Tac</button>
    </div>


</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    setTimeout(function () {
        $('#mess').css('display', 'none');
    }, 2000)
    const Logout = () => {
        window.location.href = '../gdDangNhap.jsp';
        <%session.removeAttribute("ql");%>
    }
</script>

<button onclick=Logout>Đăng xuất</button>
</body>
</html>
