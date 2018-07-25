<%@ page language="java" import="java.util.*"  pageEncoding="UTF-8"%>
<%
String msg=(String)request.getAttribute("msg");
if(msg==null){
	msg="";	
}
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP '预定信息确定' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
		function clearTime1(){
			var startime=document.getElementById("startime");
				startime.style.background="red";
			startime.value="";
		}
		function clearColor(){
			var startime=document.getElementById("startime");
			startime.style.background="white";
		}
		function clearTime2(){
			var endtime=document.getElementById("endtime");
			endtime.style.background="red";
			endtime.value="";
		}
		function clearCol(){
			var endtime=document.getElementById("endtime");
			endtime.style.background="white";
		}
	</script>
  </head>
  

   <body  background="<%=basePath%>image/r.jpg">
   <font color="red"><%=msg%></font>
       <form  method="post" action="UserReserveOrder">
        <%--<form  method="post" action="<%=basePath%>house/DFcheck.jsp">
		--%><table  align="center" width="677" height="304">
    		<tr><th colspan="2">预定信息确定</th></tr>
		  	<tr>
		   		<td>房型&nbsp;&nbsp;&nbsp;&nbsp;</td>
		        <td>
		        <input type="text" name="fangxing" value="<%=request.getParameter("fangxing") %>" readonly="readonly">
		    	</td>
		    </tr> 
		  
			<tr>
		        <td>用户名</td>
		        <td><input name="uname" type="text"value="<%=session.getAttribute("uname") %>" readonly="readonly"></td>
		    </tr>
			<tr>
		        <td>身份证号</td>
		        <td><input name="uid" type="text"></td>
		    </tr>
		    <tr>
		        <td>联系电话</td>
		        <td><input name="tel" type="text"></td>
		    </tr>
		    <tr>
		        <td>邮箱</td>
		        <td><input name="email" type="text"></td>
		    </tr>
		    <tr>
		        <td>起始时间</td>
		        <td><input id="startime" name="time01" type="text" style="color:gray" value="输入格式：yyyy-MM-dd" onfocus="clearTime1();" onblur="clearColor();"></td>
		    </tr>
		    <tr>
		        <td>结束时间</td>
		        <td><input id="endtime" name="time02" type="text" style="color:gray" value="输入格式：yyyy-MM-dd" onfocus="clearTime2();" onblur="clearCol();"></td>
		    </tr>
		    <tr>
		        <td>价格</td>
		        <td>
		        <input name="price" readonly="readonly" value="<%=request.getParameter("price")%>">
		        </td>
		    </tr>
		    <tr align="center">
		        <td colspan="2">
		           <input name="sure" type="submit" value="确认" >
		           <input name="clear" type="reset" value="取消">
		         </td>   
		   </tr>
		</table>
	  </form>
	</body>
</html>

  
