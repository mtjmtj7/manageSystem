<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>禁止访问</title>
<!-- Bootstrap core CSS -->
<link href="<%=path%>/css/bootstrap.min.css" rel="stylesheet">
	<style>
		body{
			background-color: #eee;
		}
		.container{
			width: 600px;
			margin: 100px auto;
		}
	</style>
</head>
<body>
<div class="container">
	<div class="panel panel-warning">
		  <div class="panel-heading"><strong>错误</strong></div>
		  <div class="panel-body">
		   	账号密码错误！请<a href="<%=path %>/index.jsp">重试</a>
		  </div>
	</div>
</div>
</body>
</html>