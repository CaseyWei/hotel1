<%@page contentType="text/html" pageEncoding="gbk" import="java.sql.*"%>
<%@page import="javax.swing.JOptionPane"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=gbk">
        <title>logincheck</title>
    </head>
    <body>
        <%
        String username=request.getParameter("uname");
        String password=request.getParameter("upwd");
         
        Connection con=null;
        Statement st=null;
        ResultSet rs=null;
        if(username.equals("")){
            response.sendRedirect("denglu.jsp");
        }
        try{
             Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","123456");
             st=con.createStatement();
             String sql = "select * from person where uname='"+username+"' and upwd='"+password+"'";
             System.out.println("sql="+sql);
             rs=st.executeQuery(sql);
             if (rs.next()) {
             System.out.println("123");
             session.setAttribute("uname",username);
            // session.setAttribute("pwd",password);
                   JOptionPane.showMessageDialog(null,"登陆成功！欢迎进入订房系统~"); 
					request.getRequestDispatcher("../front/index.jsp").forward(request, response);
                } else {
                    JOptionPane.showMessageDialog(null,"登录失败！请重新输入！"); 
                    response.sendRedirect("../front/index.jsp");
                }
        }catch(Exception e){
            e.printStackTrace();
        }
        finally{
            rs.close();
            st.close();
            con.close();
        }
        %>
    </body>
</html>
