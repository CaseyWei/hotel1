<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String name=(String)session.getAttribute("uname");
if(name==null){
	name="";
}
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'main.jsp' starting page</title>
   <META http-equiv=Content-Type content="text/html; charset=UTF-8">
		<LINK href="css/admin.css" type="text/css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="<%=basePath%>Css/textCss.css">

  </head>
  

	<BODY background="<%=basePath%>image/r.jpg">
	
		<TABLE cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
			<TR height=28>
				<TD background="<%=basePath%>images/aaa.jpg">
					当前位置:
				</TD>
			</TR>
			<TR>
				<TD bgColor=#b1ceef height=1></TD>
			</TR>
			<TR height=20>
				<TD background="<%=basePath%>images/aaa.jpg"></TD>
			</TR>
		</TABLE>
		<TABLE cellSpacing=0 cellPadding=0 width="90%" align=center border=0>
			<TR height=100>
				<TD align="center" width=100>
					<IMG height=100 src="<%=basePath%>images/111.jpg" width=90>
				</TD>
				<TD width=60>
					&nbsp;
				</TD>
				<TD>
					<TABLE height=100 cellSpacing=0 cellPadding=0 width="100%" border=0>

						<TR>
							<TD>
							当前时间：<% out.print(new java.text.SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(new Date())); %>
							</TD>
						</TR>
						<TR>
						
						
							<TD >
								
						     		当前用户：<%=name%>
						     	
							</TD>
						
						</TR>
						<TR>
							<TD>
								欢迎进入房间预订系统！
							</TD>
						</TR>
					</TABLE>
				</TD>
			</TR>
			<TR>
				<TD colSpan=3 height=10></TD>
			</TR>
		</TABLE>
		<hr/>
		<TABLE cellSpacing=0 cellPadding=0 width="95%" align=center border=0
			background="<%=basePath%>images/aaa.jpg" border=0>
			<TR height=20>
				<TD></TD>
			</TR>
			<TR height=22>
				<TD style="PADDING-LEFT: 20px; FONT-WEIGHT: bold; COLOR: #ffffff"
					align="center" background="<%=basePath%>images/aaa.jpg">
					客房客房中心
				</TD>
			</TR>
			<TR bgColor=#ecf4fc height=12>
				<TD></TD>
			</TR>
			<TR height=20>
				<TD></TD>
			</TR>
		</TABLE>
		
		<TABLE cellSpacing=0 cellPadding=2 width="100%"  border="0">
			<tr align="center"><td><h3 align="left">如家酒店集团</h3></td></tr>
			<tr><td>
			<table border="1">
			  <tr><td><img align="left" src="<%=basePath%>images/dachuang.jpg" width="300" height="300"></td>
			  <td>
			      <table>
			       <tr><td><h5>仅售129元！价值179元的入住1晚，商务大床房</h5></td></tr>
			       <tr><td><h5>可连续入住，免费WiFi。知名品牌、品质保证！</h5></td></tr>
			       <tr><td><h5>舒适而温馨，来这里就会有一种家的感觉。</h5></td></tr>
			       <tr><td><h5>快来抢购吧！！！</h5></td></tr>
			     
			       <tr><td>
			       <input onclick="javascript:window.open('<%=basePath%>/KeFangmessageSvl')" type="button" value="我要预定" name="我要预定">
			</td></tr>
			      </table>
			  </td>
			  </tr>
			</table>
				<!--<table border="1" width="459" bordercolor="yellow" cellpadding="1" height="346">
				<th width="50" colspan="1"><img align="left" src="images/dachuang.jpg" width="300" height="300">
				
					<input type="submit" value="aaa"size="15"/>
				</th>
			</table>
			--></td></tr>
		
	</TABLE>
	
	<table border="1" bgcolor="blue" style="position: relative;float:right;right:30px;top:-300px;">
	  <tr><td>
	  	<div id="demo">
		<div id="indemo">
			<div id="demo1">
			<a href="#"><img width="200" height="200" src="<%=basePath%>images/chuangwei1.jpg" border="0" /></a>
			<a href="#"><img width="200" height="200"  src="<%=basePath%>images/chuangwei2.jpg" border="0" /></a>
			<a href="#"><img width="200" height="200"  src="<%=basePath%>images/chuangwei3.jpg" border="0" /></a>
			<a href="#"><img width="200" height="200"  src="<%=basePath%>images/chuangwei4.jpg" border="0" /></a>
			<a href="#"><img width="200" height="200"  src="<%=basePath%>images/chuangwei5.jpg" border="0" /></a>
			</div>
		<div id="demo2"></div>
		</div>
	</div>
	  </td></tr>
	</table>

<script type="text/javascript">
	var speed=15;
		var tab=document.getElementById("demo");
		var tab1=document.getElementById("demo1");
		var tab2=document.getElementById("demo2");
		tab2.innerHTML=tab1.innerHTML;
		function Marquee(){
			if(tab2.offsetWidth-tab.scrollLeft<=0)
				tab.scrollLeft-=tab1.offsetWidth
			else{
				tab.scrollLeft++;
			}
		}
		var MyMar=setInterval(Marquee,speed);
		tab.onmouseover=function() {clearInterval(MyMar)};
		tab.onmouseout=function() {MyMar=setInterval(Marquee,speed)
		};
	</script>
	</BODY>
  <body>
<br>
  </body>
</html>
