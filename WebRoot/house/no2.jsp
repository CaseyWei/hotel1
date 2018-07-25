<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'no2.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body background="<%=basePath%>image/r.jpg">
    <pre> 
 酒店简介：            
    速8酒店郑州第三大街店位于第三大街与航海东路交汇处，地处郑州市经济开发区中心地带。毗邻中原第一福塔，
    距航海体育场仅1公里，紧邻中州大道，距机场高速口3公里，距离郑东新区CBD会展中心约10分钟车程，地理位
    置优越，交通便利。酒店以简约、时尚的风格为宾客提供干净友好的服务，是商务、旅游...
</pre>
  <pre> 
  网络设施： 
      公共区域提供wifi 
  </pre><pre>  停车场：
      酒店提供免费停车位
      </pre>
  </body>
</html>

