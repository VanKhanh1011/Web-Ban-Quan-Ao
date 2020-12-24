<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Cap Nhat San Pham</title>
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
	<form:form action="${proid}.htm" modelAttribute="product" method="POST">
		<div class="ip">
			<label>Ma SP</label>
			<form:input path="proid"/>
		</div>
		<div class="ip">
			<label>Ten SP</label>
			<form:input path="proname"/>
		</div>
		<div class="ip">
			<label>Gia SP</label>
			<form:input path="price"/>
		</div>
		<div class="ip">
			<label>Hinh Anh</label>
			<form:input path="image"/>
		</div>
		<div class="ip">
			<label>Trang Thai</label>
			<form:input path="isValid"/>
		</div>
		<div style="margin-left: 170px; margin-top: 10px;">
			<button type="submit" class="btn btn-default">Cập nhật</button>
			
			<button type="reset" class="btn btn-defaut">Nhập lại</button>
		
			<button type="back" class="btn btn-defaut">Thoát</button>
		</div>
	</form:form>
</body>
</html>