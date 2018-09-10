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
<title>修改信息</title>
<link rel="stylesheet" href="<%=path %>/css/bootstrap.min.css">
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
      <form:form class="form-signin" action="update" method="post" modelAttribute="user">
        <h2 class="form-signin-heading">修改信息</h2>
         账号：<form:input path="userName" class="form-control" placeholder="账号"/>
      	<br>
   	密码：<form:input path="userPass" class="form-control" placeholder="密码"/>
		<br>
    真实姓名：    <form:input path="userTruename" class="form-control" placeholder="真实姓名"/>
		<br>
    地址：    <form:input path="userAddress" class="form-control" placeholder="地址"/>
		<br>
		<br>
     手机号：   <form:input path="userPhone" class="form-control" placeholder="手机号"/>
		<br>
        <button class="btn btn-lg btn-primary btn-block" type="submit">修改</button>
        <br>
      </form:form>
    </div> <!-- /container -->
</body>
</html>