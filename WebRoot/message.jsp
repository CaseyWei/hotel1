<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
   <center>
        <form action="messagecheck.jsp" method="post">
        <font color="#white"><strong>&nbsp;<em>留言者:&nbsp;</em></strong><br></font> 
            <br>
            <input type="text" name="author" size="33" value="<%=session.getAttribute("uname") %>" readonly="readonly"/>
            <br> 
          <strong><font color="white"><em>留言内容:  
          </em></font></strong><br><br>
          <textarea name="content" rows="8" cols="30"></textarea>
            <p>&nbsp; 
                <input type="submit" value="提交"> 
                <input type="reset" value="清除">&nbsp;</p><p><br> 
           </p>
        </form>
    </center>
    </body>
</html>
