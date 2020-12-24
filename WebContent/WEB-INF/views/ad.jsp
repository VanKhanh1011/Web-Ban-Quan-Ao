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
<style>
table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	line-height: 25px;
	border: 1px solid black;
	padding: 5px;
}

th {
	background-color: whitesmoke;
}

h1 {
	text-align: center;
	padding: 20px;
}

.aa {
	text-align: center;
}

a {
	padding-right: 10px;
}
</style>
</head>
<body>
	<h1>TÀI KHOẢN ĐĂNG KÝ</h1>
	<table class="table table-hover">
		<tr>
			<th>HO</th>
			<th>TEN</th>
			<th>EMAIL</th>
			<th>Update</th>
			<th>Delete</th>
			<th>Insert</th>
		</tr>
		<c:forEach var="u" items="${users}">
			<tr>
				<td>${u.ho}</td>
				<td>${u.ten}</td>
				<td>${u.email}</td>
				<td><a href="update1/${u.email}.htm">Update</a></td>
				<td><a
					onclick="return confirm('BẠN CÓ MUỐN XÓA TÀI KHOẢN ${u.email}')"
					href="delete/${u.email}.htm">Delete</a></td>
				<td><a href="insert/${u.email}.htm">Insert</a></td>
			</tr>
		</c:forEach>

	</table>
	<button><a href="sp.htm">Sản Phẩm</a></button>
</body>
</html>