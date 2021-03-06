﻿<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- Begin Head -->

<head>
    <title>汽车展示</title>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta name="description" content="Impel">
    <meta name="keywords" content="">
    <meta name="author" content="hsoft">
    <meta name="MobileOptimized" content="320">
    <!--Srart Style -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Thefrontdesk/css/fonts.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Thefrontdesk/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Thefrontdesk/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Thefrontdesk/css/ion.rangeSlider.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Thefrontdesk/css/ion.rangeSlider.skinFlat.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Thefrontdesk/js/plugin/magnific/magnific-popup.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Thefrontdesk/js/plugin/nice_select/nice-select.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Thefrontdesk/css/style.css">
    <!-- Favicon Link -->
    <link rel="shortcut icon" type="image/png" href="${pageContext.request.contextPath}/Thefrontdesk/images/favicon.png">
</head>

<body>
    <!------ Header Start ------>
    <div class="impl_header_wrapper">
        <div class="impl_logo">
            <a href="${pageContext.request.contextPath}/Thefrontdesk/index.jsp"><img src="${pageContext.request.contextPath}/Thefrontdesk/images/logo.png" alt="Logo" class="img-fluid"></a>
        </div>
        <div class="impl_top_header">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12">
                        <div class="impl_top_info">
                            <ul class="impl_header_social">
                                <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                            </ul>
                            <p class="impl_header_time"><i class="fa fa-clock-o" aria-hidden="true"></i> 工作时间-早上6时至晚上8时 <span>周日关闭</span></p>
                            <ul class="impl_header_icons">
                                <li class="impl_search"><span><i class="fa fa-search" aria-hidden="true"></i></span></li>
                                <li><a href="${pageContext.request.contextPath}/Thefrontdesk/compare.jsp"><i class="fa fa-exchange" aria-hidden="true"></i></a></li>
                                <li class="cart-popup"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i></a>
                                    <!--sopping cart box-->
                                    <div class="cart-box">
                                    </div>
                                </li>
                                <li><a href="#signin" data-toggle="modal"><i class="fa fa-sign-in" aria-hidden="true"></i></a></li>
                            </ul>
                            <div class="impl_search_overlay">
                                <div class="impl_search_area">
                                    <div class="srch_inner">
                                        <form action="#">
                                            <input type="text" placeholder="Search here... ">
                                            <button type="submit"><i class="fa fa-search" aria-hidden="true"></i></button>
                                        </form>
                                        <div class="srch_close_btn">
                                            <span class="srch_close_btn_icon"><i class="fa fa-times" aria-hidden="true"></i></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--sign-in form-->
        <div class="modal" id="signin">
            <div class="impl_signin">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				<span aria-hidden="true">×</span>
			</button>
                <div class="impl_sign_form">
                    <h1>登录</h1>
                   <form action="../cusC/login.do" method="post">
                    <div class="form-group">
                        <input type="text" name="phone" placeholder="电话：" class="form-control">
                        <span class="form_icon">
						<i class="fa fa-envelope" aria-hidden="true"></i>
					</span>
                    </div>
                    <div class="form-group">
                        <input type="password" name="pwd" placeholder="密码：" class="form-control">
                        <span class="form_icon">
					<i class="fa fa-lock" aria-hidden="true"></i>
					</span>
                    </div>
                    <div class="forget_password">
                        <div class="remember_checkbox">
                            <label>让我签到
							<input type="checkbox">
							<span class="checkmark"></span>
						</label>
                        </div>
                        <a href="#">忘记了密码?</a>
                    </div>
                   
                    <input type="submit" value="登录" />
                    <p>没有帐户? <a href="#signup" data-toggle="modal" class="impl_modal">报名</a></p>
                   </form> 
                </div>
                <div class="impl_sign_img">
                    <h2>欢迎大家来推动汽车</h2>
                    <p>一个完美的区域出售和购买汽车</p>
                    <div class="impl_sign_bottom">
                        <h3>不仅仅是一辆车 </h3>
                        <h3>这是别人的梦想</h3>
                    </div>
                </div>
            </div>
        </div>
        <!--sign-up form-->
        <div class="modal" id="signup">
            <div class="impl_signin">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
				<span aria-hidden="true">×</span>
			</button>
                <div class="impl_sign_form">
                    <h1>报名</h1>
                   <form action="../cusC/addCustomer.do">
                    <div class="form-group">
                        <input type="text" name="name" placeholder="姓名：" class="form-control">
                        <span class="form_icon">
						<i class="fa fa-user" aria-hidden="true"></i>
					</span>
                    </div>
                    <div class="form-group">
                        <input type="text" name="phone" placeholder="电话：" class="form-control">
                        <span class="form_icon">
						<i class="fa fa-envelope" aria-hidden="true"></i>
					</span>
                    </div>
                    <div class="form-group">
                        <input type="text" name="idcard" placeholder="身份证号：" class="form-control">
                        <span class="form_icon">
						<i class="fa fa-envelope" aria-hidden="true"></i>
					</span>
                    </div>
                    <div class="form-group">
                        <input type="password" name="pwd" placeholder="密码：" class="form-control">
                        <span class="form_icon">
					<i class="fa fa-lock" aria-hidden="true"></i>
					</span>
                    </div>
                    <div class="form-group">
                        <input type="text" name="address" placeholder="地址" class="form-control">
                        <span class="form_icon">
					<i class="fa fa-lock" aria-hidden="true"></i>
					</span>
                    </div>
                    
                    <input type="submit" value="注册" />
                    <p>已经有账户了? <a href="#signup" data-toggle="modal">登录</a></p>
                   </form> 
                </div>
                <div class="impl_sign_img">
                    <h2>欢迎大家来推动汽车</h2>
                    <p>一个完美的区域出售和购买汽车</p>
                    <div class="impl_sign_bottom">
                        <h3>不仅仅是一辆车 </h3>
                        <h3>这是别人的梦想</h3>
                    </div>
                </div>
            </div>
        </div>
        <!--menu start-->
        <div class="impl_menu_wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12">
                        <button class="impl_menu_btn">
			<i class="fa fa-car" aria-hidden="true"></i>
			<i class="fa fa-bars" aria-hidden="true"></i>
		</button>
                        <div class="impl_menu_inner">
                            <div class="impl_logo_responsive">
                                <a href="${pageContext.request.contextPath}/Thefrontdesk/index.jsp"><img src="images/logo1.png" alt="Logo" class="img-fluid"></a>
                            </div>
                            <a href="${pageContext.request.contextPath}/Thefrontdesk/error.jsp" class="impl_btn"></a>
                            <div class="impl_menu">
                                <nav>
                                    <div class="menu_cross">
                                        <i class="fa fa-times" aria-hidden="true"></i>
                                    </div>
                                    <ul>
                                       <li class="dropdown"><a href="../vehicl/vehicl.do">首页</a>
                                         
                                        </li>
                                        <li><a href="${pageContext.request.contextPath}/Thefrontdesk/about.jsp">公司</a></li>
                                        <li class="dropdown"><a href="javascript:;"  class="active">相关汽车</a>
                                            <ul class="sub-menu">
                                                <li><a href="${pageContext.request.contextPath}/Thefrontdesk/purchase_new.jsp">相关汽车</a></li>
                                                <li><a href="../Frontdesk/Frontdesk1.do">汽车展示</a></li>
                                                <!--<li><a href="purchase_new_single.jsp">新车单</a></li>
                                                <li><a href="purchase_old_single.jsp">旧汽车单</a></li>-->
                                            </ul>
                                        </li>
                                        <li><a href="service.jsp">服务</a></li>
                                        <li class="dropdown"><a href="javascript:;">最新活动</a>
                                            <ul class="sub-menu">
                                                <li><a href="${pageContext.request.contextPath}/Thefrontdesk/blog_right_sidebar.jsp">活动</a></li>
                                                <li><a href="../FrontDesk/qiantai.do">招聘信息</a></li>
                                            </ul>
                                        </li>
                                        <li class="dropdown"><a href="javascript:;">页面</a>
                                            <ul class="sub-menu">
                                                <li><a href="${pageContext.request.contextPath}/Thefrontdesk/sell_step.jsp">销售页面</a></li>
                                                <li><a href="${pageContext.request.contextPath}/Thefrontdesk/compare.jsp">比较页面</a></li>
                                                <li><a href="${pageContext.request.contextPath}/Thefrontdesk/checkout.jsp">预约页面</a></li>
                                                <li><a href="${pageContext.request.contextPath}/Thefrontdesk/error.jsp">404 页面</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="${pageContext.request.contextPath}/Thefrontdesk/contact.jsp">联系我们</a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!------ Breadcrumbs Start ------>
    <div class="impl_bread_wrapper">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <h1>展示</h1>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">首页</a></li>
                        <li class="breadcrumb-item active">展示</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <!------ Purchase new section Start ------>
    <div class="impl_purchase_wrapper impl_old_purchase_wrapper">
        <div class="container">
          
                            <div class="col-lg-14 col-md-14">
                                <div class="row">
                               <c:forEach items="${b}" var="a">
                                    <div class="col-lg-4 col-md-6">
                                        <div class="impl_fea_car_box">
                                            <div class="impl_fea_car_img">
                                                <img src="${pageContext.request.contextPath}/Thefrontdesk/images/featured/fea_car3.jpg" alt="" class="img-fluid impl_frst_car_img" />
                                                <img src="${pageContext.request.contextPath}/Thefrontdesk/images/featured/fea_car1_hover.jpg" alt="" class="img-fluid impl_hover_car_img" />
                                                <span class="impl_img_tag" title="compare"><a href="compare.jsp"><i class="fa fa-exchange" aria-hidden="true"></i></a></span>
                                            </div>
                                            <div class="impl_fea_car_data">
                                                <h2> <a href="${pageContext.request.contextPath}/Thefrontdesk/purchase_old_single.jsp"></a>${a.cname}</h2>
                                                <ul>
                                                    <li><span class="impl_fea_title">长度</span>
                                                        <span class="impl_fea_name">${a.length}</span></li>
                                                    <li><span class="impl_fea_title">宽度</span>
                                                        <span class="impl_fea_name">${a.width}</span></li>
                                                    <li><span class="impl_fea_title">油箱容积</span>
                                                        <span class="impl_fea_name">${a.tankVolume}</span></li>
                                                    <li><span class="impl_fea_title">发动机</span>
                                                        <span class="impl_fea_name">${a.enginea}</span></li>
                                                    <li><span class="impl_fea_title">排量</span>
                                                        <span class="impl_fea_name">${a.displacement}</span></li>
                                                </ul>
                                                <div class="impl_fea_btn">
                                                  <a href="../Frontdesk/Frontdeskid.do?id=${a.cid }"> <button class="impl_btn"><span class="impl_doller">${a.price}</span> <span class="impl_bnw">车辆详情</span></button></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                   </c:forEach>
                                    <!--2-->
                                    <div class="col-lg-4 col-md-6">
                                        <div class="impl_fea_car_box">
                                            <div class="impl_fea_car_img">
                                                <img src="${pageContext.request.contextPath}/Thefrontdesk/images/featured/fea_car6.jpg" alt="" class="img-fluid impl_frst_car_img" />
                                                <img src="${pageContext.request.contextPath}/Thefrontdesk/images/featured/fea_car1_hover.jpg" alt="" class="img-fluid impl_hover_car_img" />
                                                <span class="impl_img_tag" title="compare"><a href="compare.jsp"><i class="fa fa-exchange" aria-hidden="true"></i></a></span>
                                            </div>
                                            <div class="impl_fea_car_data">
                                                <h2> <a href="${pageContext.request.contextPath}/Thefrontdesk/purchase_old_single.jsp">Serpent</a></h2>
                                               <ul>
                                                    <li><span class="impl_fea_title">长度</span>
                                                        <span class="impl_fea_name">30</span></li>
                                                    <li><span class="impl_fea_title">宽度</span>
                                                        <span class="impl_fea_name">5</span></li>
                                                    <li><span class="impl_fea_title">油箱容积</span>
                                                        <span class="impl_fea_name">z</span></li>
                                                    <li><span class="impl_fea_title">发动机</span>
                                                        <span class="impl_fea_name">z</span></li>
                                                    <li><span class="impl_fea_title">排量</span>
                                                        <span class="impl_fea_name">z</span></li>
                                                </ul>
                                                <div class="impl_fea_btn">
                                                    <button class="impl_btn"><span class="impl_doller">$ 72000 </span><span class="impl_bnw">buy now</span></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--3-->
                                    <div class="col-lg-4 col-md-6">
                                        <div class="impl_fea_car_box">
                                            <div class="impl_fea_car_img">
                                                <img src="${pageContext.request.contextPath}/Thefrontdesk/images/featured/fea_car1.jpg" alt="" class="img-fluid impl_frst_car_img" />
                                                <img src="${pageContext.request.contextPath}/Thefrontdesk/images/featured/fea_car1_hover.jpg" alt="" class="img-fluid impl_hover_car_img" />
                                                <span class="impl_img_tag" title="compare"><a href="compare.jsp"><i class="fa fa-exchange" aria-hidden="true"></i></a></span>
                                            </div>
                                            <div class="impl_fea_car_data">
                                                <h2><a href="${pageContext.request.contextPath}/Thefrontdesk/purchase_old_single.jsp">Basilisk</a></h2>
                                                <ul>
                                                    <li><span class="impl_fea_title">长度</span>
                                                        <span class="impl_fea_name">30</span></li>
                                                    <li><span class="impl_fea_title">宽度</span>
                                                        <span class="impl_fea_name">5</span></li>
                                                    <li><span class="impl_fea_title">油箱容积</span>
                                                        <span class="impl_fea_name">z</span></li>
                                                    <li><span class="impl_fea_title">发动机</span>
                                                        <span class="impl_fea_name">z</span></li>
                                                    <li><span class="impl_fea_title">排量</span>
                                                        <span class="impl_fea_name">z</span></li>
                                                </ul>
                                                <div class="impl_fea_btn">
                                                    <button class="impl_btn"><span class="impl_doller">$ 72000 </span><span class="impl_bnw">buy now</span></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--4-->
                                    <div class="col-lg-4 col-md-6">
                                        <div class="impl_fea_car_box">
                                            <div class="impl_fea_car_img">
                                                <img src="${pageContext.request.contextPath}/Thefrontdesk/images/featured/fea_car4.jpg" alt="" class="img-fluid impl_frst_car_img" />
                                                <img src="${pageContext.request.contextPath}/Thefrontdesk/images/featured/fea_car1_hover.jpg" alt="" class="img-fluid impl_hover_car_img" />
                                                <span class="impl_img_tag" title="compare"><a href="compare.jsp"><i class="fa fa-exchange" aria-hidden="true"></i></a></span>
                                            </div>
                                            <div class="impl_fea_car_data">
                                                <h2><a href="${pageContext.request.contextPath}/Thefrontdesk/purchase_old_single.jsp">Mirage</a></h2>
                                              <ul>
                                                    <li><span class="impl_fea_title">长度</span>
                                                        <span class="impl_fea_name">30</span></li>
                                                    <li><span class="impl_fea_title">宽度</span>
                                                        <span class="impl_fea_name">5</span></li>
                                                    <li><span class="impl_fea_title">油箱容积</span>
                                                        <span class="impl_fea_name">z</span></li>
                                                    <li><span class="impl_fea_title">发动机</span>
                                                        <span class="impl_fea_name">z</span></li>
                                                    <li><span class="impl_fea_title">排量</span>
                                                        <span class="impl_fea_name">z</span></li>
                                                </ul>
                                                <div class="impl_fea_btn">
                                                    <button class="impl_btn"><span class="impl_doller">$ 72000 </span><span class="impl_bnw">buy now</span></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <!--5-->
                                    <div class="col-lg-4 col-md-6">
                                        <div class="impl_fea_car_box">
                                            <div class="impl_fea_car_img">
                                                <img src="${pageContext.request.contextPath}/Thefrontdesk/images/featured/fea_car5.jpg" alt="" class="img-fluid impl_frst_car_img" />
                                                <img src="${pageContext.request.contextPath}/Thefrontdesk/images/featured/fea_car1_hover.jpg" alt="" class="img-fluid impl_hover_car_img" />
                                                <span class="impl_img_tag" title="compare"><a href="compare.jsp"><i class="fa fa-exchange" aria-hidden="true"></i></a></span>
                                            </div>
                                            <div class="impl_fea_car_data">
                                                <h2> <a href="${pageContext.request.contextPath}/Thefrontdesk/purchase_old_single.jsp">Realm</a></h2>
                                                <ul>
                                                    <li><span class="impl_fea_title">长度</span>
                                                        <span class="impl_fea_name">30</span></li>
                                                    <li><span class="impl_fea_title">宽度</span>
                                                        <span class="impl_fea_name">5</span></li>
                                                    <li><span class="impl_fea_title">油箱容积</span>
                                                        <span class="impl_fea_name">z</span></li>
                                                    <li><span class="impl_fea_title">发动机</span>
                                                        <span class="impl_fea_name">z</span></li>
                                                    <li><span class="impl_fea_title">排量</span>
                                                        <span class="impl_fea_name">z</span></li>
                                                </ul>
                                                <div class="impl_fea_btn">
                                                    <button class="impl_btn"><span class="impl_doller">$ 72000 </span><span class="impl_bnw">buy now</span></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--6-->
                                    <div class="col-lg-4 col-md-6">
                                        <div class="impl_fea_car_box">
                                            <div class="impl_fea_car_img">
                                                <img src="${pageContext.request.contextPath}/Thefrontdesk/images/featured/fea_car2.jpg" alt="" class="img-fluid impl_frst_car_img" />
                                                <img src="${pageContext.request.contextPath}/Thefrontdesk/images/featured/fea_car1_hover.jpg" alt="" class="img-fluid impl_hover_car_img" />
                                                <span class="impl_img_tag" title="compare"><a href="compare.jsp"><i class="fa fa-exchange" aria-hidden="true"></i></a></span>
                                            </div>
                                            <div class="impl_fea_car_data">
                                                <h2> <a href="${pageContext.request.contextPath}/Thefrontdesk/purchase_old_single.jsp">Empire</a></h2>
                                                <ul>
                                                    <li><span class="impl_fea_title">长度</span>
                                                        <span class="impl_fea_name">30</span></li>
                                                    <li><span class="impl_fea_title">宽度</span>
                                                        <span class="impl_fea_name">5</span></li>
                                                    <li><span class="impl_fea_title">油箱容积</span>
                                                        <span class="impl_fea_name">z</span></li>
                                                    <li><span class="impl_fea_title">发动机</span>
                                                        <span class="impl_fea_name">z</span></li>
                                                    <li><span class="impl_fea_title">排量</span>
                                                        <span class="impl_fea_name">z</span></li>
                                                </ul>
                                                <div class="impl_fea_btn">
                                                    <button class="impl_btn"><span class="impl_doller">$ 72000 </span><span class="impl_bnw">buy now</span></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--7-->
                                   
                                    <!--8-->
                                
                                    <!--9-->
                                  
                                    <!--pagination start-->
                                    <div class="col-lg-12 col-md-12">
                                        <div class="impl_pagination_wrapper">
                                            <nav aria-label="Page navigation example">
                                                <ul class="pagination">
                                                    <li class="page-item"><a class="page-link" href="#"><i class="fa fa-angle-left" aria-hidden="true"></i></a></li>
                                                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                                                    <li class="page-item"><a class="page-link active" href="#">2</a></li>
                                                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                                                    <li class="page-item"><a class="page-link" href="#"><i class="fa fa-angle-right" aria-hidden="true"></i></a></li>
                                                </ul>
                                            </nav>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!------ Footer Section Start ------>
    <div class="impl_footer_wrapper">
        <div class="impl_social_wrapper">
            <ul>
                <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-youtube-play" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-rss" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
            </ul>
        </div>
        <div class="impl_foo_wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="impl_foo_box footer_abt_text">
                            <a href="#"><img src="images/logo.png" alt=""></a>
                            <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable by injected humour.</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="impl_foo_box">
                            <h1 class="impl_foo_title">Basic Information</h1>
                            <ul>
                                <li><a href="#"><i class="fa fa-angle-right" aria-hidden="true"></i> Changing Oil</a></li>
                                <li><a href="#"><i class="fa fa-angle-right" aria-hidden="true"></i> Saving Fuel</a></li>
                                <li><a href="#"><i class="fa fa-angle-right" aria-hidden="true"></i> Antilock Brakes</a></li>
                                <li><a href="#"><i class="fa fa-angle-right" aria-hidden="true"></i> Battery</a></li>
                                <li><a href="#"><i class="fa fa-angle-right" aria-hidden="true"></i> Tips On Long Car Trips</a></li>
                                <li><a href="#"><i class="fa fa-angle-right" aria-hidden="true"></i> Air Pressure</a></li>
                                <li><a href="#"><i class="fa fa-angle-right" aria-hidden="true"></i> Tire Replacement</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="impl_foo_box">
                            <h1 class="impl_foo_title">contact us</h1>
                            <ul>
                                <li>
                                    <div class="impl_foo_icon"><i class="fa fa-phone" aria-hidden="true"></i></div>
                                    <div class="impl_foo_text">
                                        <p>+1-202-555-0137</p>
                                        <p>+1-202-555-0137</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="impl_foo_icon"><i class="fa fa-map-marker" aria-hidden="true"></i></div>
                                    <div class="impl_foo_text">
                                        <p>514 S. Magnolia St. <br> Orlando , US</p>
                                    </div>
                                </li>
                                <li>
                                    <div class="impl_foo_icon"><i class="fa fa-envelope" aria-hidden="true"></i></div>
                                    <div class="impl_foo_text">
                                        <a href="#">dummymail@mail.com</a>
                                        <a href="#">yourmail@mail.com</a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="impl_foo_box">
                            <h1 class="impl_foo_title">Subscribe </h1>
                            <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form.</p>
                            <div class="impl_footer_subs">
                                <input type="text" class="form-control" placeholder="Enter Your Email">
                                <button class="foo_subs_btn"><i class="fa fa-long-arrow-right" aria-hidden="true"></i></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!----Bottom Footer Start---->
    <div class="impl_btm_footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <p class="impl_copyright">Copyright &copy; 2018 Impel Car Dealers. All Rights <a href="http://www.17sucai.com/" title="17sucai">Reserved</a></p>
                </div>
            </div>
        </div>
    </div>
	<!---- Go To Top---->
	<span class="gotop"><img src="images/goto.png" alt=""></span>
    <!--Main js file Style-->
    <script type="text/javascript" src="${pageContext.request.contextPath}/Thefrontdesk/js/jquery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/Thefrontdesk/js/popper.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/Thefrontdesk/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/Thefrontdesk/js/ion.rangeSlider.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/Thefrontdesk/js/plugin/magnific/jquery.magnific-popup.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/Thefrontdesk/js/plugin/nice_select/jquery.nice-select.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/Thefrontdesk/js/custom.js"></script>
    <!--Main js file End-->
</body>

</html>
