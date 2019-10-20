<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- Begin Head -->

<head>
    <title>比较</title>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta name="description" content="Impel">
    <meta name="keywords" content="">
    <meta name="author" content="hsoft">
    <meta name="MobileOptimized" content="320">
    <!--Srart Style -->
    <link rel="stylesheet" type="text/css" href="css/fonts.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="css/ion.rangeSlider.css">
    <link rel="stylesheet" type="text/css" href="css/ion.rangeSlider.skinFlat.css">
    <link rel="stylesheet" type="text/css" href="js/plugin/magnific/magnific-popup.css">
    <link rel="stylesheet" type="text/css" href="js/plugin/slick/slick.css">
    <link rel="stylesheet" type="text/css" href="js/plugin/slick/slick-theme.css">
    <link rel="stylesheet" type="text/css" href="js/plugin/nice_select/nice-select.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <!-- Favicon Link -->
    <link rel="shortcut icon" type="image/png" href="images/favicon.png">
</head>

<body>
    <!------ Header Start ------>
    <div class="impl_header_wrapper">
        <div class="impl_logo">
            <a href="index.jsp"><img src="images/logo.png" alt="Logo" class="img-fluid"></a>
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
                                <li><a href="compare.jsp"><i class="fa fa-exchange" aria-hidden="true"></i></a></li>
                                <li class="cart-popup"><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i></a>
                                    <!--sopping cart box-->
                                    
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
                                <a href="index.jsp"><img src="images/logo1.png" alt="Logo" class="img-fluid"></a>
                            </div>
                            <a href="error.jsp" class="impl_btn"></a>
                            <div class="impl_menu">
                                <nav>
                                    <div class="menu_cross">
                                        <i class="fa fa-times" aria-hidden="true"></i>
                                    </div>
                                    <ul>
                                          <li class="dropdown"><a href="../vehicl/vehicl.do">首页</a>
                                           
                                        </li>
                                        <li><a href="about.jsp">公司</a></li>
                                        <li class="dropdown"><a href="javascript:;">相关汽车</a>
                                            <ul class="sub-menu">
                                                <li><a href="purchase_new.jsp">相关汽车</a></li>
                                               <li><a href="../Frontdesk/Frontdesk1.do">汽车展示</a></li>
                                                 <!--<li><a href="purchase_new_single.jsp">新车单</a></li>
                                                <li><a href="purchase_old_single.jsp">旧汽车单</a></li>-->
                                            </ul>
                                        </li>
                                        <li><a href="service.jsp">服务</a></li>
                                        <li class="dropdown"><a href="javascript:;">最新活动</a>
                                            <ul class="sub-menu">
                                                <li><a href="blog_right_sidebar.jsp">活动</a></li>
                                                <li><a href="../FrontDesk/qiantai.do">招聘信息</a></li>
                                            </ul>
                                        </li>
                                        <li class="dropdown"><a href="javascript:;"  class="active">页面</a>
                                            <ul class="sub-menu">
                                                <li><a href="sell_step.jsp">销售页面</a></li>
                                                <li><a href="compare.jsp">比较页面</a></li>
                                                <li><a href="checkout.jsp">预约页面</a></li>
                                                <li><a href="error.jsp">404 页面</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="contact.jsp">联系我们</a></li>
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
                    <h1>比较</h1>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.jsp">家</a></li>
                        <li class="breadcrumb-item active">比较</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <!------ Compare Wrapper Start ------>
    <div class="impl_compare_wrapper">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <div class="impl_heading">
                        <h1>选择汽车</h1>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="impl_cmpr_box">
                        <h2 class="impl_cmpr_title">Ferocity C7</h2>
                        <div class="compare_img">
                            <img src="images/shop/compare.jpg" alt="" class="img-fluid" />
                            <span class="cmpr_rmv_icon"><i class="fa fa-times" aria-hidden="true"></i></span>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="impl_cmpr_box">
                        <h2 class="impl_cmpr_title">选择汽车2</h2>
                        <div class="compare_select_box custom_select">
                            <select>
						  <option data-display="Select Brand">选择品牌</option>
						  <option value="1">品牌 1</option>
						  <option value="2">品牌 2</option>
						  <option value="3">品牌 3</option>
						  <option value="4">品牌 4</option>
						</select>
                        </div>
                        <div class="compare_select_box custom_select">
                            <select>
						  <option data-display="Select Model">选择模型</option>
						  <option value="1">模型 1</option>
						  <option value="2">模型 2</option>
						  <option value="3">模型 3</option>
						  <option value="4">模型 4</option>
						</select>
                        </div>
                        <div class="compare_select_box custom_select">
                            <select>
						  <option data-display="Select Version">选择版本</option>
						  <option value="1">版本 1</option>
						  <option value="2">版本 2</option>
						  <option value="3">版本 3</option>
						  <option value="4">版本 4</option>
						</select>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="impl_cmpr_box">
                        <h2 class="impl_cmpr_title">选择汽车 3</h2>
                        <div class="compare_select_box custom_select">
                            <select>
						  <option data-display="Select Brand">选择品牌</option>
						  <option value="1">品牌 1</option>
						  <option value="2">品牌 2</option>
						  <option value="3">品牌 3</option>
						  <option value="4">品牌 4</option>
						</select>
                        </div>
                        <div class="compare_select_box custom_select">
                            <select>
						  <option data-display="Select Model">选择模型</option>
						  <option value="1">模型 1</option>
						  <option value="2">模型 2</option>
						  <option value="3">模型 3</option>
						  <option value="4">模型 4</option>
						</select>
                        </div>
                        <div class="compare_select_box custom_select">
                            <select>
						  <option data-display="Select Version">选择版本</option>
						  <option value="1">版本 1</option>
						  <option value="2">版本 2</option>
						  <option value="3">版本 3</option>
						  <option value="4">版本4</option>
						</select>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="impl_cmpr_box">
                        <h2 class="impl_cmpr_title">选择汽车 4</h2>
                        <div class="compare_select_box custom_select">
                            <select>
						  <option data-display="Select Brand">选择品牌</option>
						  <option value="1">品牌 1</option>
						  <option value="2">品牌 2</option>
						  <option value="3">品牌d 3</option>
						  <option value="4">品牌 4</option>
						</select>
                        </div>
                        <div class="compare_select_box custom_select">
                            <select>
						  <option data-display="Select Model">选择模型</option>
						  <option value="1">模型 1</option>
						  <option value="2">模型 2</option>
						  <option value="3">模型 3</option>
						  <option value="4">模型 4</option>
						</select>
                        </div>
                        <div class="compare_select_box custom_select">
                            <select>
						  <option data-display="Select Version">选择版本</option>
							  <option value="1">版本1</option>
							  <option value="2">版本 2</option>
							  <option value="3">版本 3</option>
							  <option value="4">版本 4</option>
						</select>
                        </div>
                    </div>v
                </div>
                <div class="col-lg-12 col-md-12">
                    <div class="compare_btn">
                        <button class="impl_btn">比较</button>
                        <button class="impl_btn">重置所有</button>
                    </div>
                </div>
                <div class="col-lg-12 col-md-">
                    <div class="compare_table_wrapper">
                        <div class="compare_list_option">
                            <label class="compare_check_label">
							隐藏的共同特征
							<input type="checkbox" name="check"> 
							<span class="label-text"></span>
						</label>
                            <label class="compare_check_label">
							突出的差异
							<input type="checkbox" name="check"> 
							<span class="label-text"></span>
						</label>
                        </div>
                        <div class="compare_table">
                            <table class="table table-bordered table-responsive">
								<thead>
									<tr>
										<th>概述</th>
										<th>车型 1</th>
										<th>车型 2</th>
										<th>车型 3</th>
										<th>车型 4</th>
									</tr>
								</thead>
								<tr class="bg_color">
									<td>长度 (mm)</td>
									<td>4907</td>
									<td>4462</td>
									<td></td>
									<td></td>
								</tr>
								<tr class="bg_color">
									<td>宽度(mm)</td>
									<td>1993</td>
									<td>1998</td>
									<td></td>
									<td></td>
								</tr>
								<tr class="bg_color">
									<td>高度 (mm)</td>
									<td>1379</td>
									<td>1204</td>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<td>容纳 (Person)</td>
									<td>4</td>
									<td>4</td>
									<td></td>
									<td></td>
								</tr>
								<tr class="bg_color">
									<td>位移 (cc)</td>
									<td>6262</td>
									<td>7993</td>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<td>燃料类型</td>
									<td>petrol</td>
									<td>petrol</td>
									<td></td>
									<td></td>
								</tr>
								<tr class="bg_color">
									<td>最大力量 (bhp@rpm)</td>
									<td>652 @ 8000</td>
									<td>987 @ 6000</td>
									<td></td>
									<td></td>
								</tr>
								<tr class="bg_color">
									<td>最大转矩 (Nm@rpm)</td>
									<td>683 @ 6000</td>
									<td>1250 @ 2200</td>
									<td></td>
									<td></td>
								</tr>
								<tr class="bg_color">
									<td>里程 (ARAI) (kmpl)</td>
									<td>8</td>
									<td>4</td>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<td>替代燃料</td>
									<td>Not Applicable</td>
									<td>Not Applicable</td>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<td>传输类型</td>
									<td>Automatic</td>
									<td>Automatic</td>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<td>没有的齿轮</td>
									<td>7</td>
									<td>7</td>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<td>空调</td>
									<td>Automatic Climate Control</td>
									<td>Automatic Climate Control</td>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<td>电动窗</td>
									<td>Front & Rear</td>
									<td>Front & Rear</td>
									<td></td>
									<td></td>
								</tr>
								<tr class="bg_color">
									<td>中央锁定</td>
									<td>Remote</td>
									<td>Remote With Boot Opener</td>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<td>防抱死制动系统 </td>
									<td><i class="fa fa-check" aria-hidden="true"></i></td>
									<td><i class="fa fa-check" aria-hidden="true"></i></td>
									<td></td>
									<td></td>
								</tr>
								<tr class="bg_color">
									<td>安全气囊</td>
									<td>4 (Driver, Co-Driver & <br> Rear Passengers)</td>
									<td>8 Airbags</td>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<td>座椅装饰</td>
									<td>Leather</td>
									<td>Leather</td>
									<td></td>
									<td></td>
								</tr>
                            </table>
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
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/popper.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/ion.rangeSlider.min.js"></script>
    <script type="text/javascript" src="js/plugin/magnific/jquery.magnific-popup.min.js"></script>
    <script type="text/javascript" src="js/plugin/slick/slick.min.js"></script>
    <script type="text/javascript" src="js/plugin/nice_select/jquery.nice-select.min.js"></script>
    <script type="text/javascript" src="js/custom.js"></script>
    <!--Main js file End-->
</body>

</html>
