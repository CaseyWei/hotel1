<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">.
    
    <title>My JSP 'no1.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
 
  <body  background="<%=basePath%>image/r.jpg">
 <pre> 
 酒店简介：            
    酒店地处郑州未来大道与纬四路交叉口东侧，与郑州商品交易所隔街相望，可步行至郑州商品交易所与会展中心； <br>
  距离新郑国际机场约33.5公里，驾车约36分钟，需乘坐民航大巴的客户可步行到民航大酒店坐车；距离郑州火车 <br>
  站约6公里，驾车约20分钟，距离郑州高铁站约9.4公里，驾车约19分钟；至民航大酒店、曼哈顿商业广场、沃尔 <br>
  玛、家乐福、丹尼斯、会展中心等，步行约10-15分钟。 </pre>
  <pre> 
  网络设施： 
      公共区域提供wifi 
  </pre><pre>  停车场：
      酒店提供免费停车位
      </pre>
  </body>
</html>

