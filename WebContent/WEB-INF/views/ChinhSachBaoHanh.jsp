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
                  <h1>Chính sách bảo hành</h1>
                  <h3>* Để đảm bảo về chất lượng sản phẩm cũng như sự yên tâm cho khách hàng khi sử dụng, chính sách bảo hành được áp dụng cho một số dòng sản phẩm đặc biệt:  </h3>
                  <p>Các sản phẩm phụ kiện ba lô , ví, thắt lưng ,giày dép sẽ được bảo hàng trong vòng 6 tháng ( keo, đường chỉ, da bong tróc do lỗi sản xuất ngay từ ban đầu )

Sản phẩm quần áo nếu khách hàng nhận được, nhưng bị lỗi tưa rách vải , phai màu ( không có sự can thiệp của chất tẩy ) sẽ được ROUTINE kiểm tra và đổi/hoàn trả cho khách hàng. 

Sản phẩm bị lỗi do quá trình vận chuyển, Routine sẽ thu hồi và đổi hàng mới cho khách.
</p>
             <h3>* Để được thực hiện bảo hành, yêu cầu đối với sản phầm: </h3>    
             <p>-Sản phẩm còn mới , chưa sử dụng

- Sản phẩm còn nguyên tem tag và hóa đơn

- Sản phẩm phải hoàn gửi lại cho Routine để nhận bảo hàng trong vòng 15 ngày kể từ ngày nhận feedback. </p>
      </div>
      </div>
<%@include file="Last.jsp" %>
</body>
</html>