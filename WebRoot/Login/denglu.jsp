<%@page contentType="text/html" pageEncoding="gbk" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=gbk" >
        <style>
            A:link{text-decoration: none; color:yellowgreen;font-size: 16pt}
            A:active{text-decoration: none;color:yellow; font-size: 16pt}
            A:visited{text-decoration: none;color:red; font-size: 16pt}
            A:hover{text-decoration: underline;color:pink;font-size: 16pt}
            #logo {position: absolute;left: 5;top: 355px;visibility: visible}
        </style>
        <title>��½����</title>
    </head>
   <body background="../image/r.jpg">
        <br><br>
        <center>
   <form action="LoginCheck.jsp" method="get" target="center">
            <table border="0" align="center">
                <tr>
                    <td>
                        <table border="1" cellspacing="0" cellpadding="0"  width="360" height="240">
                             <tr>
                                <td><br><center><h2>�û���¼</h2></center></td>
                                </tr>
                            <tr height="130">
                                <td align="center">
                                    <br>
                                    �˺ţ�<input type="text" name="uname" size="20"></input><p></p>
                                    ���룺<input type="password" name="upwd" size="20"></input><br> <br>
                                  <input type="submit" value="ȷ��" size="12"></input>
                                  &nbsp; &nbsp; 
                                   <input type="reset" value="����" size="12"></input><br><br>
                                </td> 
                             </tr>
                        </table>
                    </td>
                </tr>
            </table>            
        </form>

       <br>
       <br><br>
        
        <br>
        <hr>
        <br>
</center>
    </body>
</html>       
