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
<title>列表</title>
<link rel="stylesheet" href="<%=path %>/css/bootstrap.min.css">
</head>
<body>
	<div class="container" style="margin-top: 30px">

		<div class="panel panel-default clearfix">
		  <!-- Default panel contents -->
		  <div class="panel-heading">
		  	<h4>我的订单</h4><br>
		  	</div>
			<div class="panel-body">
				<table class="table">	
				    <tr>
				    	<th>花名</th>
				    	<th>数量</th>
				    	<th>单价</th>
				    	<th>总价</th>
				    	<th>地址</th>
				    	<th>手机</th>
				    </tr>
				     <c:forEach var="item" items="${list }">
					    <tr>
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
			<div class="panel-footer clearfix">
				<a class="btn btn-danger pull-right" href="<%=path%>/main">继续购买</a>
			</div>
		</div>
	</div>
</body>
</html>