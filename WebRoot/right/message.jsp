<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'message.jsp' starting page</title>
    
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
  	<form action="HouseMessageSvl" method="post">
  		 <table width="388" border="1" align="center">
  		 <tr>
	    <td width="116">酒店编号</td>
	    <td width="256"><label for="textfield"></label>
	    <input type="text" name="hnumber" id="textfield" value="${user.hnumber}"  readOnly></td>
	  </tr>
  		<tr>
	    <td width="116">房间编号</td>
	    <td width="256"><label for="textfield"></label>
	    <input type="text" name="number" id="textfield"></td>
	  </tr>
	  <tr>
	    <td>房间类型</td>
	    <td><label for="select3"></label>
	      <select name="selroom" id="select2">
	      	<option value="--请选房型--">--请选房型--</option>
	      	<option value="豪华型">豪华型</option>
	      	<option value="标准型">标准型</option>
	      	<option value="总统型">总统型</option>
	    </select>
	    </td>
 	 </tr>

  <tr>
    <td>房间位置</td>
    <td><label for="select"></label>
      <select name="selposition" id="select">
      	<option value="--请选择--">--请选择--</option>
      	<option value="朝阳临街">朝阳临街</option>
      	<option value="背阴">背阴</option>
      	<option value="临海">临海</option>
    </select></td>
  </tr>
  
    <tr>
    <td>价格</td>
    <td><label for="select2"></label>
      <select name="selprice" id="select2">
      	<option value="--请选--">--请选择--</option>
      	<option value="50">50</option>
      	<option value="100">100</option>
      	<option value="90">90</option>
      	
    </select></td>
  </tr>
  <tr>
    <td>配套设施及用品</td>
    <td><label for="textarea"></label>
    <textarea name="ficilitiesgoods" id="textarea"></textarea></td>
  </tr>
  <tr>
    <td colspan="2">
    <div align="center">
    <input type="submit" value="提交"/>
    <!--<button onclick="javascript:location='PriceSvl'"><img src="<%=basePath%>image/btn_save.gif" width="16" height="16">提交</button>--></div></td>
  </tr>
</table>
</form>
  </body>
</html>
