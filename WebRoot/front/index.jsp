<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link href="../Css/admin.css" type="text/css" rel="stylesheet">
	

  </head>

<FRAMESET border=0 frameSpacing=0 rows="15%,*" frameBorder="yes" bordercolor="white";>
<FRAME name=header src="<%=basePath%>front/header.htm" frameBorder="yes" bordercolor="white" noResize scrolling=no>
<FRAMESET cols="10%,*">
<FRAME name=menu src="<%=basePath%>front/menu.htm" frameBorder="yes" bordercolor="white" noResize scrolling=no>
<FRAME name=main src="<%=basePath%>front/main.jsp" frameBorder="yes" bordercolor="white" noResize scrolling=auto>
</FRAMESET>
</FRAMESET>
<noframes>
</noframes>
</html>
