<%@ page language="java" import="java.util.*,com.qy.hotel.dto.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MyJsp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="<%=basePath%>Css/css.css">
	

  </head>
  
  <body background="./image/t.png">
  
    <!--<font size="17" style="color:blue">欢迎进入酒店连锁</font>
    --><div id="max">
    <div id="in">
    <img alt="后退" src="image/8.png"><a href="<%=basePath%>right/admin.jsp" target="right">账号管理</a>
    	<img alt="注销" src="image/btn_map.gif" class="image"> <a href="<%=basePath%>front/index.jsp" target="_top">注销</a>
    	<!--<img alt="后退" src="image/btn_right.gif"><a href="#" target="right">前进</a> 
    	--></div> 
    	<div id="mid">
   <c:if test="${user!=null}">
     		当前用户：${user.id}
     	</c:if></div> 
 
    <div id="banner">
     
    	当前时间：<% out.print(new java.text.SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(new Date())); %>
    </div>
</span>
    </div>
  </body>
</html>
