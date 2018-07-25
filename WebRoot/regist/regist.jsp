<%@page contentType="text/html" pageEncoding="gbk"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=gbk">
        <style>
           A:link{text-decoration: none; font-size: 20pt}
            A:active{text-decoration: none; font-size: 20pt}
            A:visited{text-decoration: none; font-size: 20pt}
            A:hover{text-decoration: underline;color:yellow;font-size: 20pt}
            #logo {position: absolute;left: 5;top: 355px;visibility: visible}
        </style>
         <link href="font.css" rel="stylesheet" type="text/css"/>
        <title>注册</title>
        <script type="text/javascript">
        Alert("aaa");
        var name=document.getElementById("uname");
        var pass=document.getElementById("upwd");
        var tele=document.getElementById("tele");
        var email=document.getElementById("email");
        function blr1(){
        	var name=name.value;
        	if (name == "" ||name.length == 0){
        	var say=document.getElementById("01");
        	say.style.color="red";
        	say.innerHTML="用户名不能为空！";
        }
       	function blr2(){
       		var pass=pass.value;
	       	if(pass==""||pass.length==0){
	        	var say=document.getElementById("02");
	        	say.style.color="red";
	        	say.innerHTML="请输入密码！";
	        }else if(pass.length<6){
	        	var say=document.getElementById("02");
	        	say.style.color="red";
	        	say.innerHTML="请输入大于6为的密码！";
	        }
	     function blr3(){
	     	var tel=tele.value;
	     	var say=document.getElementById("03");
	     	if(tel==""||tel.length==0){
	     		say.innerHTML="请输入手机号！";
	     		say.style.color="red";
	     	}else if(tel.length<11){
	     		say.innerHTML="请输入正确的手机号位数！";
	     		say.style.color="red";
	     	}
	     }
	     function blr4(){
         var emailVal = email.value;
         var emailInfo=document.getElementById("04");
       // alert(emailVal);
         var testStr= /^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$/;//匹配Email地址的正则表达式
        var ok = testStr.test(emailVal);
        if (emailVal == "" || emailVal.length == 0) {
            emailInfo.innerHTML = "邮箱不能为空....";
            emailInfo.style.color = "red";
        } else if (!ok) {
            emailInfo.innerHTML = "邮箱格式不正确请重新输入....";
            emailInfo.style.color = "red";
        } else {
     
            emailInfo.innerHTML = "邮箱格式正确....";
            emailInfo.style.color="green";
          
	     }
       	}
        }
       
        
        </script>
    </head>
    <body background="../image/r.jpg">
        
        <form action="RegistCheck.jsp" method="get" target="center">
            <br><br><br>
            <center>
           <table align="center" >
                    <tr><th colspan="3">请填写你的个人信息</th></tr>
                    
                    <tr><td>用户名：</td>
                        <td><input name="uname" id="uname" type="text"  onblur="blr1();"><span id="01"></span></td>
                    </tr>
                     <tr><td>密码：</td>
                        <td><input name="upwd" id="upwd" type="password"  onblur="blr2();"> <span id="02"></span></td>
                    </tr>
                     <tr><td>手机：</td>
                        <td><input name="tele" id="tele" type="text"  onblur="blr3();"><span id="03"></span></td>
                    </tr>
                     <tr><td>邮箱：</td>
                        <td><input name="email" id="email" type="text"  onblur="blr4();"><span id="04"></span></td>
                    </tr>
                    <tr align="center">
                        <td colspan="2">
                             <input type="submit" value="确定" size="12"></input> &nbsp; &nbsp; 
                             <input type="reset" value="取消" size="12"></input><br><br>
                        </td>
                    </tr>
           </table>
            </center>
            
              </form>
        
     </body>
</html>
