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
                  <h1>Thanh toán & đổi trả hàng</h1>
                  <h3>1.Chính sách thanh toán</h3>
                  <p>-  Routine áp dụng hình thức thanh toán COD cho các hoá đơn mua hàng online, khách hàng trả tiền mặt khi nhận được hàng.</p>
                  <h3>2.Chính sách đổi hàng </h3>
                  <p>- Hàng mua online được đổi trong vòng 15 ngày (tính từ ngày in hoá đơn) với điều kiện sản phẩm trong tình trạng nguyên vẹn, còn nguyên tag (chưa cắt) và hóa đơn.

- Đối với mỗi hóa đơn, khách hàng được đổi hàng duy nhất 01 lần.

- Routine không hỗ trợ đổi các sản phẩm được khuyến mãi, giảm giá.

- Routine không hỗ trợ đổi các sản phẩm phụ kiện đã qua sử dụng và đồ lót.

- Xin vui lòng liên hệ hotline 0399999365 để được hướng dẫn chi tiết.

Điều kiện đổi hàng: 

- Sản phẩm chưa qua sử dụng, không chấp nhận bất kì mùi kì lạ. 

- Còn nguyên tem-mác và hoá đơn mua hàng.

- Thời gian đổi được tính theo 15 ngày kể từ ngày khách nhận hàng.</p>
                  <h3>3.Chính sách trả hàng</h3>
                 <p> Các trường hợp sau sẽ được áp dụng trả hàng hợp lệ: 

- Khi sản phẩm nhận được bị lỗi ( rách, bị phai màu quá nhiều, …)

- Khi sản phẩm được vận chuyển quá trễ so với dự kiến hơn 1 tuần

- Khi sản phẩm nhận được không đúng với sản phẩm đặt hàng ( sai mẫu. sai màu, size ) – Trường hợp này , ROUTINE có thể thu hồi và đổi sản phẩm đúng cho khách hàng freeship cả 2 chiều .</p>
                 <h3>4.Chính sách hoàn tiền</h3>
                 <p>ÁP DỤNG  với các trường hợp trả hàng. Khi khách hàng đã thanh toán chuyển khoản trước đõ hoặc hoàn thành thanh toán COD và sau khi kiểm tra hàng bị lỗi (đảm bảo hàng còn nguyên tam tag và chưa qua sử dụng) </p>
                  </div>
      </div>
<%@include file="Last.jsp" %>
</body>
</html>