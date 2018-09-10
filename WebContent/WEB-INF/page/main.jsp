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
		<div class="row">
			<div class="col-md-8"></div>
			<div class="col-md-4" style="text-align: right;"><a href="<%=path%>/myorder">我的订单</a>||<a href="<%=path %>/cart">购物车(<span id="buy_num">0</span>)</a> || 欢迎,<a>${user_now.getUserTruename() }</a></div>
		</div>
		<div class="panel panel-default">
		  <!-- Default panel contents -->
		  <div class="panel-heading">
		  	<h4>花卉列表</h4><br>
			  	<div class="row">
			  		<form action="search" method="get">
				  <div class="col-md-6">
				    <div class="input-group">
				      <input type="text" class="form-control" name="key" placeholder="Search for...">
				      <span class="input-group-btn">
				        <button class="btn btn-default" type="submit">搜索</button>
				      </span>
				    </div><!-- /input-group -->
				  </div>
				  <div class="col-md-6">
				  	<label class="radio-inline">
						<input type="radio" name="other" id="optionsRadios3" value="Flo_name" checked> 名字
					</label>
					<label class="radio-inline">
						<input type="radio" name="other" id="optionsRadios4"  value="Flo_color"> 颜色
					</label>
					<label class="radio-inline">
						<input type="radio" name="other" id="optionsRadios5"  value="Flo_sort"> 分类
					</label>
					<label class="radio-inline">
						<input type="radio" name="other" id="optionsRadios6"  value="Flo_meaning"> 寓意
					</label>
					<label class="radio-inline">
						<input type="radio" name="other" id="optionsRadios7"  value="Flo_place"> 产地
					</label>
				  </div>
				  </form>
			  	</div>
		  	</div>
			<div class="panel-body">
			  <!-- Table -->
			  <c:if test="${list_len != 0 }">
			  	<table class="table">	
			    <tr>
			    	<th>名字</th>
			    	<th>颜色</th>
			    	<th>分类</th>
			    	<th>寓意</th>
			    	<th>产地</th>
			    	<th>单价</th>
			    </tr>
			    <c:forEach var="item" items="${list }">
			    <tr>
			    	<td>${item.getFlo_name() }</td>
			    	<td>${item.getFlo_color() }</td>
			    	<td>${item.getFlo_sort() }</td>
			    	<td>${item.getFlo_meaning() }</td>
			    	<td>${item.getFlo_place() }</td>
			    	<td>${item.getUnit_price() }</td>
					<td><a id="${item.getFlo_id()}">购买</a></td>
			    </tr>
			    </c:forEach>
			  </table>
			  </c:if>
			  <c:if test="${list_len eq 0 }">
			  	暂无！请重新输入...
			  </c:if>
		  	</div>
		</div>
	</div>
</body>
<script type="text/javascript" src="<%=path%>/js/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('.table a').click(function(){
			var aa = $(this).attr("id");
			//页面购物车数字+1
			//先取值
			var buy_num = parseInt($("#buy_num").text());
			$("#buy_num").html(buy_num+1);
			//ID发送到后台
			$.ajax({
		    		type:'POST',
		    		url: 'buy',
		    		data: {
		    			id:aa
		    		},
		    		success:function(data){
		    			alert("添加成功")
		    		}
		    });
		})
	});
</script>
</html>