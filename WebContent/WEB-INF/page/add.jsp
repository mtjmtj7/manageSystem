<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>添加</title>
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
      <form class="form-signin" action="addUser" method="post">
        <h2 class="form-signin-heading">添加账号</h2>
        <label for="inputText" class="sr-only">账号</label>
        <input type="text" id=""inputText"" class="form-control" name="userName" placeholder="账号" required autofocus>
      	<br>
        <label for="inputPassword" class="sr-only">密码</label>
        <input type="password" id="inputPassword" class="form-control" name="userPass" placeholder="密码" required>
		<br>
        <label for="inputt" class="sr-only">真实姓名</label>
        <input type="text" id="inputt" class="form-control" name="userTruename" placeholder="真实姓名" required>
		<br>
        <label for="inputuserAddress" class="sr-only">地址</label>
        <input type="text" id="inputuserAddress" class="form-control" name="userAddress" placeholder="地址" required>
		<br>
   		<div class="form-group">性别：
			<select class="form-control" name="userSex" class="selectpicker show-tick" title="请选择" data-live-search="true" data-size="5">
				<option value="n">男</option>
				<option value="nv">女</option>
				<option value="nvv">其他</option>
			</select>
		</div>
		<br>
        <label for="inputuserPhone" class="sr-only">手机号</label>
        <input type="text" id="inputuserPhone" class="form-control" name="userPhone" placeholder="手机号" required>
		<br>
        <button class="btn btn-lg btn-primary btn-block" type="submit">提交</button>
        <br>
      </form>
    </div> <!-- /container -->
</body>
</html>