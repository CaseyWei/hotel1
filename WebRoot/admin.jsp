<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'manage.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <frameset rows="15%,*" frameborder="yes" border="5">
  	 <frame src="top.jsp" name="top" scrolling="no" noresize="noresize"/>
  	 <frameset cols="10%,*" frameborder="yes" border="5">
  	 	<frame src="aleft.jsp" name="left" scrolling="no" noresize="noresize"/>
  	 	<frame src="HotelmessageSvl" name="right"  scrolling="no" noresize="noresize"/>
  	 </frameset>
  </frameset>
</html>
