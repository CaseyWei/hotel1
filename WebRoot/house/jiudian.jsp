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
    
    <title>My JSP 'JiuDian.jsp' starting page</title>
    
	<meta http-equiv="Cotent-Type" content="text/html;charset=gbk">
	
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body background="<%=basePath%>image/r.jpg">

<table align="center" border="1" width="1000" height="80"><!--

 <tr> 
    <td valign="top">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; �Ƶ���<br></td><td valign="top">&nbsp;&nbsp;&nbsp; �� ��&nbsp;&nbsp; <br></td><td valign="top">&nbsp;&nbsp;&nbsp; �˿����۵ȼ�&nbsp; <br></td><td valign="top">&nbsp;&nbsp;&nbsp; ��&nbsp;�� &nbsp;   </td>
    <td valign="top">&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; ��&nbsp;ַ &nbsp;&nbsp;&nbsp;&nbsp; <br></td>
    <td valign="top">Ԥ���Ƶ�</td>
    </tr>
  	 --><tr>
        	 <!--<td>
		         <a href="<%=basePath%>house/no3.jsp">
		         <img height="300" width="300" src="<%=basePath%>houseimg/ptd.jpg"> 
		         </a><br> <a href="<%=basePath%>house/no2.jsp">���Ӻ���</a>
	         </td>
	         --><td>
	         
	          
	         <c:forEach var="hotel" items="${rooms}">
	         <img height="300" width="300" src='"../"+${hoetl.list.img }'>
	          <form action="YDCheckLoginSvl" method="post"> 
	        <table  width="500" cellpadding="0" cellspacing="0">
	         	<tr>
	         		<td colspan="4">${hotel.hname }</td>
	         	</tr>
	         	<tr></tr>
	         	<tr></tr>
	         	<tr></tr>
	         	<tr></tr>
	         	<tr></tr>
	         	<tr>
	         	<td colspan="4">��ַ��${hotel.addr }</td>
	         	</tr>
	         	<tr></tr>
	         	<tr></tr>
	         	<tr></tr>
	         	<tr></tr>
	         	<tr></tr>
	         	
	         	<tr></tr>
	         	<tr></tr>
	         	<tr></tr>
	         	<tr></tr>
	         	
	         	 <tr>
	         		<td align="center">����</td>
	         		<td>���м�</td>
	         		<td>��̬</td>
	         		<td>Ԥ��</td>
	         	</tr>
	         	 <c:forEach var="room" items="${hotel.list}">
	         	<tr>
		         	<td></td>
	         		<td align="center"><input type="hidden" name="fangxing" value="${room.fangxing}"/>${room.fangxing}</td>
	         		<td><input type="hidden" name="price" value="${room.price}"/>${room.price }</td>
	         		<td>${room.position }</td>
	         		<td>
	         		 <!-- <a  href="<%=basePath%>YDCheckLoginSvl">Ԥ��</a> -->
	         		<input type="submit" name="Ԥ��" value="Ԥ��"/></td>
	         	</tr>
	         	   
	         	</c:forEach>
	         	
	         	</table>
	         	 </form> 
	         	<hr/>
	         	</c:forEach>
	         	
	         	
	         	
	         	
	      
	         
	         </td>
	         <!--<td valign="top"></td>
	         <td valign="top"></td>
	         <td valign="top"><br></td><td valign="top"><br></td>
	         <td><a href="<%=basePath%>house/wmf01.jsp">�鿴����</a><br></td>
         --></tr><!--
         
      <tr>
        <td><a href="<%=basePath%>house/no1.jsp"><img src="<%=basePath%>houseimg/hhd.jpg"> </a><br><a href="<%=basePath%>house/no1.jsp">��վ��</a></td>       
         
         
         <td valign="top"><br></td><td valign="top"><br></td><td valign="top"><br></td><td valign="top"><br></td><td><a href="<%=basePath%>house/wmf01.jsp">�鿴����</a><br></td>
         </tr>
   
     <tr>
         <td><a href="<%=basePath%>house/no2.jsp"><img src="<%=basePath%>houseimg/hht.jpg"></a><br><a href="<%=basePath%>house/no2.jsp">¤��·��</a></td>
         
         <td valign="top"><br></td><td valign="top"><br></td><td valign="top"><br></td><td valign="top"><br></td><td><a href="<%=basePath%>house/wmf01.jsp">�鿴����</a><br></td>
         </tr>
   
     
   
    
     --><!--<tr>
         <td><a href="<%=basePath%>house/no2.jsp"><img height="150" width="300" src="<%=basePath%>houseimg/gxq.jpg"> </a><br><a href="<%=basePath%>house/no4.jsp">��������</a></td>
         <td valign="top"><br></td><td valign="top"><br></td><td valign="top"><br></td><td valign="top"><br></td><td><a href="<%=basePath%>house/wmf01.jsp">�鿴����</a><br></td>
         </tr>
   
   --></table><td valign="top"><br></td><br>
    
    
</html>
