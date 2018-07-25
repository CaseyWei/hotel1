<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'enter.jsp' starting page</title>
    
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
 <div >
   <table width="70%" border="1" align="center">
  <tr>
    <td width="72" rowspan="4"><div align="center">网上预订</div></td>
    <td width="80"><div align="center">用户名</div></td>
    <td width="86"><div align="center">联系方式</div></td>
    <td width="57"><div align="center">房间编号</div></td>
    <td width="102"><div align="center">起始时间</div></td>
    <td width="72"><div align="center">截止时间</div></td>
    <td width="72"><div align="center">入住情况</div></td>
  </tr>
  <tr>
    <td><div align="center">帅帅</div></td>
    <td><div align="center">123456789012</div></td>
    <td><div align="center">001</div></td>
    <td><div align="center">2014-6-5</div></td>
    <td><div align="center">2014-6-7</div></td>
    <td><div align="center">已预订</div></td>
  </tr>
  <tr>
    <td><div align="center">琳琳</div></td>
    <td><div align="center">123456789012</div></td>
    <td><div align="center">002</div></td>
    <td><div align="center">2014-6-5</div></td>
    <td><div align="center">2014-6-7</div></td>
    <td><div align="center">入住</div></td>
  </tr>
  <tr>
    <td><div align="center">云云</div></td>
    <td><div align="center">123456789012</div></td>
    <td><div align="center">003</div></td>
    <td><div align="center">2014-6-5</div></td>
    <td><div align="center">2014-6-7</div></td>
    <td><div align="center">已预订</div></td>
  </tr>
</table>
</div>
  </body>
</html>
