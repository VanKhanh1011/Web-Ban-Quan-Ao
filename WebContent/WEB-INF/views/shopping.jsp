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
<link href="<c:url value="/resources/theme/css/reset.css" />" rel="stylesheet">

<link href="<c:url value="/resources/theme/css/owl.carousel.min.css" />" rel="stylesheet">
<link href="<c:url value="/resources/theme/css/owl.theme.default.min.css" />" rel="stylesheet">
<link href='resources/theme/font-awesome/css/font-awesome.css'
	rel='stylesheet' type='text/css'>
     
</head>
<body>
<c:forEach var="p" items="${listGioHang}">
					<tr>
						<td data-th="Product">
							<div class="row">
								<div class="col-sm-2 hidden-xs">
									<img
										src="resources/theme/img/${p.image}" alt="hinh anh"
										alt="Sản phẩm 1" class="img-responsive" width="100">
								</div>
								<div class="col-sm-10">
									<h4 class="nomargin">${ p.tenSanPham }</h4>
									<!-- <p>Mô tả của sản phẩm 1</p> -->
								</div>
							</div>
						</td>
						<td data-th="Price">${ p.giaSanPham }</td>
						<td data-th="Quantity"><input
							class="form-control text-center" value="${ p.soLuong }" type="number">
						</td>
						<td data-th="Subtotal" class="text-center">${ p.giaSanPham * p.soLuong }</td>
						<td class="actions" data-th="">
							<button class="btn btn-danger btn-sm"><a href="deletecart.htm?idSanPham=${ p.idSanPham }"/>
								<i class="fa fa-trash-o"></i>
							</button>
						</td>
					
						</tr>
					</c:forEach>
						<td><strong>Tổng tiền: ${tongTien} đ</strong></td>
					<button><a href="Home.htm"/>Quay Về Trang Chủ</button>
</body>
</html>