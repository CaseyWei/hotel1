<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html> 
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP '房型信息' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>Css/introduce.css">

  </head>
  <body  background="<%=basePath%>image/r.jpg">
		<div id="big">
   		
   	  		<div id="top">
   			<img alt="客房" src="<%=basePath%>houseimg/hht.jpg">
   		</div>
   		<br/>
   		<hr>
   		<div id="01">
   		<a href="#"><p style="font:bold;">莫泰-郑州金水区医学院店</font></p></a>
   		<p>地址：郑州市金水区金水路56号</p>
   		</div>
		<ul class="list_room">
               <div class="list_room_tj_top">
              
                 <ul class="list_room_w160" style="width: 40"> 房型</ul>
                 <ul></ul>
                 <ul class="list_room_w60" style="width: 80"> 位置</ul>
                 
                 <ul class="list_room_w90" style="width:80" > 设施</ul>
                 <ul></ul>
                 <ul class="list_room_w90" > 一次性用品</ul>
                  <ul></ul>
               <ul class="list_room_w75_c"style="width: 130"> 预订</ul>
 			</div>
 			<br/>
 			<hr width="680"/>
			<div class="list_room_tj_row">
                <ul class="list_room_w90">商务大床房</ul>
                 <ul class="list_room_w90">朝阳</ul>
                  <ul class="list_room_w90">电脑、电视、空调</ul>
                   <ul class="list_room_w90">梳子、牙刷、牙膏</ul>
                <ul></ul>
  				<ul class="list_room_row_btn">
                <a class="yuding list_room_tj_yd" href="<%=basePath%>house/wmf02.jsp" hotelid="M37102" roomid="SKS" loginMark="false">预订</a>
                </ul>
            </div>
            <hr width="680"/>
            <div></div>









<!--<table align="center" border="1" width="1000" height="400">
 <tr> 
    <th colspan="">查看房型</th>
    
    <td valign="top">&nbsp;&nbsp; 床&nbsp; 型&nbsp; <br></td><td valign="top">&nbsp; 电&nbsp; 器&nbsp; <br></td><td valign="top">&nbsp;&nbsp; 光&nbsp; 线&nbsp; <br></td>
    <td valign="top">&nbsp;&nbsp; 一次性用品<br></td><td valign="top">&nbsp;&nbsp; 可入住人数&nbsp; <br></td><td valign="top">&nbsp;&nbsp;&nbsp; 选 择&nbsp; <br></td>
    </tr>
    
    
        <tr> <td ><img src="<%=basePath%>houseimg/bzj.jpg" width="300px" height="150px"> <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 标准间</td>
        
         <td ><%--= --%><br></td> <td><%--= --%><br></td><td><%--= --%><br></td><td><%--= --%><br></td>
         <td><%--= --%><br></td><td valign="top"><br><br><br><br><br><a href="<%=basePath%>house/wmf02.jsp">预定</a><br></td>
         
         </tr>
   
     <tr>
         <td ><img src="<%=basePath%>houseimg/ptd.jpg" width="300px" height="150px"> <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 普通单人间</td>
         <td><%--= --%><br></td><td><%--= --%><br></td><td><%--= --%><br></td><td><%--= --%><br></td>
         <td><%--= --%><br></td><td valign="top"><br><br><br><br><br><a href="<%=basePath%>house/wmf02.jsp">预定</a><br></td>
         </tr>
   
     <tr>
         <td ><img src="<%=basePath%>houseimg/hhd.jpg" width="300px" height="150px"> <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 豪华单人间</td>
         <td><%--= --%><br></td><td><%--= --%><br></td><td><%--= --%><br></td><td><%--= --%><br></td>
         <td><%--= --%><br></td><td valign="top"><br><br><br><br><br><a href="<%=basePath%>house/wmf02.jsp">预定</a><br></td>
         </tr>
   
    
     <tr>
         <td ><img src="<%=basePath%>houseimg/hht.jpg" width="300px" height="150px"> <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 豪华套房</td>
         <td><%--= --%><br></td><td><%--= --%><br></td><td><%--= --%><br></td><td><%--= --%><br></td><td><%--= --%><br></td>
         <td valign="top"><br></a><br><br><br><br><a href="<%=basePath%>house/wmf02.jsp">预定</a><br></td>
         </tr>
   
   
    
  --></body>
</html>