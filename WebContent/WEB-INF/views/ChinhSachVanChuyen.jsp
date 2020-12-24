<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="<c:url value="/resources/theme/css/ChinhSachQuyDinh.css" />" rel="stylesheet">
<link href="<c:url value="/resources/theme/css/reset.css" />" rel="stylesheet">
</head>
<body>
<%@include file="Header.jsp" %>
 <div class="divide">
       
 <div class="list">
                    <h3>Danh Mục Trang</h3>
                    <ul>
                      <li><a href="ChinhSachQuyDinh.htm">Chính Sách Qui Định</a></li>
                      <li><a href="ChinhSachDoiTra.htm">Chính Sách Đổi Trả</a></li>
                      <li><a href="ChinhSachBaoMat.htm">Chính Sách Bảo Mật</a></li>
                       <li><a href="ChinhSachVanChuyen.htm">Chính Sách Vận Chuyển</a></li> 
                      <li><a href="ChinhSachBaoHanh.htm">Chính Sách Bảo Hành</a></li>
                    </ul>
                  </div>
                  <div class="csqd">
                  <h1>Chính sách vận chuyển</h1>
                  <h3>Toàn bộ đơn hàng được áp dụng vận chuyển qua bên đối tác thứ 3, đảm bảo các quyền lợi và yêu cầu của khách hàng: </h3>
                  <p>- Đơn hàng nội thành HCM : dự kiến 1-2 ngày sẽ nhận được kể từ ngày chốt đơn ( do dịch vụ GHTK vận chuyển)

 - Đơn hàng nội thành HN : thường sẽ được giao trong ngày bằng dịch vụ ship ngoài, ngoại thành HN dự kiến giao 1-2 ngày kể từ ngày chốt đơn ( do dịch vụ GHTK vận chuyển )

 - Đơn hàng tỉnh : dự kiến 3-4 ngày sẽ nhận được kể từ ngày chốt đơn ( dịch vụ GHTK vận chuyển )

Khách hàng sẽ được kiểm tra sản phẩm thuộc đơn hàng của mình trước khi thanh toán cho bên vận chuyển. 


*Đặc biệt: Chính sách freeship

Khách hàng sẽ không mất phí vận chuyển đơn hàng khi đạt một trong hai điều kiện sau: 

. Khách ở nội thành HCM, HN mua hàng với hóa đơn trên 200k

. Khách ở ngoại thành và mua hàng trên 500k , thanh toán bằng hình thức chuyển khoản trước



</p>
                 
      </div>
      </div>
<%@include file="Last.jsp" %>
</body>
</html>