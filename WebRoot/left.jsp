<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'left.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>Css/introduce.css">


  </head>
  
  <body background="./image/l.jpg">
  <br><br><br><br>
	<a href="roommessageSvl" target="right" >房间信息查询</a>
	<br/><br>
	<a href="right/message.jsp" target="right">房间信息录入</a>
	<br/><br>
	<a href="OrderSvl" target="right">用户订单查询</a>
	<br/><br>
	<a href="<%=basePath%>front/index.jsp" target="_top">退出系统</a>
	<a href="right/enter.jsp" target="right" style="display: none">房间入住情况</a>
	<br/><br>
	<!--<a href="right/kongxian.html" target="right">空置率统计</a>
	<br/><br>
	<a href="right/income.html" target="right">收入统计</a>
	<br/><br>-->

  </body>
</html>
