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
<title>订单列表</title>
<link rel="stylesheet" href="<%=path %>/css/bootstrap.min.css">
</head>
<body>
	<div class="container" style="margin-top: 30px">
		<div class="row">
			<div class="col-md-7"></div>
			<div class="col-md-5" style="text-align: right;"><a href="<%=path%>/flowerManage">花卉管理</a>||<a href="<%=path%>/manage">用户管理</a>||欢迎,<a>${admin_now.getAdminName() }</a></div>
		</div>
		<div class="panel panel-default clearfix">
		  <!-- Default panel contents -->
		  <div class="panel-heading">
		  	<h4>订单管理</h4><br>
		  </div>
			<div class="panel-body">
			  <!-- Table -->
			  	<table class="table">	
			    <tr>
			    	<th>用户</th>
			    	<th>花名</th>
			    	<th>数量</th>
			    	<th>单价</th>
			    	<th>总价</th>
			    	<th>地址</th>
			    	<th>手机</th>
			    </tr>
			    <c:forEach var="item" items="${list }">
			    <tr>
			    	<td>${item.getUserName() }</td>
			    	<td>${item.getFlo_name() }</td>
			    	<td>${item.getQuantity() }</td>
			    	<td>${item.getUnit_price() }</td>
			    	<td>${item.getTotal_price() }</td>
			    	<td>${item.getUserAddress() }</td>
			    	<td>${item.getUserPhone() }</td>
			    </tr>
			    </c:forEach>
			  </table>
		  	</div>
		</div>
	</div>
</body>

</html>