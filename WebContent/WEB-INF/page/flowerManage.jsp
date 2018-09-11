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
<title>花卉列表</title>
<link rel="stylesheet" href="<%=path %>/css/bootstrap.min.css">
</head>
<body>
	<div class="container" style="margin-top: 30px">
		<div class="row">
			<div class="col-md-7"></div>
			<div class="col-md-5" style="text-align: right;"><a href="<%=path%>/orderManage">订单管理</a>||<a href="<%=path%>/manage">用户管理</a>||欢迎,<a>${admin_now.getAdminName() }</a></div>
		</div>
		<div class="panel panel-default clearfix">
		  <!-- Default panel contents -->
		  <div class="panel-heading">
		  	<h4>花卉管理</h4><br>
		  </div>
			<div class="panel-body">
			  <!-- Table -->
			  	<table class="table">	
			    <tr>
			    	<th>名字</th>
			    	<th>颜色</th>
			    	<th>分类</th>
			    	<th>寓意</th>
			    	<th>产地</th>
			    	<th>单价</th>
			    	<th>操作</th>
			    </tr>
			    <c:forEach var="item" items="${list }">
			    <tr>
			    	<td>${item.getFlo_name() }</td>
			    	<td>${item.getFlo_color() }</td>
			    	<td>${item.getFlo_sort() }</td>
			    	<td>${item.getFlo_meaning() }</td>
			    	<td>${item.getFlo_place() }</td>
			    	<td>${item.getUnit_price() }</td>
					<td><a href="editFlower?fid=${item.getFlo_id()}">修改</a>  <a href="deleteFlower?fid=${item.getFlo_id()}">删除</a></td>
			    </tr>
			    </c:forEach>
			  </table>
		  	</div>
		  	<div class="panel-footer clearfix">
			  	<div class="pull-right">
				  	<a href="<%=path%>/addFlower">添加花卉</a>
			  	</div>
		  	</div>
		</div>
	</div>
</body>

</html>