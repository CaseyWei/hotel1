<%@ page language="java" import="java.util.*,com.qy.hotel.dto.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'housemessage.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
		A:link {
			COLOR: #000000; TEXT-DECORATION: none
			}
		A:visited {
			COLOR: #000000; TEXT-DECORATION: none
			}
		A:hover {
			COLOR: #2828FF; TEXT-DECORATION: underline
			}
		#bom{
			position:relative;
			/*background:#FDF5E6;*/
			margin-left:  200px;
			width:700px;
			}
		.pos{ background:black; filter:alpha(opacity:30);opacity:0.3; height:100%;position:absolute;width:100%;top:0; z-index:1 }
		.box { width:700px; height:0px; background:blue; position:absolute; bottom; top:0;z-index:0; }
		/*ul {
			display:block;
			float:left;
			margin:25px;
		}
		ul li{
			list-style-type:none;
			float:left;
			margin:25px;
		}*/
	</style>
	
 <script type="text/javascript">
        function change(obj){
        	var size=obj.value;
        	window.location.href="KeFangmessageSvl?p_page=1&p_size="+size;
        }
        function jumpPage(obj,e){
        	/*通过onkeyup函数传来的event事件来取得键盘中每个键对应的ASIIC码*/
        	var code=e.keyCode;//keyCode获取键盘中每个键对应的ASIIC码
        	if(code==13){
        		window.location.href="KeFangmessageSvl?p_page="+obj.value+"&p_size="+${fenye.size};
        	}
        }
</script>
	</head>
  
  <body background="<%=basePath%>image/r.jpg">	
	 <div id="bom">
	 <div class="pos"></div>
	 <div class="box">
	  	<c:forEach var="hotel" items="${rooms}">
	  	<form action="YDCheckLoginSvl" method="post"> 
	  	<table align="center" bordercolor="yellow" > 
	  	<tr><td style="display: none">${hotel.hnumber}</td></tr>
	  		<tr><td>${hotel.hname}</td></tr>
	  		<tr><td>地址：${hotel.addr}</td></tr>
	  		<tr>
	  		<td align="center" colspan="2"></td>
	  			<td align="center" width="100px" >房型</td>
	  			<td align="center"  width="100px" >门市价</td>
	  			<td align="center" width="100px" >房态</td>
	  		</tr>
	  		<c:forEach var="room" items="${hotel.list}">
	  		<tr>
	  			<td align="center"  colspan="2"><img src="${room.img}" style="width:150px"/></td>
	  			<td align="center" width="100px" ><input type="hidden" name="fangxing" value="${room.fangxing}"/>${room.fangxing}</td>
	         	<td align="center" width="100px" ><input type="hidden" name="price" value="${room.price}"/>${room.price }</td>
	         	<td align="center" width="100px" >${room.position }</td>
	  			<td align="center";width="200px"; ><input type="submit" name="预定" value="预定"/></td>
	  		</tr>
	  		</c:forEach>
	  	</table>
	  	</form>
	  	<hr/>
	  	</c:forEach>
	  	<table align="center" bordercolor="yellow">
	  		<tr>
	  			<td colspan="5">
	  			第${fenye.pageNow}页|
	  			共${fenye.totalPage}页|
	  			【<a href="KeFangmessageSvl?p_page=1&p_size=${fenye.size}">首页</a>|
	  			 <a href="KeFangmessageSvl?p_page=${fenye.pageNow-1}&p_size=${fenye.size}">上一页</a>|
	  			 <a href="KeFangmessageSvl?p_page=${fenye.pageNow+1}&p_size=${fenye.size}">下一页</a>|
	  			 <a href="KeFangmessageSvl?p_page=${fenye.totalPage}&p_size=${fenye.size}">尾页</a>
	  			】
	  			显示<select onchange="change(this)">
	  				<option value="1" <c:if test="${fenye.size==1}"> selected</c:if>>1</option>
  		 			<option value="2" <c:if test="${fenye.size==2}"> selected</c:if>>2</option>
	  			</select>条
	  			<!--通过 	onkeyup	函数来取得键盘中每个键对应的ASIIC码.this表示当前对象，event为事件对象-->
	  			跳转：<input type="text" size=3 value="${fenye.pageNow}" onkeyup=jumpPage(this,event)>页
	  			</td>
	  		</tr>
	  	</table>
	  	</div>
	 </div><!--
	【注】这是第二种方法写页面，页面设置入上被注释的
  			<div id="bom">
		  		<c:forEach var="hotel" items="${rooms}">
		  		<div>
		  		<p style="font:bold;">${hotel.hname}</p>
		  		<p>地址：${hotel.addr}</p>
		  		  <ul id="01" display="block" float="left" >
			  		<li display="block" float="left" >房型</li>
			  		<li display="block" float="left">门市价</li>
			  		<li display="block" float="left">房态</li>
		  		</ul>
		  		<c:forEach var="room" items="${hotel.list}">
		  		<ul id="02" display="block" float="left" >
		  			<li ><a class="list_room_zk" title='' href="<%=basePath%>house/wmf01.jsp" >${room.fangxing}</a></li>
		  			<li >${room.price}</li>
		  			<li >${room.position}</li>
		  		</ul>
		  		</c:forEach>
		  		 </div> 
		  		</c:forEach>
	
		 	</div>

   --></body>
</html>
