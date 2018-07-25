<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'select.jsp' starting page</title>
    
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
   <div align="center">
  <table width="100%" height="162" border="1">
    <tr>
      <td width="87"><div align="center">房间类型</div></td>
      <td width="74"><div align="center">房间编号</div></td>
      <td width="70"><div align="center">价格</div></td>
      <td width="302"><div align="center">配置设施及用品</div></td>
      <td width="84"><div align="center">住房积分</div></td>
      <td width="83"><div align="center">状态</div></td>
    </tr>
    <tr>
      <td><div align="center">豪华型</div></td>
      <td><div align="center">001</div></td>
      <td><div align="center">300</div></td>
      <td> <div align="center">淋浴房、电脑、浴巾、毛巾、牙膏、牙刷 </div></td>
      <td><div align="center">100</div></td>
      <td><div align="center">已预订</div></td>
    </tr>
    <tr>
      <td><div align="center">总统型</div></td>
      <td><div align="center">002</div></td>
      <td><div align="center">1000</div></td>
      <td> <div align="center">电视、浴巾、毛巾、牙膏、牙刷 </div></td>
      <td><div align="center">100</div></td>
      <td><div align="center">未预定</div></td>
    </tr>
    <tr>
      <td><div align="center">标准间</div></td>
      <td><div align="center">003</div></td>
      <td><div align="center">100</div></td>
      <td> <div align="center">电视、浴巾、毛巾、牙膏、牙刷 </div></td>
      <td><div align="center">100</div></td>
      <td><div align="center">已预订</div></td>
    </tr>
    <tr>
      <td><div align="center">海景房</div></td>
      <td><div align="center">004</div></td>
      <td><div align="center">500</div></td>
      <td> <div align="center">电视、浴巾、毛巾、牙膏、牙刷 </div></td>
      <td><div align="center">100</div></td>
      <td><div align="center">未预定</div></td>
    </tr>
  </table>
</div>
  </body>
</html>
