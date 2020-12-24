<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="<c:url value="/resources/theme/css/WinterCollection.css" />" rel="stylesheet">
<link href="<c:url value="/resources/theme/css/reset.css" />" rel="stylesheet">

<link href="<c:url value="/resources/theme/css/owl.carousel.min.css" />" rel="stylesheet">
<link href="<c:url value="/resources/theme/css/owl.theme.default.min.css" />" rel="stylesheet">
<link href='resources/theme/font-awesome/css/font-awesome.css'
	rel='stylesheet' type='text/css'>
     
</head>
<body>
<%@include file="Header.jsp" %>
 <div class="change">
 <c:forEach var="p" items="${pro}" varStatus="status" begin="0">

 
                <div class="change-1">
                        <div class="sale1-change">
                                <img src="resources/theme/img/${p.image}" alt="hinh anh">
                                <div class="but"> <a href="/">
                                    ${p.proname }
                                </a>
                                 <h3> ${p.price }</h3></div>
                                 <a href="shopping.htm?id=${p.proid }&name=${p.proname }&gia=${p.price }&image=${p.image}"> <i class="fa fa-cart-plus"></i></a>
                             </div>
                             
                </div>
                   
                     
        </c:forEach>
                </div>
                
                 
<%@include file="Last.jsp" %>
</body> <script src="resources/theme/js/jquery-3.3.1.min.js"></script>
            <script src="resources/theme/js/owl.carousel.min.js"></script>
              <script src="resources/theme/js/main.js"></script>
                <script src="resources/theme/js/WebQuanAo.js"></script>

</html>