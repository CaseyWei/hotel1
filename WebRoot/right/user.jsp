<%@ page language="java" import="java.util.* ,com.qy.hotel.dto.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>muser</title>
    </head>
    <body background="<%=basePath%>image/r.jpg">
    <%System.out.println("nnnnnnnn"); %>
        <!--<form  method="post" action="check/register_check.jsp">
		--><table  border="2"bordercolor="black" align="center" width="776" height="23" cellpadding="0" cellspacing="0">
    <tr><th colspan="10">用户预订信息</th></tr>
    <tr>
   	    <td align="center">订单号</td>
        <td align="center">用户姓名</td>
        <td align="center">酒店名称</td>
        <td align="center">房型</td>
        <td align="center">电话</td>
        <td align="center">身份证号</td>
        <td align="center">入住时间</td>
        <td align="center">退房时间</td>
        <td align="center">价格</td>
       
   </tr>
   
   <c:forEach var="order" items="${order}">
  
   		<tr>
   			<td align="center">${order.onumber}</td>
   			<td align="center">${order.uname}</td>
   			<td align="center">${order.hname}</td>
   			<td align="center">${order.fangxing}</td>
   			<td align="center">${order.phone}</td>
   			<td align="center">${order.shenfenzheng}</td>
   			<td align="center">${order.startime}</td>
   			<td align="center">${order.endtime}</td>
   			<td align="center">${order.price}</td>
   			
   		</tr>
   </c:forEach>
   </table>
   </body>
</html>
