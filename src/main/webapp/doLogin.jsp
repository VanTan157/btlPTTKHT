<%@ page import="dao.NhanVienDAO" %>
<%@ page import="dao.QuanLiDAO" %>
<%@ page import="model.QuanLi" %><%--
  Created by IntelliJ IDEA.
  User: Tan
  Date: 11/11/2024
  Time: 9:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
//    response.setHeader("Pragma", "no-cache");
//    response.setHeader("Expires", "0");
    
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    NhanVienDAO nhanVienDAO = new NhanVienDAO();
    boolean isAuth = nhanVienDAO.kiemtraDN(username, password);
    if (isAuth) {
        
        int id = nhanVienDAO.getId();
        boolean isQL = nhanVienDAO.kiemtraQL(id);
        if (isQL) {
            QuanLiDAO quanLiDAO = new QuanLiDAO();
            QuanLi quanli = quanLiDAO.getQuanLi(id);
            session.setAttribute("message", "Dang nhap thanh cong");
            session.setAttribute("ql", quanli);
            response.sendRedirect("gdQuanLi.jsp");
        }
        
        
    } else {
        session.setAttribute("message", "Dang nhap that bai");
        response.sendRedirect("gdDangNhap.jsp");
    }
%>
