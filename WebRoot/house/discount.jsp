<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'discount.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="<%=basePath%>Css/dis.css">


  </head>
  
  <body background="../image/r.jpg">
 
  <div id="dis">
  <table align="center">
  		<tr>
  			<td><a href="#"><img width="200" height="200"  src="<%=basePath%>images/picture01.jpg" border="1" /></a></td>
  			<td><a href="#"><img width="200" height="200"  src="<%=basePath%>images/picture02.jpg" border="1" /></a></td>
  			<td><a href="#"><img width="200" height="200"  src="<%=basePath%>images/picture03.jpg" border="1" /></a></td>
  			<td><a href="#"><img width="200" height="200"  src="<%=basePath%>images/picture07.jpg" border="1" /></a></td>
  			
  		</tr>
  		<tr>
  			<td><a href="#"><img width="200" height="200"  src="<%=basePath%>images/picture04.jpg" border="1" /></a></td>
  			<td><a href="#"><img width="200" height="200"  src="<%=basePath%>images/picture05.jpg" border="1" /></a></td>
  			<td><a href="#"><img width="200" height="200"  src="<%=basePath%>images/picture06.jpg" border="1" /></a></td>
  			<td><a href="#"><img width="200" height="200"  src="<%=basePath%>images/picture08.jpg" border="1" /></a></td>
  		</tr>
  </table>
  	
  	</div>
  
  </table>
  <!--
    <table align="center" border="1" width="1000" height="400">
 <tr> 
    <th colspan="">查看房型</th>
    
    <td valign="top">&nbsp;&nbsp; 床&nbsp; 型&nbsp; <br></td><td valign="top">&nbsp; 电&nbsp; 器&nbsp; <br></td><td valign="top">&nbsp;&nbsp; 光&nbsp; 线&nbsp; <br></td>
    <td valign="top">&nbsp;&nbsp; 一次性用品<br></td><td valign="top">&nbsp;&nbsp; 可入住人数&nbsp; <br></td><td valign="top">&nbsp;&nbsp;&nbsp; 选 择&nbsp; <br></td>
    </tr>
    
    
        <tr> <td ><img src="<%=basePath%>houseimg/bzj.jpg" width="300px" height="150px"> <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 标准间</td>
        
         <td ><%--= --%><br></td> <td><%--= --%><br></td><td><%--= --%><br></td><td><%--= --%><br></td>
         <td><%--= --%><br></td><td valign="top"><br><br><br><br><br><a href="<%=basePath%>house/wmf02.jsp">预定</a><br></td>
         
         </tr>
   
     <tr>
         <td ><img src="<%=basePath%>houseimg/ptd.jpg" width="300px" height="150px"> <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 普通单人间</td>
         <td><%--= --%><br></td><td><%--= --%><br></td><td><%--= --%><br></td><td><%--= --%><br></td>
         <td><%--= --%><br></td><td valign="top"><br><br><br><br><br><a href="<%=basePath%>house/wmf02.jsp">预定</a><br></td>
         </tr>
   
     <tr>
         <td ><img src="<%=basePath%>houseimg/hhd.jpg" width="300px" height="150px"> <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 豪华单人间</td>
         <td><%--= --%><br></td><td><%--= --%><br></td><td><%--= --%><br></td><td><%--= --%><br></td>
         <td><%--= --%><br></td><td valign="top"><br><br><br><br><br><a href="<%=basePath%>house/wmf02.jsp">预定</a><br></td>
         </tr>
   
    
     <tr>
         <td ><img src="<%=basePath%>houseimg/hht.jpg" width="300px" height="150px"> <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 豪华套房</td>
         <td><%--= --%><br></td><td><%--= --%><br></td><td><%--= --%><br></td><td><%--= --%><br></td><td><%--= --%><br></td>
         <td valign="top"><br></a><br><br><br><br><a href="<%=basePath%>house/wmf02.jsp">预定</a><br></td>
         </tr>
   
   
 --></body>
</html>
