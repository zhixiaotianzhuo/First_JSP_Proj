<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.Connection"%>
<%@ page import = "java.sql.DriverManager"%>
<%@ page import = "java.sql.SQLException"%>
<%@ page import = "java.sql.PreparedStatement"%>
<%@ page import = "java.sql.ResultSet"%>
<%@ page import = "org.gjt.mm.mysql.Driver"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
	<title> 登陆操作页面 </title>
</head>

<body>
<center>

<h1> 登录操作 </h1>
<hr>
<%! // 定义若干数据库的连接常量
//	public static final String DBDRIVER = "org.gjt.mm.mysql.Driver";
	public static final String DBDRIVER = "com.mysql.jdbc.Driver";
	public static final String DBURL = "jdbc:mysql://localhost:3360/test?useUnicode=true&characterEncoding=UTF-8&autoReconnect=true&failOverReadOnly=false";
	public static final String DBUSER = "lan";
	public static final String DBPASS = "1233211234567";

%>
<%
	Connection conn = null; // 数据库连接
	PreparedStatement pstmt = null; // 数据库预处理
	ResultSet rs = null; // 查询要处理的结果集
	boolean flag = false; // 保存标记
	String name = null; // 保存真实姓名
%>
<%
	try{

	// 数据库连接操作
	Class.forName(DBDRIVER) ;
	conn = DriverManager.getConnection(DBURL,DBUSER,DBPASS);
	// 可以查询的得到匹配的 会输出最终结果
	// 得不到匹配的 会使得到结果为空
	String sql = "SELECT name FROM user WHERE userid = ? AND password = ?";
	pstmt = conn.prepareStatement(sql);  // pstmt 实例化
	pstmt.setString(1,request.getParameter("id"));
	pstmt.setString(2,request.getParameter("pwd"));
	rs = pstmt.executeQuery() ;// 执行查询 语句
	if(rs.next()){ // 如果有数据，则可以执行
		flag = true; // 表示登陆成功
		name = rs.getString(1);
	}	
}catch(Exception e){
	System.out.println(e.getMessage());
}	
finally{
	try{
		rs.close();
		pstmt.close();
		conn.close();
	}catch(Exception e){
		System.out.println(e.getMessage());
	}	
}
	// flag 表示登陆成功 或者 失败 此处 显示 登陆跳转逻辑
	if(flag){ // 成功
		// 下面是标签指令 标签指令必须写在 SCRIPT 之外
%>
		<jsp:forward page = "login_success.jsp">
			<jsp:param name = "uname" value = "<%=name%>"/>
		</jsp:forward>
<%		
	}else{ // 失败
%>
		<jsp:forward page = "login_failure.jsp"/>
<%
	}
%>
</center>
</body>

</html>