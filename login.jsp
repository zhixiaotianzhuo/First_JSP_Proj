<%@ page language="java" import="java.sql.*" pageEncoding="UTF-8"%>

<html>

<head>

<title> 登陆界面 </title>

</head>

<body>
<center>

<h1> 登录操作 </h1>
<hr>
	<form action = "login_check.jsp" method = "post">
		<table = border = "1">
			<tr>
				<td colspan = "2">
					用户登录
				</td>
			</tr>
			<tr>  
				<td>
					用户昵称
				</td>
				<td>
					<input type = "text" name = "id">
				</td>
			</tr>
			<tr>  
				<td>
					用户密码
				</td>
				<td>
					<input type = "password" name = "pwd">
				</td>
			</tr>
			<tr>
				<td colspan = "2">
					<input type = "submit" value = "登陆">
					<input type = "reset" value = "重置">
				</td>
			</tr>
			<tr> 
</center>
</body>

</html>