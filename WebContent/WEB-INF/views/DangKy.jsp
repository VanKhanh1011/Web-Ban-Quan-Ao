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
<link href="<c:url value="/resources/theme/css/DangKyy.css" />" rel="stylesheet">
<link href="<c:url value="/resources/theme/css/reset.css" />" rel="stylesheet">
</head>
<body>
<%@include file="Header.jsp" %>
 <div class="dangky">
 
<h1>Đăng Ký</h1>
${message}
<form:form action="DangKy.htm" method="post" modelAttribute="user">
<form:input path="ho" type="text"  placeholder="Họ"/>
<form:errors path="ho"/>
<form:input path="ten" type="text" placeholder="Tên"/>
<form:errors path="ten"/>
<form:input path="email" type="text" placeholder="Email"/>
<form:errors path="email"/>
<form:input path="matkhau" type="password" placeholder="Mật Khẩu"/>
<form:errors path="matkhau"/>
<input name="password1" type="password" placeholder="Nhap lai Mật Khẩu">
<button>Đăng Ký</button>
</form:form>

</div> 
<%@include file="Last.jsp" %>
</body>
</html>