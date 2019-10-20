<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- Begin Head -->
<style>
	.ulli li{
		float: left;
		list-style: none;
		transform: translate(0px,0px);
	}
</style>
<head>
    <title>4S店官网</title>
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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Thefrontdesk/js/plugin/slick/slick.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Thefrontdesk/js/plugin/slick/slick-theme.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Thefrontdesk/js/plugin/nice_select/nice-select.css">
    <!----Revolution slider---->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Thefrontdesk/js/plugin/revolution/css/settings.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Thefrontdesk/css/style.css">
    <!-- Favicon Link -->
    <link rel="shortcut icon" type="image/png" href="images/favicon.png">
</head>

<body>
    <!------ Preloader Start ------>
    <div id="preloader">
        <div id="status">
            <img src="${pageContext.request.contextPath}/Thefrontdesk/images/logo.png" alt="" />
            <div class="loader">
                Loading...
                <div class="ball"></div>
                <div class="ball"></div>
                <div class="ball"></div>
            </div>
        </div>
    </div>
    <!------ Header Start ------>
    <div class="impl_header_wrapper">
        <div class="impl_logo">
            <a href="index.jsp"><img src="${pageContext.request.contextPath}/Thefrontdesk/images/logo.png" alt="Logo" class="img-fluid"></a>
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
                            <p class="impl_header_time"><i class="fa fa-clock-o" aria-hidden="true"></i>工作时间-早上6时至晚上8时<span>周日关闭</span></p>
                            <ul class="impl_header_icons">
                                <li class="impl_search"><span><i class="fa fa-search" aria-hidden="true"></i></span></li>
                                <li><a href="compare.jsp"><i class="fa fa-exchange" aria-hidden="true"></i></a></li>
                                <li class="cart-popup"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i></a>
                                    <!--shopping cart box-->
                                    
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
                                <a href="index.jsp"><img src="${pageContext.request.contextPath}/Thefrontdesk/images/logo1.png" alt="Logo" class="img-fluid"></a>
                            </div>
                            <a href="${pageContext.request.contextPath}/Thefrontdesk/error.jsp" class="impl_btn"></a>
                            <div class="impl_menu">
                                <nav>
                                    <div class="menu_cross">
                                        <i class="fa fa-times" aria-hidden="true"></i>
                                    </div>
                                    <ul>
                                        <li class="dropdown"><a href="../vehicl/vehicl.do" >首页</a>
                       
                                        </li>
                                        <li><a href="${pageContext.request.contextPath}/Thefrontdesk/about.jsp">公司</a></li>
                                        <li class="dropdown"><a href="${pageContext.request.contextPath}/Thefrontdesk/javascript:;">相关汽车</a>
                                            <ul class="sub-menu">
                                                <li><a href="${pageContext.request.contextPath}/Thefrontdesk/purchase_new.jsp">相关汽车</a></li>
                                                <li><a href="../Frontdesk/Frontdesk1.do">汽车展示</a></li>
                                              <!--  <li><a href="purchase_new_single.jsp">新车单</a></li>-->
                                              <!--  <li><a href="purchase_old_single.jsp">旧汽车单</a></li>-->
                                            </ul>
                                        </li>
                                        <li><a href="${pageContext.request.contextPath}/Thefrontdesk/service.jsp">服务</a></li>
                                        <li class="dropdown"><a href="javascript:;">最新活动</a>
                                            <ul class="sub-menu">
                                                <!--<li><a href="blog_left_sidebar.jsp">博客左侧边栏</a></li>-->
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
    <!------ Slider Start ------>
    <div class="impl_slider_wrapper">
        <div id="rev_slider_28_1_wrapper" class="rev_slider_wrapper fullscreen-container" data-alias="parallax-zoom-slices" data-source="gallery" style="background:#000000;padding:0px;">
            <div id="rev_slider_28_1" class="rev_slider fullscreenbanner" style="display:none;" data-version="5.4.1">
                <ul>
                    <li data-index="rs-66" data-transition="slotzoom-horizontal" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off" data-easein="default" data-easeout="default" data-masterspeed="1000" data-thumb="" data-rotate="0" data-saveperformance="off" data-title="Slide" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
                        <div class="tp-caption tp-shape tp-shapewrapper " id="slide-2800-layer-7" data-x="['left','left','left','left']" data-hoffset="['0','0','0','0']" data-y="['middle','middle','middle','middle']" data-voffset="['0','0','0','0']" data-width="full" data-height="full" data-whitespace="nowrap" data-type="shape" data-basealign="slide" data-responsive_offset="off" data-responsive="off" data-frames='[{"from":"opacity:0;","speed":500,"to":"o:1;","delay":0,"ease":"Power4.easeOut"},{"speed":5000,"to":"opacity:0;","ease":"Power4.easeInOut"}]' data-textAlign="['left','left','left','left']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 5;background-color:rgba(0, 0, 0, 0.40);border-color:rgba(0, 0, 0, 0);border-width:0px;"> </div>
                        <!-- MAIN IMAGE -->
                        <img src="${pageContext.request.contextPath}/Thefrontdesk/images/1.jpeg" alt="" title="homedefault-bg1" width="1920" height="1033" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" class="rev-slidebg" data-no-retina>
                        <!-- LAYERS -->
                        <div id="rrzt_6" class="rev_row_zone rev_row_zone_top" style="z-index: 8;">

                            <!-- LAYER NR. 1 -->
                            <div class="tp-caption  " id="slide-66-layer-4" data-x="['left','left','left','left']" data-hoffset="['100','100','100','100']" data-y="['top','top','top','top']" data-voffset="['100','100','100','100']" data-width="none" data-height="none" data-whitespace="nowrap" data-type="row" data-columnbreak="3" data-responsive_offset="on" data-frames='[{"delay":30,"speed":300,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]' data-margintop="[0,0,0,0]" data-marginright="[0,0,0,0]" data-marginbottom="[0,0,0,0]" data-marginleft="[0,0,0,0]" data-textAlign="['inherit','inherit','inherit','inherit']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 8; white-space: nowrap; font-size: 20px; line-height: 22px; font-weight: 400; color: rgba(255, 255, 255, 1.00);">
                                <!-- LAYER NR. 2 -->
                                <div class="tp-caption  " id="slide-6-layer-5" data-x="['left','left','left','left']" data-hoffset="['100','100','100','100']" data-y="['top','top','top','top']" data-voffset="['100','100','100','100']" data-width="none" data-height="none" data-whitespace="nowrap" data-type="column" data-responsive_offset="on" data-frames='[{"delay":"+-20","speed":300,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]' data-columnwidth="50%" data-margintop="[0,0,0,0]" data-marginright="[0,0,0,0]" data-marginbottom="[0,0,0,0]" data-marginleft="[0,0,0,0]" data-textAlign="['inherit','inherit','inherit','inherit']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 9; width: 100%;"> </div>

                                <!-- LAYER NR. 3 -->
                                <div class="tp-caption  " id="slide-6-layer-6" data-x="['left','left','left','left']" data-hoffset="['100','100','100','100']" data-y="['top','top','top','top']" data-voffset="['100','100','100','100']" data-width="none" data-height="none" data-whitespace="nowrap" data-type="column" data-responsive_offset="on" data-frames='[{"delay":"+-20","speed":300,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]' data-columnwidth="50%" data-margintop="[0,0,0,0]" data-marginright="[0,0,0,0]" data-marginbottom="[0,0,0,0]" data-marginleft="[0,0,0,0]" data-textAlign="['inherit','inherit','inherit','inherit']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 10; width: 100%;"> </div>
                            </div>
                        </div>
                        <!-- LAYER NR. 4 -->
                        <!-- <div class="tp-caption   tp-resizeme  text-slider" id="slide-6-layer-1" data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" data-y="['middle','middle','middle','middle']" data-voffset="['-80','-80','-70','-80']" data-fontsize="['70','70','40','30']" data-lineheight="['100','100','40','30']" data-width="none" data-height="none" data-whitespace="nowrap" data-type="text" data-responsive_offset="on" data-frames='[{"delay":30,"split":"chars","splitdelay":0.1,"speed":3000,"frame":"0","from":"x:[105%];z:0;rX:45deg;rY:0deg;rZ:90deg;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","to":"o:1;","ease":"Power4.easeInOut"},{"delay":"wait","speed":1500,"frame":"999","to":"y:[175%];","mask":"x:inherit;y:inherit;s:inherit;e:inherit;","ease":"Power2.easeInOut"}]' data-textAlign="['inherit','inherit','inherit','inherit']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 5; white-space: nowrap; font-size: 70px; line-height: 100px; font-weight: 700; color: rgba(255, 255, 255, 1.00);font-family: 'Raleway', sans-serif;text-transform:uppercase;">Accelerate Your Dreams</div> -->

                        <!-- LAYER NR. 5 -->
                       <!-- <div class="tp-caption   tp-resizeme  text-slider" id="slide-6-layer-2" data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" data-y="['middle','middle','middle','middle']" data-voffset="['0','0','-15','-25']" data-fontsize="['24','24','24','20']" data-lineheight="['24','24','24','26']" data-width="['none','none','none','310']" data-height="['none','none','none','54']" data-whitespace="['nowrap','nowrap','nowrap','normal']" data-type="text" data-responsive_offset="on" data-frames='[{"delay":30,"speed":3500,"frame":"0","from":"z:0;rX:0;rY:0;rZ:0;sX:0.8;sY:0.8;skX:0;skY:0;opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":500,"frame":"999","to":"auto:auto;","ease":"nothing"}]' data-textAlign="['inherit','inherit','inherit','center']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 6; white-space: nowrap; font-size: 26px; line-height: 26px; font-weight: 400; color: rgba(255, 255, 255, 1.00);font-family:Roboto;">Buy and sell your car on Impel car dealer</div>  -->

                        <!-- LAYER NR. 6 -->
                        <!-- <a class="tp-caption rev-btn  tp-resizeme" href="#" target="_blank" id="slide-67-layer-7" data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" data-y="['middle','middle','middle','middle']" data-voffset="['80','80','50','40']" data-width="250" data-height="none" data-whitespace="nowrap" data-type="button" data-actions='' data-responsive_offset="on" data-frames='[{"delay":1000,"speed":2000,"frame":"0","from":"sX:0.9;sY:0.9;opacity:0;fb:20px;","to":"o:1;fb:0;","ease":"Power3.easeInOut"},{"delay":"wait","speed":500,"frame":"999","to":"sX:0.9;sY:0.9;opacity:0;fb:20px;","ease":"Power3.easeInOut"},{"frame":"hover","speed":"0","ease":"Linear.easeNone","to":"o:1;rX:0;rY:0;rZ:0;z:0;fb:0;","style":"c:rgba(255,255,255,1);bs:solid;bw:0 0 0 0;"}]' data-textAlign="['center','center','center','center']" data-paddingtop="[0,0,0,0]" data-paddingright="[50,50,50,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[50,50,50,0]" style="cursor:pointer;text-decoration:none;z-index:19;;line-height:40px;"><span class="impl_btn">GET STARTED </span></a> -->
                    </li>
                    <!--slid2-->
                    <li data-index="rs-67" data-transition="fade" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off" data-easein="default" data-easeout="default" data-masterspeed="600" data-thumb="../../assets/images/woman2-100x50.jpg" data-rotate="0" data-saveperformance="off" data-title="Slide" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="" data-slicey_shadow="0px 0px 0px 0px transparent">
                        <!-- MAIN IMAGE -->
                        <img src="${pageContext.request.contextPath}/Thefrontdesk/images/3.jpg" alt="" data-bgposition="center center" data-kenburns="on" data-duration="5000" data-ease="Power2.easeInOut" data-scalestart="100" data-scaleend="150" data-rotatestart="0" data-rotateend="0" data-blurstart="20" data-blurend="0" data-offsetstart="0 0" data-offsetend="0 0" class="rev-slidebg" data-no-retina>
                        <!-- LAYER NR. 2 -->
                        <div class="tp-caption tp-shape tp-shapewrapper tp-slicey  tp-resizeme" id="slide-67-layer-10" data-x="['center','center','center','center']" data-hoffset="['151','228','224','117']" data-y="['middle','middle','middle','middle']" data-voffset="['-212','-159','71','-222']" data-width="['150','150','100','100']" data-height="['200','150','150','150']" data-whitespace="nowrap" data-type="shape" data-slicey_offset="250" data-slicey_blurstart="0" data-slicey_blurend="20" data-responsive_offset="on" data-frames='[{"delay":350,"speed":1000,"frame":"0","from":"sX:1;sY:1;opacity:0;fb:20px;","to":"o:1;fb:0;","ease":"Power3.easeInOut"},{"delay":"+3650","speed":300,"frame":"999","to":"opacity:0;fb:0;","ease":"Power3.easeInOut"}]' data-textAlign="['inherit','inherit','inherit','inherit']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 6;background-color:rgba(0, 0, 0, 0.5);"> </div>

                        <!-- LAYER NR. 3 -->
                        <div class="tp-caption tp-shape tp-shapewrapper tp-slicey  tp-resizeme" id="slide-67-layer-29" data-x="['center','center','center','center']" data-hoffset="['339','-442','104','-159']" data-y="['middle','middle','middle','middle']" data-voffset="['2','165','-172','219']" data-width="['250','250','150','150']" data-height="['150','150','100','100']" data-whitespace="nowrap" data-type="shape" data-slicey_offset="250" data-slicey_blurstart="0" data-slicey_blurend="20" data-responsive_offset="on" data-frames='[{"delay":400,"speed":1000,"frame":"0","from":"sX:1;sY:1;opacity:0;fb:20px;","to":"o:1;fb:0;","ease":"Power3.easeInOut"},{"delay":"+3600","speed":300,"frame":"999","to":"opacity:0;fb:0;","ease":"Power3.easeInOut"}]' data-textAlign="['inherit','inherit','inherit','inherit']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 7;background-color:rgba(0, 0, 0, 0.5);"> </div>

                        <!-- LAYER NR. 4 -->
                        <div class="tp-caption tp-shape tp-shapewrapper tp-slicey  tp-resizeme" id="slide-67-layer-12" data-x="['center','center','center','center']" data-hoffset="['162','216','-239','193']" data-y="['middle','middle','middle','middle']" data-voffset="['195','245','6','146']" data-width="['250','250','100','100']" data-height="150" data-whitespace="nowrap" data-type="shape" data-slicey_offset="250" data-slicey_blurstart="0" data-slicey_blurend="20" data-responsive_offset="on" data-frames='[{"delay":450,"speed":1000,"frame":"0","from":"opacity:0;fb:20px;","to":"o:1;fb:0;","ease":"Power3.easeInOut"},{"delay":"+3550","speed":300,"frame":"999","to":"opacity:0;fb:0;","ease":"Power3.easeInOut"}]' data-textAlign="['inherit','inherit','inherit','inherit']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 8;background-color:rgba(0, 0, 0, 0.5);"> </div>

                        <!-- LAYER NR. 5 -->
                        <div class="tp-caption tp-shape tp-shapewrapper tp-slicey  tp-resizeme" id="slide-67-layer-34" data-x="['center','center','center','center']" data-hoffset="['-186','-119','273','-223']" data-y="['middle','middle','middle','middle']" data-voffset="['269','217','-121','69']" data-width="['300','300','150','150']" data-height="['200','200','150','150']" data-whitespace="nowrap" data-type="shape" data-slicey_offset="250" data-slicey_blurstart="0" data-slicey_blurend="20" data-responsive_offset="on" data-frames='[{"delay":500,"speed":1000,"frame":"0","from":"sX:1;sY:1;opacity:0;fb:20px;","to":"o:1;fb:0;","ease":"Power3.easeInOut"},{"delay":"+3500","speed":300,"frame":"999","to":"opacity:0;fb:0;","ease":"Power3.easeInOut"}]' data-textAlign="['inherit','inherit','inherit','inherit']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 9;background-color:rgba(0, 0, 0, 0.5);"> </div>

                        <!-- LAYER NR. 6 -->
                        <div class="tp-caption tp-shape tp-shapewrapper tp-slicey  tp-resizeme" id="slide-67-layer-11" data-x="['center','center','center','center']" data-hoffset="['-325','292','162','-34']" data-y="['middle','middle','middle','middle']" data-voffset="['3','55','-275','-174']" data-width="150" data-height="['250','150','50','50']" data-whitespace="nowrap" data-type="shape" data-slicey_offset="250" data-slicey_blurstart="0" data-slicey_blurend="20" data-responsive_offset="on" data-frames='[{"delay":550,"speed":1000,"frame":"0","from":"opacity:0;fb:20px;","to":"o:1;fb:0;","ease":"Power3.easeInOut"},{"delay":"+3450","speed":300,"frame":"999","to":"opacity:0;fb:0;","ease":"Power3.easeInOut"}]' data-textAlign="['inherit','inherit','inherit','inherit']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 10;background-color:rgba(0, 0, 0, 0.5);"> </div>

                        <!-- LAYER NR. 7 -->
                        <div class="tp-caption tp-shape tp-shapewrapper tp-slicey  tp-resizeme" id="slide-67-layer-27" data-x="['center','center','center','center']" data-hoffset="['-429','523','-190','-306']" data-y="['middle','middle','middle','middle']" data-voffset="['-327','173','181','480']" data-width="['250','250','150','150']" data-height="['300','300','150','150']" data-whitespace="nowrap" data-type="shape" data-slicey_offset="300" data-slicey_blurstart="0" data-slicey_blurend="20" data-responsive_offset="on" data-frames='[{"delay":320,"speed":1000,"frame":"0","from":"sX:1;sY:1;opacity:0;fb:20px;","to":"o:1;fb:0;","ease":"Power3.easeInOut"},{"delay":"+3680","speed":300,"frame":"999","to":"opacity:0;fb:0;","ease":"Power3.easeInOut"}]' data-textAlign="['inherit','inherit','inherit','inherit']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 11;background-color:rgba(0, 0, 0, 0.5);"> </div>

                        <!-- LAYER NR. 8 -->
                        <div class="tp-caption tp-shape tp-shapewrapper tp-slicey  tp-resizeme" id="slide-67-layer-28" data-x="['center','center','center','center']" data-hoffset="['422','-409','208','225']" data-y="['middle','middle','middle','middle']" data-voffset="['-245','-72','294','-14']" data-width="['300','300','150','150']" data-height="['250','250','100','100']" data-whitespace="nowrap" data-type="shape" data-slicey_offset="300" data-slicey_blurstart="0" data-slicey_blurend="20" data-responsive_offset="on" data-frames='[{"delay":360,"speed":1000,"frame":"0","from":"sX:1;sY:1;opacity:0;fb:20px;","to":"o:1;fb:0;","ease":"Power3.easeInOut"},{"delay":"+3640","speed":300,"frame":"999","to":"opacity:0;fb:0;","ease":"Power3.easeInOut"}]' data-textAlign="['inherit','inherit','inherit','inherit']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 12;background-color:rgba(0, 0, 0, 0.5);"> </div>

                        <!-- LAYER NR. 9 -->
                        <div class="tp-caption tp-shape tp-shapewrapper tp-slicey  tp-resizeme" id="slide-67-layer-30" data-x="['center','center','center','center']" data-hoffset="['549','-445','28','58']" data-y="['middle','middle','middle','middle']" data-voffset="['236','400','316','287']" data-width="['300','300','150','200']" data-height="['250','250','150','50']" data-whitespace="nowrap" data-type="shape" data-slicey_offset="300" data-slicey_blurstart="0" data-slicey_blurend="20" data-responsive_offset="on" data-frames='[{"delay":400,"speed":1000,"frame":"0","from":"sX:1;sY:1;opacity:0;fb:20px;","to":"o:1;fb:0;","ease":"Power3.easeInOut"},{"delay":"+3600","speed":300,"frame":"999","to":"opacity:0;fb:0;","ease":"Power3.easeInOut"}]' data-textAlign="['inherit','inherit','inherit','inherit']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 13;background-color:rgba(0, 0, 0, 0.5);"> </div>

                        <!-- LAYER NR. 10 -->
                        <div class="tp-caption tp-shape tp-shapewrapper tp-slicey  tp-resizeme" id="slide-67-layer-31" data-x="['center','center','center','center']" data-hoffset="['-522','492','-151','262']" data-y="['middle','middle','middle','middle']" data-voffset="['339','-180','330','-141']" data-width="['300','300','150','150']" data-height="['250','250','100','100']" data-whitespace="nowrap" data-type="shape" data-slicey_offset="300" data-slicey_blurstart="0" data-slicey_blurend="20" data-responsive_offset="on" data-frames='[{"delay":440,"speed":1000,"frame":"0","from":"sX:1;sY:1;opacity:0;fb:20px;","to":"o:1;fb:0;","ease":"Power3.easeInOut"},{"delay":"+3560","speed":300,"frame":"999","to":"opacity:0;fb:0;","ease":"Power3.easeInOut"}]' data-textAlign="['inherit','inherit','inherit','inherit']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 14;background-color:rgba(0, 0, 0, 0.5);"> </div>

                        <!-- LAYER NR. 11 -->
                        <div class="tp-caption tp-shape tp-shapewrapper tp-slicey  tp-resizeme" id="slide-67-layer-32" data-x="['center','center','center','center']" data-hoffset="['-588','-375','-253','-207']" data-y="['middle','middle','middle','middle']" data-voffset="['72','-328','-172','-111']" data-width="['300','300','150','150']" data-height="['200','200','150','150']" data-whitespace="nowrap" data-type="shape" data-slicey_offset="300" data-slicey_blurstart="0" data-slicey_blurend="20" data-responsive_offset="on" data-frames='[{"delay":480,"speed":1000,"frame":"0","from":"sX:1;sY:1;opacity:0;fb:20px;","to":"o:1;fb:0;","ease":"Power3.easeInOut"},{"delay":"+3520","speed":300,"frame":"999","to":"opacity:0;fb:0;","ease":"Power3.easeInOut"}]' data-textAlign="['inherit','inherit','inherit','inherit']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 15;background-color:rgba(0, 0, 0, 0.5);"> </div>

                        <!-- LAYER NR. 12 -->
                        <div class="tp-caption tp-shape tp-shapewrapper tp-slicey  tp-resizeme" id="slide-67-layer-33" data-x="['center','center','center','center']" data-hoffset="['-37','73','-76','-100']" data-y="['middle','middle','middle','middle']" data-voffset="['-401','-340','-293','-246']" data-width="['450','400','250','250']" data-height="['100','100','50','50']" data-whitespace="nowrap" data-type="shape" data-slicey_offset="250" data-slicey_blurstart="0" data-slicey_blurend="20" data-responsive_offset="on" data-frames='[{"delay":310,"speed":1000,"frame":"0","from":"sX:1;sY:1;opacity:0;fb:20px;","to":"o:1;fb:0;","ease":"Power3.easeInOut"},{"delay":"+3690","speed":300,"frame":"999","to":"opacity:0;fb:0;","ease":"Power3.easeInOut"}]' data-textAlign="['inherit','inherit','inherit','inherit']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 16;background-color:rgba(0, 0, 0, 0.5);"> </div>

                        <!-- LAYER NR. 13 -->
                        <div class="tp-caption tp-shape tp-shapewrapper tp-slicey  tp-resizeme" id="slide-67-layer-35" data-x="['center','center','center','center']" data-hoffset="['186','38','116','17']" data-y="['middle','middle','middle','middle']" data-voffset="['363','402','190','395']" data-width="['350','400','250','250']" data-height="['100','100','50','50']" data-whitespace="nowrap" data-type="shape" data-slicey_offset="250" data-slicey_blurstart="0" data-slicey_blurend="20" data-responsive_offset="on" data-frames='[{"delay":340,"speed":1000,"frame":"0","from":"sX:1;sY:1;opacity:0;fb:20px;","to":"o:1;fb:0;","ease":"Power3.easeInOut"},{"delay":"+3660","speed":300,"frame":"999","to":"opacity:0;fb:0;","ease":"Power3.easeInOut"}]' data-textAlign="['inherit','inherit','inherit','inherit']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 17;background-color:rgba(0, 0, 0, 0.5);"> </div>

                        <!-- LAYER NR. 14 -->
                        <div class="tp-caption tp-shape tp-shapewrapper " id="slide-67-layer-1" data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" data-y="['middle','middle','middle','middle']" data-voffset="['0','0','0','0']" data-width="full" data-height="full" data-whitespace="nowrap" data-type="shape" data-basealign="slide" data-responsive_offset="off" data-responsive="off" data-frames='[{"delay":10,"speed":500,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power4.easeOut"},{"delay":"wait","speed":500,"frame":"999","to":"opacity:0;","ease":"Power4.easeOut"}]' data-textAlign="['inherit','inherit','inherit','inherit']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 18;background-color:rgba(0, 0, 0, 0.5);"> </div>

                        <!-- LAYER NR. 15 -->
                        <!-- <div class="tp-caption   tp-resizeme" id="slide-67-layer-2" data-x="['center','center','center','center']" data-hoffset="['1','1','0','0']" data-y="['middle','middle','middle','middle']" data-voffset="['-70','-70','-70','-70']" data-fontsize="['70','70','30','26']" data-lineheight="['80','70','40','30']" data-width="['none','none','481','360']" data-height="none" data-whitespace="['nowrap','nowrap','normal','normal']" data-type="text" data-responsive_offset="on" data-frames='[{"delay":1000,"speed":2000,"frame":"0","from":"sX:0.9;sY:0.9;opacity:0;fb:20px;","to":"o:1;fb:0;","ease":"Power3.easeInOut"},{"delay":"wait","speed":500,"frame":"999","to":"sX:0.9;sY:0.9;opacity:0;fb:20px;","ease":"Power3.easeInOut"}]' data-textAlign="['center','center','center','center']" data-paddingtop="[0,0,0,0]" data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]" style="z-index: 19; white-space: nowrap; font-size: 70px; line-height: 80px; font-weight: 700; color: #ffffff; letter-spacing: 0px;font-family: 'Raleway', sans-serif;text-transform:uppercase;">We're Your One Stop <br/> Destination for That !</div> -->
                        <!-- LAYER NR. 17 -->
                        <!--<a class="tp-caption rev-btn  tp-resizeme" href="#" target="_blank" id="slide-67-layer-8" data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" data-y="['middle','middle','middle','middle']" data-voffset="['80','50','20','5']" data-width="250" data-height="none" data-whitespace="nowrap" data-type="button" data-actions='' data-responsive_offset="on" data-frames='[{"delay":1000,"speed":2000,"frame":"0","from":"sX:0.9;sY:0.9;opacity:0;fb:20px;","to":"o:1;fb:0;","ease":"Power3.easeInOut"},{"delay":"wait","speed":500,"frame":"999","to":"sX:0.9;sY:0.9;opacity:0;fb:20px;","ease":"Power3.easeInOut"},{"frame":"hover","speed":"0","ease":"Linear.easeNone","to":"o:1;rX:0;rY:0;rZ:0;z:0;fb:0;","style":"c:rgba(255,255,255,1);bs:solid;bw:0 0 0 0;"}]' data-textAlign="['center','center','center','center']" data-paddingtop="[0,0,0,0]" data-paddingright="[50,50,50,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[50,50,50,0]" style="cursor:pointer;text-decoration: none;z-index:19;line-height:45px;"><span class="impl_btn">GET STARTED </span></a>  -->
                    </li>

                </ul>
            </div>
        </div>
    </div>
    <!------ Service and Video Wrapper Start ------>
   	
    <!------ Featured Cars Start ------>
    <div class="impl_featured_wrappar">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <div class="impl_heading">
                        <h1>大众汽车</h1>
                    </div>
                </div>
               <c:forEach items="${f }" var="a">
                <div class="col-lg-4 col-md-6">
                    <div class="impl_fea_car_box">
                        <div class="impl_fea_car_img">
                            <img src="${pageContext.request.contextPath}/Thefrontdesk/images/featured/fea_car1.jpg" alt="" class="img-fluid impl_frst_car_img" />
                            <img src="${pageContext.request.contextPath}/Thefrontdesk/images/featured/fea_car1_hover.jpg" alt="" class="img-fluid impl_hover_car_img" />
                            <span class="impl_img_tag" title="compare"><i class="fa fa-exchange" aria-hidden="true"></i></span>
                        </div>
                     
                        <div class="impl_fea_car_data">
                            <h2><a href="purchase_new.jsp">${a.sname}</a></h2>
                           
                            <a href="../Frontdesk/Frontdesk1.do">
	                            <div class="impl_fea_btn">
	                                <button class="impl_btn"><span class="impl_doller">${a.sname}</span><span class="impl_bnw">车辆详情</span></button>
	                            </div>
                            </a>
                        </div>
                       
                    </div>
                </div>
                 </c:forEach>
                <!--2-->
             
                <!--3-->
               
                <!--4-->
               
                <!--5-->
           
                <!--6-->
             
            </div>
        </div>
    </div>
    <!------ Need Help Section Start ------>
    <div class="impl_help_wrapper">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 col-md-12 offset-lg-1">
                    <div class="impl_help_data">
                        <h1>需要试驾最新的大众汽车吗？</h1>
                        <p>现在打电话给我们</p>
                        <div class="impl_help_no"><span>(+1)202-202-012</span></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!------ Latest Blog Section Start ------>
    <div class="impl_blog_wrapper">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <div class="impl_heading">
                        <h1>最新的新闻</h1>
                    </div>
                </div>
                <div class="col-lg-12 col-md-12">
                    <div class="impl_blog_box">
                        <div class="row">
                            <div class="col-lg-4 col-md-12">
                                <div class="impl_post_img">
                                    <img src="${pageContext.request.contextPath}/Thefrontdesk/images/blog/post1.jpg" alt="" class="img-fluid" />
                                    <span class="impl_pst_date">
									16 sep
								</span>
                                    <div class="impl_pst_img_icon"><a href="#" class="fa fa-link"></a></div>
                                </div>
                            </div>
                            <div class="col-lg-8 col-md-12">
                                <div class="impl_post_data">
                                    <h2><a href="blog_left_sidebar.jsp">汽车品牌背后的故事</a></h2>
                                    <p>一个长期存在的事实是，当读者看到页面的布局时，他们会被可读的内容分散注意力。使用Lorem Ipsum的意义在于，它具有或多或少的字母正态分布，而不是使用“Content here, Content here”，使其看起来像可读的英语。许多桌面出版包和web页面编辑器现在都使用Lorem Ipsum作为默认的模型文本，搜索“Lorem Ipsum”将发现许多仍处于起步阶段的web站点。多年来，不同的版本不断演变，有时是偶然的，有时是有意的(注入幽默等)。Lorem Ipsum有许多不同的段落可供选择</p>
                                    <div class="impl_pst_info">
                                        <div class="impl_pst_admin">
                                            <span><a href="#">管理员</a></span>
                                            <span><a href="#">2017年9月16日</a></span>
                                        </div>
                                        <ul class="impl_pst_views">
                                            <li><a href="#"><i class="fa fa-eye" aria-hidden="true"></i> 413</a></li>
                                            <li><a href="#"><i class="fa fa-comments" aria-hidden="true"></i> 251</a></li>
                                            <li><a href="#"><i class="fa fa-share-alt" aria-hidden="true"></i> 5</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--Blog 2-->
                    <div class="impl_blog_box impl_blog_right">
                        <div class="row">
                            <div class="col-lg-4 col-md-12 push-lg-8">
                                <div class="impl_post_img">
                                    <img src="${pageContext.request.contextPath}/Thefrontdesk/images/blog/post2.jpg" alt="" class="img-fluid" />
                                    <span class="impl_pst_date">
									16 sep
								</span>
                                    <div class="impl_pst_img_icon"><a href="#"><i class="fa fa-link" aria-hidden="true"></i></a></div>
                                </div>
                            </div>
                            <div class="col-lg-8 col-md-12 pull-lg-4">
                                <div class="impl_post_data">
                                    <h2><a href="blog_left_sidebar.jsp">汽车品牌背后的故事 </a></h2>
                                    <p>一个长期存在的事实是，当读者看到页面的布局时，他们会被可读的内容分散注意力。使用Lorem Ipsum的意义在于，它具有或多或少的字母正态分布，而不是使用“Content here, Content here”，使其看起来像可读的英语。许多桌面出版包和web页面编辑器现在都使用Lorem Ipsum作为默认的模型文本，搜索“Lorem Ipsum”将发现许多仍处于起步阶段的web站点。多年来，不同的版本不断演变，有时是偶然的，有时是有意的(注入幽默等)。Lorem Ipsum有许多不同的段落可供选择</p>
                                    <div class="impl_pst_info">
                                        <div class="impl_pst_admin">
                                            <span><a href="#">管理员</a></span>
                                            <span><a href="#">2017年9月16日</a></span>

                                        </div>
                                        <ul class="impl_pst_views">
                                            <li><a href="#"><i class="fa fa-eye" aria-hidden="true"></i> 413</a></li>
                                            <li><a href="#"><i class="fa fa-comments" aria-hidden="true"></i> 251</a></li>
                                            <li><a href="#"><i class="fa fa-share-alt" aria-hidden="true"></i> 5</a></li>
                                        </ul>
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
                            <a href="${pageContext.request.contextPath}/Thefrontdesk/index.jsp"><img src="${pageContext.request.contextPath}/Thefrontdesk/images/logo.png" alt=""></a>
                            <p>Lorem Ipsum有很多不同的段落可供选择，但大多数段落都因注入幽默或随机单词而发生了某种形式的变化，而注入幽默甚至让这些词看起来都不那么可信。</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="impl_foo_box">
                            <h1 class="impl_foo_title">基本信息</h1>
                            <ul>
                                <li><a href="#"><i class="fa fa-angle-right" aria-hidden="true"></i> 换油</a></li>
                                <li><a href="#"><i class="fa fa-angle-right" aria-hidden="true"></i> 节省燃油</a></li>
                                <li><a href="#"><i class="fa fa-angle-right" aria-hidden="true"></i> 防抱死刹车系统</a></li>
                                <li><a href="#"><i class="fa fa-angle-right" aria-hidden="true"></i> 电池</a></li>
                                <li><a href="#"><i class="fa fa-angle-right" aria-hidden="true"></i> 长途汽车旅行的小贴士</a></li>
                                <li><a href="#"><i class="fa fa-angle-right" aria-hidden="true"></i> 空气压力</a></li>
                                <li><a href="#"><i class="fa fa-angle-right" aria-hidden="true"></i> 轮胎更换</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="impl_foo_box">
                            <h1 class="impl_foo_title">联系我们</h1>
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
                                        <p>514 S. Magnolia St.<br>  Orlando , US</p>
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
                            <h1 class="impl_foo_title">订阅 </h1>
                            <p>Lorem Ipsum中有许多不同的段落，但大多数都发生了某种形式的变化。</p>
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
                    <p class="impl_copyright">版权 &copy; 2018年推动汽车经销商。所有权利 <a href="http://www.17sucai.com/" title="17sucai">Reserved</a></p>
                </div>
            </div>
        </div>		
    </div>
	<!---- Go To Top---->
	<span class="gotop"><img src="${pageContext.request.contextPath}/Thefrontdesk/images/goto.png" alt=""></span>
    <!--Main js file Style-->
    <script type="text/javascript" src="${pageContext.request.contextPath}/Thefrontdesk/js/jquery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/Thefrontdesk/js/popper.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/Thefrontdesk/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/Thefrontdesk/js/ion.rangeSlider.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/Thefrontdesk/js/plugin/magnific/jquery.magnific-popup.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/Thefrontdesk/js/plugin/slick/slick.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/Thefrontdesk/js/plugin/nice_select/jquery.nice-select.min.js"></script>
    <!----------Revolution slider start---------->
    <script type="text/javascript" src="${pageContext.request.contextPath}/Thefrontdesk/js/plugin/revolution/js/jquery.themepunch.revolution.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/Thefrontdesk/js/plugin/revolution/js/jquery.themepunch.tools.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/Thefrontdesk/js/plugin/revolution/js/revolution.extension.kenburn.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/Thefrontdesk/js/plugin/revolution/js/revolution.extension.layeranimation.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/Thefrontdesk/js/plugin/revolution/js/revolution.extension.navigation.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/Thefrontdesk/js/plugin/revolution/js/revolution.extension.parallax.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/Thefrontdesk/js/plugin/revolution/js/revolution.extension.slideanims.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/Thefrontdesk/js/plugin/revolution/js/revolution.extension.actions.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/Thefrontdesk/js/plugin/revolution/js/revolution.addon.slicey.min.js"></script>
    <!----------Revolution slider start---------->
    <script type="text/javascript" src="${pageContext.request.contextPath}/Thefrontdesk/js/custom.js"></script>
    <!--Main js file End-->
</body>

</html>
