<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
    
    <title>My JSP 'jm.jsp' starting page</title>
    
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
  
      <%--<form  method="post" action="front/jmcheck.jsp">
	--%><table  align="center" width="600" border="0" >
	    <tr><th colspan="3">填写申请表</th></tr>
	    <tr><td colspan="3">为酒店服务</td></tr>
		<tr><td colspan="3">免费添加您的酒店：我们帮您卖床位！
	借此机会免费加入这个星际酒店预订系统。让您的酒店在全世界都可以直接预订，免费预订！
	最低标准：所有可以用于预订的房间必须有淋浴/厕所或者浴室/厕所。
	发电子邮件给我们。我们将很乐意联系您。当然，您也可以致电随时同我们联系：400 400 88500</td></tr>
	</table>
	<br>
	 <form  method="post" action="ApplyMessageSvl">
	<table align="center" border="0" >
	   <tr><td colspan="2" align="center"><font color="red"><%=msg%></font></td></tr>
	   <tr>
	        <td width="90">酒店名称</td>
	        <td><input name="hname" type="text"></td>
	    </tr>
	    
	     <tr>
	        <td>负责人 </td>
	        <td><input name="name" type="text" ></td>
	    </tr>
	    
	    <tr>
	        <td>负责人情况 </td>
	        <td>
	        	<select name="fuzerenqingkuang">
	        		<option>--请选择--</option>
	        		<option value="个人">个人</option>
	        		<option value="公司">公司</option>
	        	</select>
	        </td>
	    </tr>
	    
	    <tr>
	        <td>联系电话</td>
	        <td><input name="tele" type="text"></td>
	    </tr>
	    
	    <tr>
	        <td>具体地址</td>
	        <td><textarea name="addr" cols="15" ></textarea></td>
	    </tr>
	    
	    <tr>
	        <td>加盟时间</td>
	        <td><input name="time" type="text"  value="<%out.print(new java.text.SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(new Date())); %>" readOnly></td>
	    </tr>
	 
	    <tr>
	        <td colspan="2" align="center">
		        <input type="submit" value="提交"/>
		        &nbsp; &nbsp;
		        <input type="reset" value="重置">
	        </td>
	    </tr>
	</table>
  </form>               
</body>
</html>
