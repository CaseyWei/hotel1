<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String msg_info=(String)request.getAttribute("msg_info");
if(msg_info==null){
	msg_info="";
}
String messg=(String)request.getAttribute("messg");
if(messg==null){
	messg="";
}
String msg1=(String)request.getAttribute("msg1");
if(msg1==null){
	msg1="";
}
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'apply.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
<script type="text/javascript">
	function f1(Id){
		var id=Id;
		window.location.href="ATongYiSvl?id="+id;
	}
	function f2(id){
		var Id=id;
		window.location.href="AJuJueSvl?id="+Id;
	}

</script>

  </head>
  <body background="<%=basePath%>image/r.jpg">
  <font color="red" style="margin:100px"><%=msg_info%></font>
  <font color="red" style="margin:100px"><%=messg%></font>
  <font color="red" style="margin:100px"><%=msg1 %></font>
  <table border="1" width="800" align="center">
  <tr><th align="center" colspan="9">申请加盟信息表</th></tr>
  <tr><th>申请编号</th><th>酒店名称</th><th>负责人</th><th>负责人情况</th><th>联系电话</th><th>地址</th><th>加盟时间</th><th>当前状态</th><th>操作</th></tr>
  <c:forEach var="ss" items="${msg}">
  <tr>
  	<td align="center">${ss.id}</td>
  	<td align="center">${ss.hname}</td>
  	<td align="center">${ss.fuzeren}</td>
  	<td align="center">${ss.fuzerenqingkuang}</td>
  	<td align="center">${ss.phone}</td>
  	<td align="center">${ss.addr}</td>
  	<td align="center">${ss.jointime}</td>
  	<td align="center">${ss.statu}</td>
  	<td align="center">
	  	<input type="button" value="同意" onclick="f1(${ss.id})"/>
	  	<input type="button" value="拒绝" onclick="f2(${ss.id})"/>
  	</td>
  </tr>
  </c:forEach>
  </table>
</body>
</html>
