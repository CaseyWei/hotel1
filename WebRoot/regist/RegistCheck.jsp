
<%@page contentType="text/html" pageEncoding="gbk" import="java.sql.*" import="java.awt.*" import="javax.swing.*"%>
<%@page import="javax.swing.JOptionPane"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=gbk">
        <title>注册</title>
    </head>
    <body>
     <%
              
         String username=new String(request.getParameter("uname"));
         String password=new String(request.getParameter("upwd"));
         String telephone=new String(request.getParameter("tele"));
         String email=new String(request.getParameter("email"));
   
   System.out.println("username="+username);
   System.out.println("password="+password);
    System.out.println("telephone="+telephone);
    System.out.println("email="+email); 
               
               
                Connection con=null;
                Statement st=null;
                ResultSet rs=null;
              if(username.equals("")||password.equals("")||telephone.equals("")){
                JOptionPane.showMessageDialog(null,"请将信息填写完整~~"); 
                response.sendRedirect("regist.jsp");
        }
         else{
            try{
               Class.forName("com.mysql.jdbc.Driver");
			    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","root");
                 st=con.createStatement();
                 String sql = "select * from person where uname='" + username + "'";
                 String sql2 = "insert into person(uname,upwd,tele,email) values('"+username+"','"+password+"','"+telephone+"','"+email+"')";            
                 rs=st.executeQuery(sql);
                 System.out.println("sql="+sql); 
                
               if(rs.next()){
                 JOptionPane.showMessageDialog(null,"用户名已存在，请重新输入~~");
                 response.sendRedirect("regist.jsp"); 
                }
                   else{
                        st.executeUpdate(sql2);
                        JOptionPane.showMessageDialog(null,"注册成功~~"); 
                        response.sendRedirect("../Login/denglu.jsp");
                        }
                   } catch(Exception e){
                        e.printStackTrace();
                    }
              finally{
                    rs.close();
                    st.close();
                    con.close();
               }  
   }

                %> 
              
    </body>
</html>
