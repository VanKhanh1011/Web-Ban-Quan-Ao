<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<title>Insert title here</title>
<style type="text/css">
.ip{
display: flex;
}
.ip label {
width:10%;
	margin-right:30px;
	padding: 6px; 
	margin-bottom: 10px;
}
.ip input {
  
	width:500px;
	padding: 10px;
	margin-bottom: 10px;
}
</style>
</head>
<body>
<h3 style="color: red;">${message}</h3>

	<form:form action="insert.htm" modelAttribute="pr" method="Post">
		<div class="ip">
			<label>Mã SP</label>
			<form:input path="proid" placeholder="Nhập mã  SP" type="text"/>
			<form:errors path="proid" style="color: red;"/>
		</div>

		<div class="ip">
			<label>Tên SP</label>
			<form:input path="proname" placeholder="Nhập tên sp" type="text"/>
			 <form:errors path="proname" style="color: red;"/> 
			
		</div>
		 <div class="ip">
			<label>Gia</label>
			<form:input path="price"  placeholder="Nhập gia SP" type="number"/>
			<form:errors path="price" style="color: red;"/>
		</div>  
		<div class="ip">
			<label>Hinh Anh SP</label>
			<form:input path="image" placeholder="Nhập tên hình ảnh" type="text" />
			<form:errors path="image" style="color: red;" />
		</div>
		<div class="ip">
			<label>Trang Thai SP</label>
			<form:input path="isValid" placeholder="Trang Thai SP" type="text" />
			 <form:errors path="isValid" style="color: red;"/> 
		</div>
	
		<div style="margin-left: 170px; margin-top: 10px;">
		<button>Thêm</button>
		<button><a href="sp.htm" style="text-decoration: none;">Thoát</a></button>
		</div>
	</form:form>
	
</body>
</html>