<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%
    	String path = request.getContextPath();
    %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>管理员</title>
<link rel="stylesheet" href="<%=path %>/css/bootstrap.min.css">
<script type="text/javascript" src="<%=path %>/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=path %>/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container" style="margin-top: 30px">
		<div class="row">
			<div class="col-md-7"></div>
			<div class="col-md-5" style="text-align: right;"><a href="<%=path%>/orderManage">订单管理</a>||<a href="<%=path%>/flowerManage">花卉管理</a>||欢迎,<a>${admin_now.getAdminName() }</a></div>
		</div>
		<div class="panel panel-default clearfix">
		  <!-- Default panel contents -->
		  <div class="panel-heading">
		  	<h4>管理员</h4><br>
		  	用户管理
		  	</div>
			<div class="panel-body">
				<table class="table">	
				    <tr>
				    	<th>用户名</th>
				    	<th>真实姓名</th>
				    	<th>地址</th>
				    	<th>性别</th>
				    	<th>手机号</th>
				    	<th>操作</th>
				    </tr>
				     <c:forEach var="item" items="${list }">
					    <tr>
					    	<td>${item.getUserName() }</td>
					    	<td>${item.getUserTruename() }</td>
					    	<td>${item.getUserAddress() }</td>
					    	<td>${item.getUserSex() }</td>
					    	<td>${item.getUserPhone() }</td>
					    	<td><a href="edit?uid=${item.getUserId() }">修改</a>	<a href="delete?uid=${item.getUserId() }">删除</a></td>
					    </tr>
					  </c:forEach>
				</table>
		  	</div>
		  	<div class="panel-footer clearfix">
		  		<a href="<%=path %>/add" class="pull-right">添加用户</a>
		  	</div>
		</div>
	</div>
</body>

</html>