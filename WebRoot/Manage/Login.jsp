<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body  background="<%=basePath%>image/r.jpg">
  <form method="get" action="AdminSvl" target="_top">
  <br/><br/><br/>
  <table width="300" align="center">
  <tr>
  	  <td colspan="2" align="center"><h2>管理员登录界面</h2></td>
  </tr>
  <tr>
	  <td>用户账号 </td>
	  <td><input name="userid"type="text"/></td>
  </tr>
  <tr>
	  <td>用户密码</td>
	  <td><input name="userpss"type="password"/></td>
  </tr>
  <tr>
 	 <td colspan="2" align="center">
	 	 <input type="submit"name="sub"value="登录"/>
	 	 &nbsp;&nbsp;
	 	 <input type="reset"name="res"value="取消"/>
 	 </td>
  </tr>
  </table>
  </form>
   </body>
</html>
