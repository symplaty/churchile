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
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>注册 | Churchile - 车起来</title>
<meta name="description" content="">
<meta name="keywords" content="">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
</head>
<body>
    <div class="container">
   	    <form class="form-horizontal" method="post" id="form-register">
   	      <div class="form-group">
		    <label for="name" class="col-sm-2 control-label">用户名</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" id="name" placeholder="请输入用户名" required="">
		      <i  class="glyphicon glyphicon-user"></i>
		    </div>
		  </div>
		  <div class="form-group">
		    <label for="phone" class="col-sm-2 control-label">手机</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" id="phone" placeholder="请输入手机密码" required="">
		      <i  class="glyphicon glyphicon-phone"></i>
		    </div>
		  </div>
		  <div class="form-group">
		    <label for="password" class="col-sm-2 control-label">请输入密码（至少6位）</label>
		    <div class="col-sm-10">
		      <input type="password" class="form-control" id="password" placeholder="请输入密码（至少6位）" required="" maxlength="16">
		      <i class="glyphicon glyphicon-lock"></i>
		    </div>
		    <div id="check-msg-pwd" class="check-msg-false" style="visibility:hidden"> 
					<i  class="glyphicon glyphicon-remove-sign"></i>
					密码至少6位
				</div>
		  </div>
		  <div class="form-group">
		    <label for="confirm-password" class="col-sm-2 control-label">请再次输入密码</label>
		    <div class="col-sm-10">
		      <input type="password" class="form-control" id="confirm-password" placeholder="请再次输入密码" required="" maxlength="16">
		      <i class="glyphicon glyphicon-lock"></i>
		    </div>
		    <div id="check-msg-repwd" class="check-msg-false"  style="visibility:hidden")>
					<i id="msg-sign" class="glyphicon glyphicon-remove-sign"></i>
					<span id="msg-content">两次输入密码不相同</span>
				</div>
		  </div>
		  <div class="form-group">
		    <div class="col-sm-offset-2 col-sm-10">
		      <button type="button" id="form-register" class="btn btn-default">注册</button>
		    </div>
		  </div>
		</form>
   	</div>

<%--    	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="bootstrap/js/bootstrap.min.js"></script> --%>
</body>
</html>