<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
</head>
<body>
		<h1>Danh sach</h1>
		<table>
			<tr>
				<th>Ten KH:</th>
				<th>SDT:</th>
				<th>Dia chi</th>
				
			</tr>
			<c:forEach var="u" items="${user}">
			<tr>
				<td>${u.getTen()}</td>
				<td>${u.getSdt()}</td>
				<td>${u.getDiachi()}</td>
			</tr>
		</c:forEach>
		</table>
</body>
</html>