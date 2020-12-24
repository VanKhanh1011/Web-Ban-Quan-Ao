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
	<h1>DANH SÁCH SẢN PHẨM</h1>
	<table class="table table-hover">
		<tr>
			<th>MA SP</th>
			<th>TEN SP</th>
			<th>GIA</th>
			<th>Update</th>
			<th>Delete</th>
			<th>Insert</th>
		</tr>
		<c:forEach var="u" items="${product}">
			<tr>
				<td>${u.proid}</td>
				<td>${u.proname}</td>
				<td>${u.price}</td>
				<td><a href="update11/${u.proid}.htm">Update</a></td>
				<td><a
					onclick="return confirm('BẠN CÓ MUỐN XÓA SẢN PHẨM NÀY ${u.proid}')"
					href="delete1/${u.proid}.htm">Delete</a></td>
				<td><a href="insert.htm">Insert</a></td>
			</tr>
		</c:forEach>

	</table>
</body>
</html>