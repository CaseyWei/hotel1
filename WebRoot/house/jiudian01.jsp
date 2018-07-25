<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'jiudian01.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <frameset rows="15%, *" frameborder="yes"  >
  
    <frame src="house/top01.jsp"  name="header" scrolling="no" noresize="noresize"/>
    
    <frameset cols="15%, *" >
    	
    	<frame src="house/left01.jsp" name="left" scrolling="auto" noresize="noresize"/>
        <frame src="house/jiudian.jsp" name="main" scrolling="auto" noresize="noresize"/>
    </frameset>
    </frameset>


     <body background="../image/r.jpg">

    </body>

</html>