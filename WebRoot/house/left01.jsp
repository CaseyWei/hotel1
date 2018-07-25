
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'left01.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body background="<%=basePath%>houseimg/2.jpg">
<div id="">
    <div id="menu">
      <ul>
       
            <br><br><br><a href="<%=basePath%>house/no1.jsp" target="main"><img height="140" width="140" src="<%=basePath%>houseimg/hcz.jpg"></a>
            <li><a href="<%=basePath%>house/no1.jsp" target="main">&nbsp;火车站店</a></li>
            
            <a href="<%=basePath%>house/no2.jsp" target="main"><img height="140" width="140" src="<%=basePath%>houseimg/lzh.jpg"></a>
            <li><a href="<%=basePath%>house/no2.jsp" target="main">&nbsp;龙子湖店</a></li>
            
            <a href="<%=basePath%>house/no3.jsp" target="main"><img height="140" width="140" src="<%=basePath%>houseimg/gxq.jpg"></a>
            <li><a href="<%=basePath%>house/no3.jsp" target="main">&nbsp;高新区店</a></li>
        </ul>
    </div>
</div>
  </body>
</html>
