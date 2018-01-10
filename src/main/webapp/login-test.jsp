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

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>登录 | Churchile - 车起来</title>
<meta name="description" content="">
<meta name="keywords" content="">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <!--<script src="bootstrap/js/bootstrap.min.js"></script>-->
    <script>
        window.Constants = {
            serverPath: "${serverPath}",
            basePath: "${basePath}"
        };
    </script>
    <script type="text/javascript" src="js/login.js"></script>

</head>
<body>
    
   	<div class="container">
   	    <form class="form-horizontal" method="post" id="form-login">
		  <div class="form-group">
		    <label for="phone" class="col-sm-2 control-label">手机</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" id="phone" placeholder="请输入手机号码">
		    </div>
		  </div>
		  <div class="form-group">
		    <label for="password" class="col-sm-2 control-label">密码</label>
		    <div class="col-sm-10">
		      <input type="password" class="form-control" id="password" placeholder="请输入密码">
		    </div>
		  </div>
		  <div class="form-group">
		    <div class="col-sm-offset-2 col-sm-10">
		      <div class="checkbox">
		        <label>
		          <input type="checkbox"> 记住密码
		        </label>
		      </div>
		    </div>
		  </div>
		  <div class="form-group">
		    <div class="col-sm-offset-2 col-sm-10">
		      <button type="button" class="btn btn-default" id="login">登录</button>
		    </div>
		  </div>
		</form>
   	</div>
    
</body>
</html>