<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Thêm tài khoản</title>
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
${message}
	<form:form action="${ email }.htm" modelAttribute="user" method="POST">
		<div class="ip">
			<label>Ho</label>
			<form:input path="ho"/>
		</div>
		<div class="ip">
			<label>Ten</label>
			<form:input path="ten"/>
		</div>
		<div class="ip">
			<label>Email</label>
			<form:input path="email"/>
		</div>
		<div class="ip">
			<label>Mat Khau</label>
			<form:input path="matkhau"/>
		</div>
		<div style="margin-left: 170px; margin-top: 10px;">
			<button type="submit" class="btn btn-default">Cập nhật</button>
			
			<button type="reset" class="btn btn-defaut">Nhập lại</button>
		
			<button type="back" class="btn btn-defaut">Thoát</button>
		</div>
	</form:form>
</body>
</html>