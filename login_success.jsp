<%@ page language="java" import="java.sql.*" pageEncoding="UTF-8"%>
<html>

	<head>
		<title> 登陆成功界面 </title>
	</head>

	<body>
		<center>

			<h1> 登录操作 </h1>
			<h2> 登录成功 </h2>
			<h2> 欢迎<font color = "red"><%= request.getParameter("uname")%></font> 光临 ！</h2>

		</center>
	</body>

</html>