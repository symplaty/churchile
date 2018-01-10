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
    <title>主页 | Churchile - 车起来</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script type="text/javascript">
    window.Constants = {
        "basePath": "${basePath}",
        "serverPath": "${serverPath}"
    };
    window.uinfo = {};
    </script>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <%-- <script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script> --%>
    <script>
    function aa() {
        $.ajax({
            url: Constants.serverPath + "user/getuser.do",
            data: {},
            dateType: "json",
            type: "POST",
            success: function(resultData) {
                console.log(resultData.data);
                return;
            }
        });
    }
        if ("${loginUser.id}" == "") {
            window.location.href = Constants.serverPath + "login.jsp" + location.hash;
        }
    </script>
</head>

<body>
    whaaaaaaaaaaaaaaaaaaaaaat is going on啊<br>
    <button onclick="aa()">Test</button><br>
    <a href="login.jsp">Sign in</a><br>
    <a href="register.jsp">Sign up</a>
</body>

</html>