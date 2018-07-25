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
    
    <title>My JSP 'umodify.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	--><!--
         <script src="js/jquery.js" type="text/javascript"></script>
         <script src="js/regist.js" type="text/javascript"></script>
  --></head>
 

  <script type="text/javascript">
  		var xmlhttp
  			function loadXMLDoc(url){
	  
	   
		xmlhttp=null
		
		// 针对 Mozilla等浏览器的代码：
		if (window.XMLHttpRequest)
		  {
		   xmlhttp=new XMLHttpRequest() ;                    //创建一个javascript的内置对象，用于异步通讯
		  }		
		// 针对 IE 的代码：
		else if (window.ActiveXObject)
		  {
		  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP")
		  }
		if (xmlhttp!=null)
		  {
		  xmlhttp.onreadystatechange= state_Change    //回调函数
		  xmlhttp.open("GET",url,true)
		  xmlhttp.send(null)
		  }
		else
		  {
		  alert("您的浏览器不支持XMLHTTP")
		  }
	}
	
	
	
	function state_Change()
		{
			// 如果 xmlhttp 显示为 "loaded"
			if (xmlhttp.readyState==4)
			  {
			  // 如果为 "OK"
			  if (xmlhttp.status==200)
			    {
			    //alert("--"+xmlhttp.responseText);
			    // alert("ok");
			    // 其他代码...
			    document.getElementById("note").innerHTML = xmlhttp.responseText;
			    
			    //document.getElementById("note2").innerHTML = xmlhttp.responseText;
			    }
			  else
			    {
			    alert("Problem retrieving XML data")
			    }
			  }
		}
	
	function checkUpwd(repwd)
	{
		var pwd=document.getElementById("pwd").value;
		
	 
	  url = "<%=basePath%>UmodifySvl?repwd=" + repwd +"&pass=" + pwd;
	  loadXMLDoc(url);
	   
	}
	
	
  
  </script>
  <body background="<%=basePath%>image/r.jpg">
<form method="post" action="ModifyMima">
  <table width="252" border="1">
    <tr>
      <td width="71">用户名：</td>
      <td width="165"><input type="text" name="uname" readonly="readonly" value="<%=session.getAttribute("uname")%>"/></input><!--<span id="note"></span></td>-->
    </tr>
    <tr>
      <td>原密码：</td>
      <td><input type="password" name="upwd" value="<%=session.getAttribute("pwd")%>"/></input><!--<span id="note1"></span></td>-->
    </tr>

    <tr>
      <td>新密码：</td>
      <td><input type="password" name="pwd" id="pwd"/></td>
    </tr>
 	 <tr>
      <td>确认密码：</td>
      <td><input type="password" name="repwd" onblur="checkUpwd(this.value)"/><span id="note"></span></td>
    </tr>
  
    <tr>
    <td colspan="2" align="center">
      <input name="" type="submit" value="修改">
      </td>
    </tr>
  </table>
</form>
</body>
</html>
