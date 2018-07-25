<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String msg=(String)request.getAttribute("msg");
if(msg==null){
	msg="";
}
String id=request.getParameter("id");
System.out.print("id="+id);
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'manageRoom.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body background="<%=basePath%>image/r.jpg" >
  <h2 align="center">修改订单信息</h2>
   <font style="margin-left:470px" color="red"><%=msg%></font> 
  <form  action="PersonUpdateSvl" method="post"  >  
      <table align="center" >
      <tr>
      	<td>订单号：</td><td ><input name="id" value="<%=id%>" readOnly></td>
      </tr>
      <tr>
      <td>姓名:</td><td> <%=session.getAttribute("uname") %> </td>
      </tr>
      <tr>
      <td>房间类型:</td><td> <input name="fangxing" type="text"/></td>
      </tr>
      
      <!--
      <tr>
      <td>房间数量:</td><td> <input name="account" type="text"/></td>
      </tr>
      -->
      <tr>
      <td align="center"><input type="submit" value="确认"></td>
      <td  align="center"><input type="reset" value="取消"/></td>
      <td><a href='CheckLoginSvl'>返回</a></td>
      </tr>
      </table>
      
  </form>
  
  
  <br>
  </body>
</html>
