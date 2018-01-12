<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%
	String path = request.getContextPath();
	String serverPort = "";
	if (request.getServerPort() != 80) {
		serverPort = ":" + request.getServerPort();
	}
	String serverPath = request.getScheme() + "://" + request.getServerName() + serverPort + path + "/";
	String basePath = serverPath;
	if (application.getAttribute("basePath") != null && application.getAttribute("basePath") != "") {
		basePath = application.getAttribute("basePath").toString();
	}
	pageContext.setAttribute("basePath", basePath);
	pageContext.setAttribute("serverPath", serverPath);
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Karmanta - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Karmanta, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="img/favicon.png">
    <title>订单列表 | Churchile - 车起来后台管理</title>
    <!-- Bootstrap CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href="css/bootstrap-theme.css" rel="stylesheet">
    <!--external css-->
    <!-- font icon -->
    <link href="css/elegant-icons-style.css" rel="stylesheet" />
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <!-- full calendar css-->
    <link href="assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css" rel="stylesheet" />
    <!-- easy pie chart-->
    <link href="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen" />
    <!-- owl carousel -->
    <link rel="stylesheet" href="css/owl.carousel.css" type="text/css">
    <!-- Custom styles -->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet" />
    <link href="css/pop-up-div.css" rel="stylesheet" />
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
      <script src="js/lte-ie7.js"></script>
    <![endif]-->
    <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
    <script>
        window.Constants = {
            serverPath: "${serverPath}",
            basePath: "${basePath}"
        };
    </script>
    
</head>

<body>
    <!-- container section start -->
    <section id="container" class="">
        <header class="header white-bg">
            <div class="toggle-nav">
                <div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom"></div>
            </div>
            <!--logo start-->
            <a href="index.html" class="logo">Chur<span>chile</span> <span class="lite">车起来</span></a>
            <!--logo end-->
            <div class="nav search-row" id="top_menu">
                <!--  search form start -->
                <ul class="nav top-menu">
                    <li>
                        <form class="navbar-form">
                            <input class="form-control" placeholder="Search" type="text">
                        </form>
                    </li>
                </ul>
                <!--  search form end -->
            </div>
            <div class="top-nav notification-row">
                <!-- notificatoin dropdown start-->
                <ul class="nav pull-right top-menu">
                    <!-- task notificatoin start -->
                    <li id="task_notificatoin_bar" class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="icon-task-l"></i>
                            <span class="badge bg-important">5</span>
                        </a>
                        <ul class="dropdown-menu extended tasks-bar">
                            <div class="notify-arrow notify-arrow-blue"></div>
                            <li>
                                <p class="blue">You have 5 pending tasks</p>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="task-info">
                                        <div class="desc">Design PSD </div>
                                        <div class="percent">90%</div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width: 90%">
                                            <span class="sr-only">90% Complete (success)</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="task-info">
                                        <div class="desc">
                                            Project 1
                                        </div>
                                        <div class="percent">30%</div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100" style="width: 30%">
                                            <span class="sr-only">30% Complete (warning)</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="task-info">
                                        <div class="desc">Digital Marketing</div>
                                        <div class="percent">80%</div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                            <span class="sr-only">80% Complete</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="task-info">
                                        <div class="desc">Logo Designing</div>
                                        <div class="percent">78%</div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="78" aria-valuemin="0" aria-valuemax="100" style="width: 78%">
                                            <span class="sr-only">78% Complete (danger)</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div class="task-info">
                                        <div class="desc">Mobile App</div>
                                        <div class="percent">50%</div>
                                    </div>
                                    <div class="progress progress-striped active">
                                        <div class="progress-bar" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%">
                                            <span class="sr-only">50% Complete</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="external">
                                <a href="#">See All Tasks</a>
                            </li>
                        </ul>
                    </li>
                    <!-- task notificatoin end -->
                    <!-- inbox notificatoin start-->
                    <li id="mail_notificatoin_bar" class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <i class="icon-envelope-l"></i>
                            <span class="badge bg-important">5</span>
                        </a>
                        <ul class="dropdown-menu extended inbox">
                            <div class="notify-arrow notify-arrow-blue"></div>
                            <li>
                                <p class="blue">You have 5 new messages</p>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="photo"><img alt="avatar" src="./img/avatar-mini.jpg"></span>
                                    <span class="subject">
                                    <span class="from">Greg  Martin</span>
                                    <span class="time">1 min</span>
                                    </span>
                                    <span class="message">
                                        I really like this admin panel.
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="photo"><img alt="avatar" src="./img/avatar-mini2.jpg"></span>
                                    <span class="subject">
                                    <span class="from">Bob   Mckenzie</span>
                                    <span class="time">5 mins</span>
                                    </span>
                                    <span class="message">
                                     Hi, What is next project plan?
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="photo"><img alt="avatar" src="./img/avatar-mini3.jpg"></span>
                                    <span class="subject">
                                    <span class="from">Phillip   Park</span>
                                    <span class="time">2 hrs</span>
                                    </span>
                                    <span class="message">
                                        I am like to buy this Admin Template.
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="photo"><img alt="avatar" src="./img/avatar-mini4.jpg"></span>
                                    <span class="subject">
                                    <span class="from">Ray   Munoz</span>
                                    <span class="time">1 day</span>
                                    </span>
                                    <span class="message">
                                        Icon fonts are great.
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="#">See all messages</a>
                            </li>
                        </ul>
                    </li>
                    <!-- inbox notificatoin end -->
                    <!-- alert notification start-->
                    <li id="alert_notificatoin_bar" class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">

                            <i class="icon-bell-l"></i>
                            <span class="badge bg-important">7</span>
                        </a>
                        <ul class="dropdown-menu extended notification">
                            <div class="notify-arrow notify-arrow-blue"></div>
                            <li>
                                <p class="blue">You have 4 new notifications</p>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="label label-primary"><i class="icon_profile"></i></span> 
                                    Friend Request
                                    <span class="small italic pull-right">5 mins</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="label label-warning"><i class="icon_pin"></i></span>  
                                    John location.
                                    <span class="small italic pull-right">50 mins</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="label label-danger"><i class="icon_book_alt"></i></span> 
                                    Project 3 Completed.
                                    <span class="small italic pull-right">1 hr</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="label label-success"><i class="icon_like"></i></span> 
                                    Mick appreciated your work.
                                    <span class="small italic pull-right"> Today</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">See all notifications</a>
                            </li>
                        </ul>
                    </li>
                    <!-- alert notification end-->
                    <!-- user login dropdown start-->
                    <li class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="profile-ava">
                                <img alt="" src="img/avatar1_small.jpg">
                            </span>
                            <span class="username">Jhon Doe</span>
                            <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu extended logout">
                            <div class="log-arrow-up"></div>
                            <li class="eborder-top">
                                <a href="#"><i class="icon_profile"></i> My Profile</a>
                            </li>
                            <li>
                                <a href="#"><i class="icon_mail_alt"></i> My Inbox</a>
                            </li>
                            <li>
                                <a href="#"><i class="icon_clock_alt"></i> Timeline</a>
                            </li>
                            <li>
                                <a href="#"><i class="icon_chat_alt"></i> Chats</a>
                            </li>
                            <li>
                                <a href="login.html"><i class="icon_key_alt"></i> Log Out</a>
                            </li>
                            <li>
                                <a href="documentation.html"><i class="icon_key_alt"></i> Documentation</a>
                            </li>
                            <li>
                                <a href="documentation.html"><i class="icon_key_alt"></i> Documentation</a>
                            </li>
                        </ul>
                    </li>
                    <!-- user login dropdown end -->
                </ul>
                <!-- notificatoin dropdown end-->
            </div>
        </header>
        <!--header end-->
        <!--sidebar start-->
        <aside>
            <div id="sidebar" class="nav-collapse ">
                <!-- sidebar menu start-->
                <ul class="sidebar-menu">
                    <li>
                        <a class="" href="admin-index.jsp">
                          <i class="icon_house_alt"></i>
                          <span>控制台</span>
                      </a>
                    </li>
                    <li class="sub-menu ">
                        <a href="javascript:;" class="">
                          <i class="icon_documents_alt"></i>
                          <span>车票管理</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                        </a>
                        <ul class="sub">
                            <li><a class="" href="bus-list.jsp">汽车列表</a></li>
                            <li><a class="" href="add-bus.jsp">添加汽车</a></li>
                            <li><a class="" href="ticket-list.jsp"><span>车票列表</span></a></li>
                            <li><a class="" href="add-ticket.jsp"><span>添加车票</span></a></li>
                        </ul>
                    </li>
                    <li class="sub-menu active">
                        <a href="javascript:;" class="">
                          <i class="icon_wallet"></i>
                          <span>订单管理</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                        </a>
                        <ul class="sub">
                            <li><a class="active" href="order-list.jsp">订单列表</a></li>
                        </ul>
                    </li>
                    <li class="sub-menu">
                        <a href="javascript:;" class="">
                          <i class="icon_easel"></i>
                          <span>用户管理</span>
                          <span class="menu-arrow arrow_carrot-right"></span>
                        </a>
                        <ul class="sub">
                            <li><a class="" href="user-list.jsp">用户列表</a></li>
                            <li><a class="" href="add-user.jsp">添加用户</a></li>
                        </ul>
                    </li>
                </ul>
                <!-- sidebar menu end-->
            </div>
        </aside>
        <!--sidebar end-->
        <!--main content start-->
        <section id="main-content">
            <section class="wrapper">
                <!--overview start-->
                <div class="row">
                    <div class="col-lg-12">
                        <section class="panel">
                            <header class="panel-heading">
                                	订单列表
                            </header>
                            <table class="table table-striped table-advance table-hover">
                                <tbody>
                                    <tr>
                                    	<th><i class="icon_ol"></i> #</th>
                                    	<th><i class="icon_id_alt"></i> 出发地</th>
                                    	<th><i class="icon_id_alt"></i> 目的地</th>
                                    	<th><i class="icon_id_alt"></i> 出发时间</th>
                                    	<th><i class="icon_id_alt"></i> 到达时间</th>
                                        <th><i class="icon_id_alt"></i> 车牌</th>
                                        <th><i class="icon_toolbox"></i> 类型</th>
                                        <th><i class="icon_percent"></i> 票价</th>
                                        <th><i class="icon_percent"></i> 车票数</th>
                                        <th><i class="icon_id_alt"></i> 剩余量</th>
                                        <th><i class="icon_cogs"></i> 操作</th>
                                    </tr>
                                    <tr>
                                    	<td>1</td>
                                    	<td>1</td>
                                    	<td>1</td>
                                    	<td>1</td>
                                    	<td>1</td>
                                        <td>23123</td>
                                        <td>23123</td>
                                        <td>23123</td>
                                        <td>small</td>
                                        <td>60</td>
                                        <td>
                                            <div class="btn-group">
                                                <a class="btn btn-primary edit"><i class="icon_pencil-edit_alt"></i></a>
                                                <a class="btn btn-danger delete"><i class="icon_close_alt2"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                    	<td>2</td>
                                        <td>3452342</td>
                                        <td>3452342</td>
                                        <td>3452342</td>
                                        <td>3452342</td>
                                        <td>3452342</td>
                                        <td>3452342</td>
                                        <td>3452342</td>
                                        <td>big</td>
                                        <td>60</td>
                                        <td>
                                            <div class="btn-group">
                                                <a class="btn btn-primary edit"><i class="icon_pencil-edit_alt"></i></a>
                                                <a class="btn btn-danger delete"><i class="icon_close_alt2"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                    	<td>3</td>
                                        <td>G23233132</td>
                                        <td>G23233132</td>
                                        <td>middle</td>
                                        <td>middle</td>
                                        <td>middle</td>
                                        <td>middle</td>
                                        <td>middle</td>
                                        <td>middle</td>
                                        <td>60</td>
                                        <td>
                                            <div class="btn-group">
                                                <a class="btn btn-primary edit"><i class="icon_pencil-edit_alt"></i></a>
                                                <a class="btn btn-danger delete"><i class="icon_close_alt2"></i></a>
                                            </div>
                                        </td>
                                    </tr>
                                  
                                </tbody>
                            </table>
                        </section>
                    </div>
                </div>
                <!-- pop up div -->
                <div id="form-edit" class="modal">
                    <form class="modal-content animate form-horizontal">
                        <div class="imgcontainer">
                            <span onclick="document.getElementById('form-edit').style.display='none'" class="close" title="Close PopUp">&times;</span>
                            <h1 style="text-align:center; font-family: Microsoft YaHei UI">修改订单信息</h1>
                        </div>
                        <div class="container">
                            <div class="form-group">
                            	<label for="start" class="col-sm-2 control-label">出发地</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="start" placeholder="请选择出发地">
                                </div>
                                <label for="terminal" class="col-sm-2 control-label">目的地</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="terminal" placeholder="请选择目的地">
                                </div>
                                <label for="start-time" class="col-sm-2 control-label">出发时间</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="start-time" placeholder="请选择出发时间">
                                </div>
                                <label for="end-time" class="col-sm-2 control-label">到达时间</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="end-time" placeholder="请选择到达时间">
                                </div>
                                <label for="palte" class="col-sm-2 control-label">车牌</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="palte" placeholder="请输入车牌号码">
                                </div>
                            
                                <label for="type" class="col-sm-2 control-label">类型</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="type" placeholder="请输入汽车类型">
                                </div>
                                <label for="volume" class="col-sm-2 control-label">票价</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="price" placeholder="请输入票价">
                                </div>
                            
                                <label for="volume" class="col-sm-2 control-label">车票数</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="volume" placeholder="请输入车票数量">
                                </div>
                           
                                <label for="volume-left" class="col-sm-2 control-label">剩余量</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="type" placeholder="请输入剩余量">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-5 col-sm-10">
                                    <button type="button" class="btn btn-primary" id="confirm">确认</button>
                                    <button type="button" class="btn btn-default" id="cancel">取消</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>

                <div id="form-delete" class="modal">
                    <form class="modal-content animate form-horizontal">
                    	<div class="imgcontainer">
                    
                            <h3 style="text-align:center; font-family: Microsoft YaHei UI">确认删除本条记录？</h3>
                        </div>
                       
                            <div class="form-group">
                                <div class="col-sm-offset-5 col-sm-10">
                                    <button type="button" class="btn btn-default" id="confirm">确认</button>
                                    <button  type="button" class="btn btn-primary" id="cancel">取消</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <!-- project team & activity end -->
            </section>
        </section>
        <!--main content end-->
    </section>
    <!-- container section start -->
    <!-- javascripts -->
    <script src="js/jquery.js"></script>
    <script src="js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="js/jquery-ui-1.9.2.custom.min.js"></script>
    <!-- bootstrap -->
    <script src="js/bootstrap.min.js"></script>
    <!-- nice scroll -->
    <script src="js/jquery.scrollTo.min.js"></script>
    <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
    <!-- charts scripts -->
    <script src="assets/jquery-knob/js/jquery.knob.js"></script>
    <script src="js/jquery.sparkline.js" type="text/javascript"></script>
    <script src="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
    <script src="js/owl.carousel.js"></script>
    <!-- jQuery full calendar -->
    <script src="assets/fullcalendar/fullcalendar/fullcalendar.min.js"></script>
    <!--script for this page only-->
    <script src="js/calendar-custom.js"></script>
    <!-- custom select -->
    <script src="js/jquery.customSelect.min.js"></script>
    <!--custome script for all page-->
    <script src="js/scripts.js"></script>
    <!-- custom script for this page-->
    <script src="js/sparkline-chart.js"></script>
    <script src="js/easy-pie-chart.js"></script>
    <script>
    //knob
    $(function() {
        $(".knob").knob({
            'draw': function() {
                $(this.i).val(this.cv + '%')
            }
        })
    });

    //carousel
    $(document).ready(function() {
        $("#owl-slider").owlCarousel({
            navigation: true,
            slideSpeed: 300,
            paginationSpeed: 400,
            singleItem: true

        });


    });

    //custom select box

    $(function() {
        $('select.styled').customSelect();
    });
    </script>
    <!-- pop up div -->
    <script type="text/javascript">
    $(document).ready(function() {
        $(".edit").click(function() {
            document.getElementById('form-edit').style.display = 'block'
        });
        $(".delete").click(function() {
            document.getElementById('form-delete').style.display = 'block'
        });
        $("#form-edit #confirm").click(function() {
            document.getElementById('form-edit').style.display = 'none'
        });
        $("#form-delete #confirm").click(function() {
            document.getElementById('form-delete').style.display = 'none'
        });
        $("#form-edit #cancel").click(function() {
            document.getElementById('form-edit').style.display = 'none'
        });
        $("#form-delete #cancel").click(function() {
            document.getElementById('form-delete').style.display = 'none'
        });

    });
    </script>
</body>

</html>