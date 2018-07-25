<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" import="java.sql.*,java.awt.*,javax.swing.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'messagecheck.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
    <body bgcolor="wheat">
        <%
        Object object=session.getAttribute("uname");
            Connection con = null;
            Statement st = null;
            ResultSet rs=null;
       //    String author = new String(request.getParameter("author").getBytes("ISO-8859-1"), "UTF-8");
         
          
          String content = new String(request.getParameter("content"));
      
          // String biaoti = request.getParameter("biaoti");
           //   out.println(object);
          //  String neirong = request.getParameter("neirong");
           //out.println(content);

            //java.text.SimpleDateFormat format = new java.text.SimpleDateFormat("yyyy/MM/dd HH/mm/ss");
            // java.util.Date date = new java.util.Date();
            System.out.println("author" + object);
           
            System.out.println("content" + content);

            try {
               Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","root");
                st = con.createStatement();
                String sql="select * from ucomment where id =(select max(id)from ucomment)";
            	int	id=0;
                rs=st.executeQuery(sql);
                if(rs!=null){
                	while(rs.next()){
                	id=rs.getInt("id")+1;
						System.out.println("id="+id);
                	}
                	
                }
                String sql1 = "insert into ucomment(id,uname,ucomment) values('"+id+"','" + object + "', '" + content + "')";
 System.out.println("content-------");
                System.out.println(sql1);
                int row = st.executeUpdate(sql1);
                if (row == 1) {
                    JOptionPane.showMessageDialog(null, "该帖已发表！");
                  response.sendRedirect("showmessage.jsp");
                } else {
                   response.sendRedirect("message.jsp");
                }

            } catch (Exception ee) {
                ee.printStackTrace();
            } finally {
             // st.close();
              //  con.close();
            }


        %>
    </body>
</html>
