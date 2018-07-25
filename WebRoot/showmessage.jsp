<%@ page language="java" import="java.util.*" pageEncoding="gb2312" import="java.sql.*,java.awt.*,javax.swing.*,java.util.*" %>
<%@page import="com.qy.hotel.control.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'showmessage.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
		div{
			position:relative;
			margin-left:100px;
			width:800px;
			/*border: red 1px solid;*/
		}
	</style>
  </head>
  <script type="text/javascript">
  		function check(){
  			window.location.href="front/main.jsp"
  		}
  </script>
     <body background="<%=basePath%>image/r.jpg">
     <div>
         <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","root");
            Statement st = con.createStatement();
            String sql = "select * from ucomment ";
            ResultSet rs = st.executeQuery(sql);
            while (rs.next()) {
        %>
          用户： <%=rs.getString("uname")%>
          <br>
          内容： <%=rs.getString("ucomment")%>
        <hr>
       <%
         }
        %>
   <input type="button"value="返回" onclick="check()"/>
   </div>
    </body>
