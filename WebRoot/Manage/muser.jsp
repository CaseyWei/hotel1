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
        <title>�ܹ���Ա����</title>
        <script type="text/javascript">
        function change(obj){
        	var size=obj.value;
        	window.location.href="HotelmessageSvl?p_page=1&p_size="+size;
        }
        function jumpPage(obj,e){
        	//alert(e.keyCode);
        	/*ͨ��onkeyup����������event�¼���ȡ�ü�����ÿ������Ӧ��ASIIC��*/
        	var code=e.keyCode;//keyCode��ȡ������ÿ������Ӧ��ASIIC��
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
    <tr><th colspan="10">�Ƶ���Ϣ</th></tr>
    <tr>
    	<th valign="top">�Ƶ���</th>
        <th valign="top">�Ƶ�����</th>
        <th valign="top">�Ƶ��ַ</th>
        <th valign="top">������</th>
        <th valign="top">����ʱ��</th>
        <th valign="top">�绰</th>
        <th valign="top">�Ƶ�����</th>
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
  		��${fenye.pageNow}ҳ|��${fenye.totalPage}ҳ|
  		��<a href="HotelmessageSvl?p_page=1&p_size=${fenye.size}">��ҳ</a>|
  		 <a href="HotelmessageSvl?p_page=${fenye.pageNow-1}&p_size=${fenye.size}">��һҳ</a>|
  		 <a href="HotelmessageSvl?p_page=${fenye.pageNow+1}&p_size=${fenye.size}">��һҳ</a>|
  		 <a href="HotelmessageSvl?p_page=${fenye.totalPage}&p_size=${fenye.size}">βҳ</a>��
  		 ��ʾ<select onchange="change(this)">
  		 	<option value="5" <c:if test="${fenye.size==5}"> selected</c:if>>5</option>
  		 	<option value="10" <c:if test="${fenye.size==10}"> selected</c:if>>10</option>
  		 </select>��
  		 <!--ͨ�� 	onkeyup	������ȡ�ü�����ÿ������Ӧ��ASIIC��.this��ʾ��ǰ����eventΪ�¼�����-->
  		 ת��:<input type="text" id="size" size=3 value="${fenye.pageNow}" onkeyup="jumpPage(this,event)"/>ҳ
  		</td>
  	</tr>
  </table>
 </body>
</html>
         
