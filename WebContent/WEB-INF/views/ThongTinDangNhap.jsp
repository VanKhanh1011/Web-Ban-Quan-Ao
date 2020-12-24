<%@ page language="java" contentType="text/html; charset=UTF-8"
			pageEncoding="UTF-8"%>
		<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
		<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
		<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
		<!DOCTYPE html>
		<html>
		<head>
		<meta charset="UTF-8">
		<title>THÔNG TIN TÀI KHOẢN</title>
		<base href="${pageContext.servletContext.contextPath}/">
		<style type="text/css">
		h2 {
			margin-top: 50px;
			text-align: center;
		}

		form {
			display: flex;
			flex-direction: column;
			width: 65%;
			margin-left: 200px;
		}

		form label {
			margin: 30px 0px 20px 0;
			font-size: 20px;
		}

		form input {
			background: whitesmoke;
			padding: 15px;
			font-size: 17px;
		}

		.dn {
			width: 25%;
			display: inline-block;
			overflow: hidden;
			border: 1px solid black;
			padding: 15px 20px;
			color: white;
			background: black;
			word-spacing: 3px;
			font-size: 13px;
			transform: perspective(1px) translateZ(0);
			position: relative;
			box-shadow: 2px 6px whitesmoke;
			margin-left: 290px;
			margin-top: 30px;
			text-align: center;
		}

		.dn:hover {
			color: black;
		}

		.dn:hover::before {
			transform: scaleX(1);
		}

		.dn::before {
			content: "";
			position: absolute;
			z-index: -1;
			top: 0;
			left: 0;
			width: 100%;
			height: 100%;
			background: white;
			transform: scaleX(0);
			transform-origin: 0 50%;
			transition: all 0.5s ease-out;
		}

		.text-b {
			margin-top: 30px;
			margin-left: 400px;
			display: flex;
		}
		</style>
		</head>
		<body>
			<h2 style="color: orange;">CHÀO MỪNG ${user.getEmail()} ĐẾN VỚI CHÚNG TÔI</h2>
			<form action="${pageContext.request.contextPath}update1.htm"
					modelAttribute="user" method="POST">

				<label>Ho</label> <input type="text" name="ho"
					placeholder="${user.getHo()}"> 
					<label>Ten</label>
				<input type="text" name="ten" placeholder="${user.getTen()}">
				<label>email</label> <input type="text" name="email"
					placeholder="${user.getEmail()}">
				<div class="form-group">${message}</div>
				<button class="dn">CẬP NHẬT</button>
			</form>
			<p class="text-b">
				QUAY TRỞ LẠI TRANG CHỦ ĐỂ TIẾP TỤC MUA SẮP <a href="home.htm"
					style="color: orange; margin-left: 3px;">TẠI ĐÂY</a>.
			</p>
		</body>
		</html>