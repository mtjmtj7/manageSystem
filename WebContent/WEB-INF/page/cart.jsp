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

		<div class="panel panel-default">
		  <!-- Default panel contents -->
		  <div class="panel-heading">
		  	<h4>购物车</h4><br>
		  	</div>
			<div class="panel-body">
				<table class="table">	
				    <tr>
				    	<th>名字</th>
				    	<th>颜色</th>
				    	<th>分类</th>
				    	<th>产地</th>
				    	<th>单价</th>
				    	<th>数量</th>
				    </tr>
				     <c:forEach var="item" items="${list }">
					    <tr>
					    	<td>${item.getFlo_name() }</td>
					    	<td>${item.getFlo_color() }</td>
					    	<td>${item.getFlo_sort() }</td>
					    	<td>${item.getFlo_place() }</td>
					    	<td>${item.getUnit_price() }</td>
					    	<c:set var="longKey" value="${item.getFlo_id() }"  />
							<td width="60px"><input id="${item.getFlo_id() }" name="quantity" type="text" class="form-control" value="${map[longKey]}"></td>
					    </tr>
					   </c:forEach>
			    </table>
			</div>
			<div class="panel-footer">
				<button type="button" id="btn" class="btn btn-primary">购买</button>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript" src="<%=path%>/js/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('.table input').blur(function(){
			var num = $(this).val();
			var aa= $(this).attr("id");
			$.ajax({
	    		type:'POST',
	    		url: 'change',
	    		data: {
	    			id:aa,
	    			num:num
	    		},
	    		success:function(data){
	    			if(data=="yes"){
	    				alert("修改 成功");
	    			}
	    			else{
	    				alert("修改失败！");
	    			}
	    		}
	   		 });
		});	
		
		//购买
		$("#btn").click(function(){
			$.ajax({
	    		type:'POST',
	    		url: 'pay',
	    		success:function(data){
	    			if(data=="yes"){
	    				alert("购买成功");
	    				window.location.href="<%=path%>/myorder";
	    			}
	    			else{
	    				alert("购买失败！");
	    			}
	    		}
	   		 });
		})
	});
</script>
</html>