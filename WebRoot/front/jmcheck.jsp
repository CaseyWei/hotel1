<%@ page language="java" import="java.sql.*,java.util.*,java.text.*" pageEncoding="gbk"%>

<%@page import="javax.swing.JOptionPane"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
     <meta http-equiv="Content-Type"content="text/html;charset=gbk">
  <title>My JSP 'jmcheck.jsp' starting page</title>

  </head>
  
  <body>
    <%
    String fuzeren=request.getParameter("fuzeren") ;
    String tele=request.getParameter("tele");
    String addr=request.getParameter("addr");
    String hname=request.getParameter("hname");
     System.out.println("tel="+tele);
         System.out.println("fuzeren="+fuzeren);
             System.out.println("addr="+addr);
             
             Calendar cal  = Calendar.getInstance();
   SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd ");
   String mDateTime=formatter.format(cal.getTime());

        Connection con=null;
        Statement st=null;
        ResultSet rs=null;
        if(fuzeren.equals("")){
            response.sendRedirect("jm.jsp");
        }
        try{
             Class.forName("com.mysql.jdbc.driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","root");
             st=con.createStatement();
             String sql1="select * from hotel where hnumber =(select max(hnumber)from hotel)";
            	int	id=0;
                rs=st.executeQuery(sql1);
                if(rs!=null){
                	while(rs.next()){
                	id=rs.getInt("hnumber")+1;
						System.out.println("id="+id);
                	}
                	
                }
             
             String sql="insert into hotel(hnumber,fuzeren,tele,jointime,addr,hname)values('"+id+"','"+fuzeren+"','"+tele+"',to_date('"+mDateTime+"','yyyy-mm-dd'),'"+addr+"','"+hname+"')";
             
             System.out.println("sql="+sql);
             
            int row=st.executeUpdate(sql);

             if (row==1) {
             System.out.println("123");
                    JOptionPane.showMessageDialog(null,"�ύ�ɹ�����ӭ���붩��ϵͳ~"); 
                    request.getRequestDispatcher("main.jsp").forward(request,response);

                } else {
                    JOptionPane.showMessageDialog(null,"�ύʧ�ܣ����������룡"); 
                    response.sendRedirect("jm.jsp");
                }
        }catch(Exception e){
            e.printStackTrace();
        }
        finally{
         //   rs.close();
            st.close();
            con.close();
        }
        %>
   
    <center>
    <h2>���������Ϣ</h2>
    <p>
      <br>
                ���ύ��Ϣ��
    </p>
    <!--<form name="form1" method="post" action="jm.jsp">
      <input type="submit" id="back" name="back" value="����">
    </form>
    --></center>
  </body>
</html>
