<%@ page language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.util.List,com.qy.hotel.dto.Hotel"%>
<%@ page import="com.qy.hotel.dao.BaseDao" %>
<%
String msg_info=(String)request.getAttribute("msg_info");
if(msg_info==null){
	msg_info="";
}

String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户订单信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  <script>
  function f2(id)
  {
	
	  var oid=id;
	  /*var orderId=document.getElementById("OrderId");【注意】由于id具有唯一性在循环中不要使用id作为参数进行传递或取值*/
	 // var id=orderId.innerHTML;
	 // alert("id="+oid);
  window.location.href="house/manageRoom.jsp?id="+oid;
  } 
  </script>
  </head>
  
  <body background="<%=basePath%>image/r.jpg">
  <div align="center">
      <font color="red"><%=msg_info%></font>
    <table border="1" cellspacing="0"  width="50%" align="center" >
    <tr><th colspan="8" align="center">用户订单</th></tr>
    <tr><th>订单号</th><th>姓名</th><th>电话号</th><th>房间类型</th><th>入住时间</th><th>退房时间</th><th>价格</th><th>操作</th></tr>
	<c:forEach var="order" items="${msg}">
		<tr>
			<td align="center"  id="OrderId">${order.onumber}</td>
			<td align="center"><%=session.getAttribute("uname")%></td> 
	        <td align="center">${order.phone}</td>
		    <td align="center">${order.fangxing}</td>
		    <td align="center">${order.startime}</td>
		    <td align="center">${order.endtime}</td>
		   	<td align="center">${order.price}</td>
		    <td><input type="button"  value="修改订单信息"  onclick="f2(${order.onumber})"></td>
   	   </tr>
    </c:forEach>
    </table>  
  </div>
  </body>
</html>
