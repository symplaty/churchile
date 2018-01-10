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

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		大法师的
	</body>
</html>