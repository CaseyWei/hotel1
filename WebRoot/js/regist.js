var nameState = 0;
//var passState = 0;
var repassState = 0;
//var emailState = 0;
var nameVal;
var name1;
var nameVal2;
var passVal;
var pass1;
var passVal2;
var emailVal;
window.onload = function() {
   name1=document.getElementById("username");  
   pass1=document.getElementById("password");
  // var bon=document.getElementById("botton");
  /* bon.onclick=function(){
       alert("aaaa");
         nameVal2=document.getElementById("username").value;
        alert(nameVal2);
        passVal2=document.getElementById("password").value;
       
        if (nameState && passState) {
            createXMLHTTP();
             alert("222222");
            xmlhttp.open("Get", "asd?name=" + nameVal2 + "&pass=" + passVal2, true);
            xmlhttp.send();
            //alert("1111");
            xmlhttp.onreadystatechange = function() {
                if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                    if (xmlhttp.responseText == 1) {
                        alert("登录成功！");
                    }
                }

            }
        } else {
            if (nameState == 0) {
                name.focus();
            } else {
               pass.focus();
            }
        }
    }
*/


    name1.onfocus=function(){
         this.style.backgroundColor="pink";
     }
     name1.onblur=function(){
         this.style.backgroundColor="";
         nameVal2=this.value;
        /* createXMLHTTP();
            xmlhttp.open("GET", "aaa?xingming=" + nameVal2, true);
            xmlhttp.send();
            alert(xmlhttp.status);
            xmlhttp.onreadystatechange = function() {
                if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                    var result = xmlhttp.responseText.toString();
                    if (result == 1) {
                        nameState = 1;
                       
                    }
                    else {
                        nameState = 0;
                       alert("用户名不正确，请重新输人！");
                    }
                }
            }*/
     }
     pass1.onfocus=function(){
         this.style.backgroundColor="green";
     }
     pass1.onblur=function(){
         this.style.backgroundColor="";
         passVal2=this.value;
         /* createXMLHTTP();
            xmlhttp.open("Get", "qqq?mima=" + passVal2, true);
            xmlhttp.send();
             alert(xmlhttp.status);
            xmlhttp.onreadystatechange = function() {
               // alert(xmlhttp.status );
                if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                   var Val = xmlhttp.responseText.toString();                    
                   if (Val==0) {
                        repassState = 0;
                        alert("密码不正确，请重新输入！");
                    } else {
                        repassState = 1;
                        
                    }
                }*/
            }
     
   
    var name = document.getElementById("name");
    var pass = document.getElementById("pass");
    var repass = document.getElementById("repass");
    var email = document.getElementById("email");
    var nameInfo = document.getElementById("nameInfo");
    var passInfo = document.getElementById("passInfo");
    var repassInfo = document.getElementById("repassInfo");
    var emailInfo = document.getElementById("emailInfo");


    name.onfocus = function() {
        nameState = 0;
        this.style.backgroundColor = "pink";
        nameInfo.innerHTML = "正在输入...";
        nameInfo.style.color = "gray";
    }
    name.onblur = function() {
        this.style.backgroundColor = "";
        nameVal = this.value;
        var testStr = /^[A-Za-z0-9]+$/;
        var ok = testStr.test(nameVal);
        if (nameVal == "" || nameVal.length == 0) {
            nameState = 0;
            nameInfo.innerHTML = "用户名不能为空..."
        } else if (!ok) {
            nameState = 0;
            nameInfo.innerHTML = "用户名格式不正确，请重新输入..."
            nameInfo.style.color = "red";
        }
        else {
            nameInfo.innerHTML = "正在通信...";
            nameInfo.style.color = "gray";
            createXMLHTTP();
            xmlhttp.open("GET", "qwer?name=" + nameVal, true);
            xmlhttp.send();
            xmlhttp.onreadystatechange = function() {
                if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                    var result = xmlhttp.responseText.toString();
                    if (result == 1) {
                        nameState = 1;
                        nameInfo.innerHTML = "用户名可以用";
                        nameInfo.style.color = "green";
                    }
                    else {
                        nameState = 0;
                        nameInfo.innerHTML = "用户名已存在，请重新输入..."
                        nameInfo.style.color = "red";
                    }
                }
            }
        }
    }
    pass.onfocus = function() {
        this.style.backgroundColor = "green";
        passInfo.innerHTML = "正在输入...";
        passInfo.style.color = "gary";
    }
    pass.onblur = function() {
        this.style.backgroundColor = "";
        var testStr = /^[A-Za-z0-9]+$/;
        passVal = this.value;   
        var ok = testStr.test(passVal)
        if (passVal == "" || passVal.length == 0) {
            passInfo.innerHTML = "密码不能为空...";
            passInfo.style.color = "red";
        } else if (!ok) {
            passInfo.innerHTML = "密码格式不正确，请重新输入...."
            passInfo.style.color = "red";
        } else {
            passInfo.innerHTML = "正在连接..."
            passInfo.style.color = "";
                    if (passVal.length < 6) {
                        passInfo.innerHTML = "密码不安全...";
                        passInfo.style.color = "red";
                    } else {
                        passInfo.innerHTML = "密码安全...";
                        passInfo.style.color = "green";
                    }
            }
        }

   
    
    repass.onfocus = function() {
        this.style.backgroundColor = "pink";
        repassInfo.innerHTML = "正在输入....";
        repassInfo.style.color = "gray";
    }
    repass.onblur = function() {
        this.style.backgroundColor = "";
        repassInfo.innerHTML = "正在通信...";
        var testStr = /^[A-Za-z0-9]+$/;
        var repassVal = this.value;
        var ok = testStr.test(repassVal);
        if (repassVal == "" || repassVal.length == 0) {
            repassInfo.innerHTML = "密码不能为空....";
            repassInfo.style.color = "red";
        } else if ( !ok) {
            repassState = 0;
            repassInfo.innerHTML = "密码格式不正确请重新输入....";
            repassInfo.style.color = "red";

        } else {
            repassInfo.innerHTML = "正在连接....";
            repassInfo.style.color = "green";
            createXMLHTTP();
            xmlhttp.open("Get", "qwe?repass=" + repassVal+ "&pass=" + passVal, true);
            xmlhttp.send();
            xmlhttp.onreadystatechange = function() {
               // alert(xmlhttp.status );
                if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                   var Val = xmlhttp.responseText.toString();                    
                   if (Val==0) {
                        repassState = 0;
                        repassInfo.innerHTML = "密码不匹配，请重新输入....";
                        repassInfo.style.color = "red";
                    } else {
                        repassState = 1;
                        repassInfo.innerHTML = "密码正确....";
                        repassInfo.style.color = "green";
                    }
                }
            }
        }
    }
    email.onfocus = function() {
        this.style.backgroundColor = "pink";
        emailInfo.innerHTML = "正在输入....";
    }
    email.onblur = function() {
        this.style.backgroundColor = "";
         emailVal = this.value;
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

 var bon=document.getElementById("login");

   bon.onclick=function(){ 
        //if (nameState && passState) {

            createXMLHTTP();
            xmlhttp.open("Get", "ggg?xingming=" + nameVal2 + "&mima=" + passVal2, true);
            xmlhttp.send();
            //alert("1111");

            xmlhttp.onreadystatechange = function() {    
                if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                    if (xmlhttp.responseText == 1) {
                       top.location='main.html';//页面跳转
                    }else if(xmlhttp.responseText == 2){
                        alert("密码有误！"); 
                    }else if(xmlhttp.responseText == 0){
                         alert("用户名不存在！");
                    }
                }

            }
  // }
   /*else{
       alert("登录失败！")
   }*/
   }

}

//}


  function sure() {
      
        if (nameState && repassState) {
            createXMLHTTP();
            xmlhttp.open("Get", "result?name=" + nameVal + "&pass=" + passVal + "&email=" + emailVal, true);
            xmlhttp.send();
            //alert("1111");
            xmlhttp.onreadystatechange = function() {
                if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                    if (xmlhttp.responseText == 1) {
                        alert("注册成功！");
                    }
                }

            }
        } else {
            if (nameState == 0) {
                name.focus();
            } else {
               pass.focus();
            }
        }
    }


var xmlhttp;
function createXMLHTTP() {
    if (window.XMLHttpRequest) {
        xmlhttp = new XMLHttpRequest();
    } else {
        xmlhttp = new ActiveXObject("microsoft.XMLHTTP");
    }
    return xmlhttp;
}


