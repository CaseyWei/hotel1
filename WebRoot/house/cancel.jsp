<%@ page  language="java" import="java.sql.*,com.qy.hotel.dto.*" errorPage="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%
String msg_info=(String)request.getAttribute("msg_info");
	if(msg_info==null){
		msg_info="";
	}
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>
<html>
<head>
<base href="<%=basePath%>">
<title>用户退单</title>
  <script>
  function f2(id)
  {
	 
	  var oId=id;
	  /*var orderId=document.getElementById("OrderId");【注意】由于id具有唯一性在循环中不要使用id作为参数进行传递或取值*/
	 // var id=orderId.innerHTML;
	 // alert("id="+oid);
  window.location.href="BackSvl?id="+oId;
  } 
  </script>
</head>

<body background="<%=basePath%>image/r.jpg">
	<div align="center">
	<font color="red"><%=msg_info%></font>
	  <table border="1" cellspacing="0"  width="50%" align="center" >
	    <tr><th colspan="8" align="center">用户退单</th></tr>
	    <tr><th>订单号</th><th>姓名</th><th>电话号</th><th>房间类型</th><th>入住时间</th><th>退房时间</th><th>价格</th><th>操作</th></tr>
		<c:forEach var="order" items="${order}">
		<tr>
			<td align="center"  id="OrderId">${order.onumber}</td>
			<td align="center"><%=session.getAttribute("uname")%></td> 
	        <td align="center">${order.phone}</td>
		    <td align="center">${order.fangxing}</td>
		    <td align="center">${order.startime}</td>
		    <td align="center">${order.endtime}</td>
		   	<td align="center">${order.price}</td>
		    <td><input type="button"  value="退单"  onclick="f2(${order.onumber})"></td>
   	   </tr>
    </c:forEach>
    </table>  
  </div>
	<%--</form>
--%></body>
</html>