<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>修改花卉信息</title>
<link rel="stylesheet" href="<%=path%>/css/bootstrap.min.css">
<style type="text/css">
body {
  padding-top: 40px;
  padding-bottom: 40px;
  background-color: #eee;
}

.form-signin {
  max-width: 330px;
  padding: 15px;
  margin: 0 auto;
}
.form-signin .form-signin-heading,
.form-signin .checkbox {
  margin-bottom: 10px;
}
.form-signin .checkbox {
  font-weight: normal;
}
.form-signin .form-control {
  position: relative;
  height: auto;
  -webkit-box-sizing: border-box;
     -moz-box-sizing: border-box;
          box-sizing: border-box;
  padding: 10px;
  font-size: 16px;
}
.form-signin .form-control:focus {
  z-index: 2;
}
.form-signin input[type="email"] {
  margin-bottom: -1px;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}
.form-signin input[type="password"] {
  margin-bottom: 10px;
  border-top-left-radius: 0;
  border-top-right-radius: 0;
}
</style>
</head>
<body>
<div class="container">
      <form class="form-signin" action="addOneFlower" method="post">
        <h2 class="form-signin-heading">修改花卉信息</h2>
          名字：<input type="text" name="Flo_name" class="form-control" placeholder="名字"/>
      	<br>
   	颜色：<input type="text" name="Flo_color" class="form-control" placeholder="颜色"/>
		<br>
          分类：<input type="text" name="Flo_sort" class="form-control" placeholder="分类"/>
		<br>
          寓意：<textarea name="Flo_meaning" class="form-control" placeholder="寓意"></textarea>
		<br>
		<br>
          产地：<input type="text" name="Flo_place" class="form-control" placeholder="产地"/>
		<br>
         单价：<input type="text" name="unit_price" class="form-control" placeholder="单价"/>
		<br>
        <button class="btn btn-lg btn-primary btn-block" type="submit">添加</button>
        <br>
      </form>
    </div> <!-- /container -->
</body>
</html>