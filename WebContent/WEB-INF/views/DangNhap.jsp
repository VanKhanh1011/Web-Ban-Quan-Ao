<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="<c:url value="/resources/theme/css/DangNhap.css" />" rel="stylesheet">
<link href="<c:url value="/resources/theme/css/reset.css" />" rel="stylesheet">
</head>
<body>
<%@include file="Header.jsp" %>
<div class="dangnhap">
<form action="DangNhap.htm" method="post">
<h1>Đăng Nhập </h1>
${message}
<input type="text" name="email" placeholder="Email">
<input type="password" name="matkhau" placeholder="Mật Khẩu">
<button>Đăng Nhập</button>
<h3>Chưa Có Tài Khoản? <a href="DangKy.htm">Đăng Ký</a></h3>
</form>
</div>
<%@include file="Last.jsp" %>
</body>
</html>