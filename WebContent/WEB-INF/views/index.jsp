 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="<c:url value="/resources/theme/css/style.css" />" rel="stylesheet">
<link href="<c:url value="/resources/theme/css/reset.css" />" rel="stylesheet">

<link href="<c:url value="/resources/theme/css/owl.carousel.min.css" />" rel="stylesheet">
<link href="<c:url value="/resources/theme/css/owl.theme.default.min.css" />" rel="stylesheet">
<link href='resources/theme/font-awesome/css/font-awesome.css'
	rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"><script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="${pageContext.servletContext.contextPath}/resources/theme/js/cufon-yui.js"></script>
    <script src="${pageContext.servletContext.contextPath}/resources/theme/js/arial.js"></script>
    <script src="${pageContext.servletContext.contextPath}/resources/theme/js/cuf_run.js"></script>
	<script src="${pageContext.servletContext.contextPath}/resources/theme/js/jquery.js"></script>
</head>
<body>
 <div class="slogan ">
       <h3>Good Mood , Good Day</h3>
    </div>
    <div class="containers">
            <div class="logo">
                    <ul>
                                    <li> <a href="https://www.facebook.com/" ><i class="fa fa-facebook"></i></a></li> 
                                    <li> <a href="https://www.instagram.com/" ><i class="fa fa-instagram"></i></a></li>
                                    <li><a href="form.htm"><i class="fa fa-envelope"></i></a></li> 
                        </ul>
            </div>
            <div class="mid">
                <h1><a href="Home.htm"><img src="resources/theme/img/logoroutine.png"></a></h1>
            </div>
            <div class="navbar">
                <ul>
                        <li class="fa-1"> <a href="DangNhap.htm" > <i class="fa fa-user"></i> </a>
                            <ul class="sub-1">
                                <li class="child-1"><s:message code="menu.account"/></li>
                            </ul>
                        </li>
                            <li class="fa-1"> 
                             <div class="searchh"> 
        <div class="row"> 
         <div class="col-md-6"> 
          <div class="search-box"> 
           <form class="search-form" action="Home.htm"> <input class="form-control" placeholder="<s:message code="menu.ao"/>,<s:message code="menu.quan"/>" type="text"> 
            <button class="btn btn-link search-btn"> <i class="glyphicon glyphicon-search"></i> 
            </button> 
           </form> 
          </div> 
         </div> 
        </div>
       </div>
                            </li> 
                            <li class="fa-1"> <a href="shopping.htm?id=AO&name=Áo Khoác Nam Scuba Bomber AK11710
&gia=590000&image=ao.jpg" > <i class="fa fa-cart-plus"></i> </a>
                                <ul class="sub-1"><li class="child-1"><s:message code="menu.cart"/></li></ul>
                            </li> 
                </ul>
                <!-- <input type="text" placeholder="Search"> 
                            <a href="" class="login"><p>Login</p></a>
                            <a href="" class="sign">Sign Up</a> -->
            </div>
        </div>
        <div class="intro">
                <ul>
                        <li> <a href="Home.htm" ><s:message code="menu.home"/></a></li>
                            <li> <a href="GioiThieu.htm" > <s:message code="menu.intro"/> </a></li> 
                            <li> <a href="/" > <s:message code="menu.sp"/> <i class="fa fa-angle-down"></i></a>
                                <ul class="sub-2">
                                         <li> <a href="WinterCollection.htm" ><s:message code="menu.winter"/>  </a></li> 
                                        <li> <a href="AoNam.htm" > <s:message code="menu.ao"/>  </a>
                                        </li> 
                                        <li> <a href="QuanNam.htm" ><s:message code="menu.quan"/></a>
                                        </li> 
                                        <li> <a href="GiayDepNam.htm" ><s:message code="menu.giaydep"/></a></li> 
                                        <li> <a href="SuitNam.htm" ><s:message code="menu.suit"/></a></li> 
                                        <li> <a href="PhuKien.htm" ><s:message code="menu.phukien"/></a>
                                        </li> 
                                </ul>
                            </li> 
                            <li> <a href="BoSuuTapMoi.htm" > <s:message code="menu.bstm"/> <i class="fa fa-angle-down"></i></a>
                                <ul class="sub-2">
                                        <li> <a href="Summer19.htm" > <s:message code="menu.mh"/> </a></li> 
                                        <li> <a href="TheSimpleLife.htm" > <s:message code="menu.csgd"/>  </a></li> 
                                        <li> <a href="FallWinter.htm" > <s:message code="menu.td"/>  </a></li> 
                                        <li> <a href="TheNewBeginningTogether.htm" > <s:message code="menu.mc"/> </a></li> 
                                        <li> <a href="AutumnCollection2019.htm" > <s:message code="menu.bstmt"/> </a></li> 
                                </ul>
                            </li>
                            <li> <a href="TinTuc.htm" > Tin Tức<i class="fa fa-angle-down"></i></a>
                                <ul class="sub-2">
                                        <li> <a href="KhuyenMai.htm" ><s:message code="menu.km"/> </a></li> 
                                        <li> <a href="XuHuong.htm" ><s:message code="menu.xh"/> </a></li> 
                                       
                                </ul>
                            </li> 
                            <li> <a href="HeThongCuaHang.htm" ><s:message code="menu.htch"/> </a></li> 
                </ul>
        </div>
        <div class="slideshow-container">
            
            <div class="mySlides fade">
                <img src="resources/theme/img/routine1.png" style="width:100%">            
            </div>
    
            <div class="mySlides fade">
                <img src="resources/theme/img/routine2.png" style="width:100%">              
            </div>
    
            <div class="mySlides fade">
                <img src="resources/theme/img/routine3.png" style="width:100%">  
             
            </div>
            <div class="mySlides fade">
                <img src="resources/theme/img/routine4.png" style="width:100%">
              </div>
          </div>
          <br>
    
          <div style="text-align:center">
            <span class="dot" onclick="currentSlide(0)"></span> 
            <span class="dot" onclick="currentSlide(1)"></span> 
            <span class="dot" onclick="currentSlide(2)"></span> 
            <span class="dot" onclick="currentSlide(3)"></span> 
          </div>  
          <div class="product">
              <h2><s:message code="menu.spm"/> </h2>
          </div>
          
          <div class="owl-carousel slider">
            <div class="sale1-flash">
               <img src="resources/theme/img/routine6.jpg" alt="hinh anh">
               <div class="but"> <a href="AoNam.htm">Áo Sơ Mi Nam Tay Dài Regular - SM101217</a>
                <h3>399 000đ</h3></div>
               
            </div>
            <div class="  sale2-flash  sale1-flash">
                    <img src="resources/theme/img/routine7.jpg" alt="hinh anh">
                    <div class="but">
                        <a href="/">
                            Quần Vải Nam Form Slim Cropped - QV12503</a>
                        <h3>445 000đ</h3>
                    </div>
            </div>
            <div class=" sale3-flash sale1-flash">
                    <img src="resources/theme/img/routine8.jpg" alt="hinh anh">
                    <div class="but"> <a href="AoNam.htm">
                        Áo Thun Nam Tay Ngắn Cotton Modal - AT201329
                    </a>
                        <h3>240 000đ</h3></div>
            </div>
            <div class=" sale4-flash sale1-flash">
                    <img src="resources/theme/img/routine9.jpg" alt="hinh anh">
                    <div class="but"> <a href="AoNam.htm">
                        Áo Sơ Mi Nam Tay Dài Regular - SM120800
                    </a>
                        <h3>399 000đ</h3></div>
            </div>
            <div class=" sale1-flash">
                <img src="resources/theme/img/routine10.jpg" alt="hinh anh">
                <div class="but"> <a href="AoNam.htm">		
                    			Áo Thun Nam Tay Ngắn Regular In Hình - AT201328</a>
                    <h3>240 000đ</h3></div>
                
             </div>
             <div class=" sale1-flash">
                <img src="resources/theme/img/routine11.jpg" alt="hinh anh">
                <div class="but"> <a href="AoNam.htm">
					Áo Thun Nam Tay Ngắn Polo Form Slim - AT20120
				</a>
                    <h3>350 000đ</h3></div>
                
             </div>
             <div class=" sale1-flash">
                <img src="resources/theme/img/routine12.jpg" alt="hinh anh">
                <div class="but"> <a href="AoNam.htm">
					Áo Khoác Nam 2 Mặt - AK106610
				</a>
                    <h3>450 000đ</h3></div>
                
             </div>
             <div class=" sale1-flash">
                <img src="resources/theme/img/routine13.jpg" alt="hinh anh">
                <div class="but">
                    <a href="AoNam.htm">Áo Sơ Mi Nam Tay Dài Fitted 1 Túi Ngực - SM101216</a>
                    <h3>399 000đ</h3>
                </div>
                
             </div>
             <div class=" sale1-flash">
                <img src="resources/theme/img/routine5.jpg" alt="hinh anh">
                <div class="but"> <a href="AoNam.htm">Áo Khoác Nam Bomber da lộn-AK107100</a>
                    <h3>650 000đ</h3></div>
                
             </div>
             <div class="sale1-flash">
                <img src="resources/theme/img/routine15.jpg" alt="hinh anh">
                <div class="but"> <a href="AoNam.htm">Áo Thun Nam Tay Dài Sweatshirt Regular - AT108307</a>
                    <h3>390 000đ</h3></div>
                
             </div>

        </div>
        <div class="product">
                <h2><s:message code="menu.spbc"/> </h2>
            </div>
            <div class="change">
                <div class="change-1">
                        <div class="sale1-change">
                                <img src="resources/theme/img/routine16.jpg" alt="hinh anh">
                                <div class="but"> <a href="AoNam.htm">
                                    Áo Thun Nam Tay Ngắn Basic - AT201319
                                </a>
                                 <h3>180 000đ</h3></div>
                                
                             </div>
                             <div class="  sale1-change">
                                     <img src="resources/theme/img/routine17.jpg" alt="hinh anh">
                                     <div class="but">
                                         <a href="AoNam.htm">
                                            
					Áo Thun Nam Tay Ngắn Regular In Hình - AT20132
				</a>
                                         <h3>250 000đ</h3>
                                     </div>
                             </div>
                             <div class=" sale1-change">
                                     <img src="resources/theme/img/routine18.jpg" alt="hinh anh">
                                     <div class="but"> <a href="AoNam.htm">
                                        
					Áo Thun Nam Tay Ngắn dáng loose - AT2013
				
                                     </a>
                                         <h3>280 000đ</h3></div>
                             </div>
                             <div class=" sale1-change">
                                     <img src="resources/theme/img/routine19.jpg" alt="hinh anh">
                                     <div class="but"> <a href="AoNam.htm">
                                        Áo Thun Nam Tay Ngắn Form Oversize - AT201325
                                     </a>
                                         <h3>250 000đ</h3></div>
                             </div>
                             <div class=" sale1-change">
                                 <img src="resources/theme/img/routine20.jpg" alt="hinh anh">
                                 <div class="but"> <a href="/">		
                                    Túi Nam Đeo Chéo Mini - BL2170</a>
                                     <h3>240 000đ</h3></div>
                                 
                              </div>
                </div>
                    <div class="change-2 change-1">
                            <div class=" sale1-change">
                                    <img src="resources/theme/img/routine21.jpg" alt="hinh anh">
                                    <div class="but"> <a href="/">
                                        
					Thắt Lưng Nam Da Saffiano Khóa Kim - DL2120
				
                                    </a>
                                        <h3>380 000đ</h3></div>
                                    
                                 </div>
                                 <div class=" sale1-change">
                                    <img src="resources/theme/img/routine22.jpg" alt="hinh anh">
                                    <div class="but"> <a href="/">
                                       
					Áo Sơ Mi Nam Tay Ngắn Họa Tiết - SM21880
				
                                    </a>
                                        <h3>350 000đ</h3></div>
                                    
                                 </div>
                                 <div class=" sale1-change">
                                    <img src="resources/theme/img/routine23.jpg" alt="hinh anh">
                                    <div class="but">
                                        <a href="/">
                                            Túi Nam Tote Đeo Vai - BL40100
                                        </a>
                                        <h3>250 000đ</h3>
                                    </div>
                                    
                                 </div>
                                 <div class=" sale1-change">
                                    <img src="resources/theme/img/routine24.jpg" alt="hinh anh">
                                    <div class="but"> <a href="/">
                                        Áo Thun Nam Tay Ngắn Trơn Loose - AT20132
                                    </a>
                                        <h3>190 000đ</h3></div>
                                    
                                 </div>
                                 <div class="sale1-change">
                                    <img src="resources/theme/img/routine25.jpg" alt="hinh anh">
                                    <div class="but"> <a href="/">
                                        Áo Thun Nam Tay Ngắn Vintage Washing - AT20131
                                    </a>
                                        <h3>220 000đ</h3></div>
                                        <div class="over">
                                            
                                        </div>
                                    
                                 </div>
                    </div>
                     
        
                </div>
                <div class="discount">
                    <div class="one">
                            <p><i class="fas fa-envelope-open-text"></i> <s:message code="menu.dk"/> </p>

                    </div>
                    <div class="two">
                        <div class="left">
                        <input type="text" placeholder="Nhập email của bạn">
                        </div>
                        <div class="right">
                           <button><a href="DangKy.htm"><s:message code="menu.dk"/></a></button>
                        </div>
                    </div>
                    <div class="three">
                            <i class="fas fa-phone-alt"></i>Hotline <a href="/"><span style="color:tomato">0359414455</span></a>
                          
                            
                    </div>
                </div>
                <div class="end">
                    <div class="top-end">
                       <div class="one-top">
                        <h4><s:message code="menu.lk"/></h4>
                        <ul>
                            <li><a href="ChinhSachQuyDinh.htm"><s:message code="menu.csqd"/></a></li>
                            <li><a href="ChinhSachDoiTra.htm"><s:message code="menu.csdt"/></a></li>
                            <li><a href="ChinhSachBaoMat.htm"><s:message code="menu.csbm"/></a></li>
                            <li><a href="ChinhSachVanChuyen.htm"><s:message code="menu.csvc"/></a></li>
                            <li><a href="ChinhSachBaoHanh.htm"><s:message code="menu.csbh"/></a></li>
                        </ul>
                       </div>
                       <div class="two-top one-top">
                        <h4><s:message code="menu.ttlh"/></h4>
                        <ul>
                            <li><i class="fa fa-building"></i> Routine VN Co;LTD</li>
                            <li><i class="fa fa-map-marker"></i> D1/6,385,Tăng Nhơn phú A, Quận 9, TP HCM</li>
                            <li><i class="fa fa-phone"></i> 0359414455</li>
                            <li><i class="fi-address-book"></i> MST:0123456789</li>
                            
                        </ul>
                       </div>
                       <div class="three-top">
                           <h4>FANPAGE</h4>
                           <iframe src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Froutinevn%2F&tabs=timeline&width=300&height=200px&small_header=true&adapt_container_width=true&hide_cover=false&show_facepile=true&appId" width="300" height="200px" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true" allow="encrypted-media"></iframe>
                       </div>
                    </div>
                    <div class="bottom-end">
                            <p>Copyright 2019 by <a href="Home.htm">Routine VietNam</a></p>
                    </div>
                </div>
	
	<script type="text/javascript">
        jQuery(document).ready(function($) {
            var $filter = $('.head_nav');
            var $filterSpacer = $('<div />', {
                "class": "vnkings-spacer",
                "height": $filter.outerHeight()
            });
            if ($filter.size())
            {
                $(window).scroll(function ()
                {
                    if (!$filter.hasClass('fix') && $(window).scrollTop() > $filter.offset().top)
                    {
                        $filter.before($filterSpacer);
                        $filter.addClass("fix");
                    }
                    else if ($filter.hasClass('fix')  && $(window).scrollTop() < $filterSpacer.offset().top)
                    {
                        $filter.removeClass("fix");
                        $filterSpacer.remove();
                    }
                });
            }
 
        });
    </script>
<li><a href="Home.htm?language=en"  style="margin: 0 10px;color: green;font-size: 16px">English</a></li>
                <li><a href="Home.htm?language=vi"  style="margin: 0 10px;color: green;font-size: 16px" >Tiếng Việt</a></li>
          <script src="resources/theme/js/jquery-3.3.1.min.js"></script>
            <script src="resources/theme/js/owl.carousel.min.js"></script>
              <script src="resources/theme/js/main.js"></script>
                <script src="resources/theme/js/WebQuanAo.js"></script>
</body>

</html> 