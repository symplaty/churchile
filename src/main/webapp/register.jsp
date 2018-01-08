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
<title>Sign up</title>
<meta name="description" content="">
<meta name="keywords" content="">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
   	    <form class="form-horizontal" action="#" method="post" id="form-register">
   	      <div class="form-group">
		    <label for="name" class="col-sm-2 control-label">Name</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" name="name" placeholder="Name">
		    </div>
		  </div>
		  <div class="form-group">
		    <label for="phone" class="col-sm-2 control-label">Phone</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" name="phone" placeholder="Phone Number">
		    </div>
		  </div>
		  <div class="form-group">
		    <label for="password" class="col-sm-2 control-label">Password</label>
		    <div class="col-sm-10">
		      <input type="password" class="form-control" name="password" placeholder="Password">
		    </div>
		  </div>
		  <div class="form-group">
		    <label for="confirm-password" class="col-sm-2 control-label">Confirm Password</label>
		    <div class="col-sm-10">
		      <input type="password" class="form-control" name="confirm-password" placeholder="Confirm password">
		    </div>
		  </div>
		  <div class="form-group">
		    <div class="col-sm-offset-2 col-sm-10">
		      <button type="submit" class="btn btn-default">Sign up</button>
		    </div>
		  </div>
		</form>
   	</div>

   	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>