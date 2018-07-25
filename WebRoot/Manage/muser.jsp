<%@ page language="java" import="java.util.*,com.qy.hotel.dto.Hotel" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=gbk">
        <title>总管理员界面</title>
        <script type="text/javascript">
        function change(obj){
        	var size=obj.value;
        	window.location.href="HotelmessageSvl?p_page=1&p_size="+size;
        }
        function jumpPage(obj,e){
        	//alert(e.keyCode);
        	/*通过onkeyup函数传来的event事件来取得键盘中每个键对应的ASIIC码*/
        	var code=e.keyCode;//keyCode获取键盘中每个键对应的ASIIC码
        	if(code==13){
        	//var size=document.getElementById("size");
        	
        	alert("size="+${fenye.size});
        		window.location.href="HotelmessageSvl?p_page="+obj.value+"&p_size="+${fenye.size};
        	}
        }
        
        </script>
    </head>
<body background="<%=basePath%>image/r.jpg">
    <table  border="2"bordercolor="black" align="center" width="776" height="23" cellpadding="0" cellspacing="0">
    <tr><th colspan="10">酒店信息</th></tr>
    <tr>
    	<th valign="top">酒店编号</th>
        <th valign="top">酒店名称</th>
        <th valign="top">酒店地址</th>
        <th valign="top">负责人</th>
        <th valign="top">加盟时间</th>
        <th valign="top">电话</th>
        <th valign="top">酒店性质</th>
    </tr>
       <c:forEach var="hotel" items="${hotel}">
  <tr>
  	<td align="center">${hotel.hnumber}</td>
  	<td align="center">${hotel.hname}</td>
  	<td align="center">${hotel.addr }</td>
    <td align="center">${hotel.fuzeren }</td>
    <td align="center">${hotel.jointime }</td>
    <td align="center">${hotel.tele }</td>
    <td align="center">${hotel.companyxingzhi }</td>
  </tr>
</c:forEach>
</table>
<table border=1 align="center" width="776">
  	<tr>
  		<td colspan="7" align="center">
  		第${fenye.pageNow}页|共${fenye.totalPage}页|
  		【<a href="HotelmessageSvl?p_page=1&p_size=${fenye.size}">首页</a>|
  		 <a href="HotelmessageSvl?p_page=${fenye.pageNow-1}&p_size=${fenye.size}">上一页</a>|
  		 <a href="HotelmessageSvl?p_page=${fenye.pageNow+1}&p_size=${fenye.size}">下一页</a>|
  		 <a href="HotelmessageSvl?p_page=${fenye.totalPage}&p_size=${fenye.size}">尾页</a>】
  		 显示<select onchange="change(this)">
  		 	<option value="5" <c:if test="${fenye.size==5}"> selected</c:if>>5</option>
  		 	<option value="10" <c:if test="${fenye.size==10}"> selected</c:if>>10</option>
  		 </select>条
  		 <!--通过 	onkeyup	函数来取得键盘中每个键对应的ASIIC码.this表示当前对象，event为事件对象-->
  		 转到:<input type="text" id="size" size=3 value="${fenye.pageNow}" onkeyup="jumpPage(this,event)"/>页
  		</td>
  	</tr>
  </table>
 </body>
</html>
         
