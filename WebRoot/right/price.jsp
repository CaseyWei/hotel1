<%@ page language="java" import="java.util.*,com.qy.hotel.dto.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'price.jsp' starting page</title>
    
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
    <table width="45%"  align="center" border="1" cellpadding="0" cellspacing="0" >
    
  <tr>
    <td width="79" height="25" ><div align="center">房间编号</div></td>
    <td width="80"><div align="center">房间类型</div></td>
    <td width="80"><div align="center">房间位置</div></td>
    <td width="110"><div align="center">房间价格</div></td>
    <td width="98"><div align="center">房间设施</div></td>
  </tr>
 
  
  <c:forEach var="price" items="${allPrice}">
  <tr>
  	<td align="center">${price.rnumber}</td>
  	<td align="center">${price.fangxing}</td>
    <td align="center">${price.position }</td>
    <td align="center">${price.price }</td>
    <td align="center">${price.ficilitiesgoods }</td>
  </tr>
</c:forEach>
 
</table>
 </body>
</html>
