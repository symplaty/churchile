<%@ page language="java" contentType="textml; charset=UTF-8"
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
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Karmanta - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Karmanta, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="img/favicon.png">
    <title>登录 | Churchile - 车起来</title>
    <!-- Bootstrap CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- bootstrap theme -->
    <link href="css/bootstrap-theme.css" rel="stylesheet">
    <!--external css-->
    <!-- font icon -->
    <link href="css/elegant-icons-style.css" rel="stylesheet" />
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <!-- Custom styles -->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet" />
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 --> 
    <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
    <script>
        window.Constants = {
            serverPath: "${serverPath}",
            basePath: "${basePath}"
        };
    </script>
    <script type="text/javascript" src="js/login.js"></script>
    <!--[if lt IE 9]>
    
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    
    
    <![endif]-->
</head>

<body class="login-img3-body">
    <div class="container">
        <form class="login-form">
            <div class="login-wrap">
                <p class="login-img"><i class="icon_lock_alt"></i></p>
                <div class="input-group">
                    <span class="input-group-addon"><i class="icon_profile"></i></span>
                    <input type="text" class="form-control" placeholder="请输入手机号码" autofocus id="phone">
                </div>
                <div class="input-group">
                    <span class="input-group-addon"><i class="icon_key_alt"></i></span>
                    <input type="password" class="form-control" placeholder="请输入密码" id="password">
                </div>
                <label class="checkbox">
<!--                    <input type="checkbox" value="remember-me"> 记住密码  -->
<!--                     <span class="pull-right"> <a href="#"> Forgot Password?</a></span> -->
                </label>
                <button id="login" class="btn btn-primary btn-lg btn-block"  type="button">登录</button>
                <button class="btn btn-info btn-lg btn-block" type="button">注册</button> 
            </div>
        </form>
    </div>
</body>

</html>