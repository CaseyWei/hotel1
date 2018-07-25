package com.qy.hotel.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import com.qy.hotel.biz.AdminBiz;
import com.qy.hotel.dto.Order;

public class PersonUpdateSvl extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public PersonUpdateSvl() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");
		
		  // String object=(String)request.getSession().getAttribute("uname");
		   String id=request.getParameter("id");
		   int oId=Integer.parseInt(id);
           String fangxing=request.getParameter("fangxing");
           System.out.println("fangxing="+fangxing);
           if(fangxing.equals("")){
        	   request.setAttribute("msg","请输入信息!");
			   request.getRequestDispatcher("house/manageRoom.jsp").forward(request, response); 
        	   return;
           }
          AdminBiz biz=new AdminBiz();
          int result=biz.updataOrder(oId,fangxing);
          if(result==1){
        	  request.setAttribute("msg_info","修改成功!");
        	  request.getRequestDispatcher("/CheckLoginSvl").forward(request, response); 
        		   }else{
        			   request.setAttribute("msg","修改失败!");
        			   request.getRequestDispatcher("house/manageRoom.jsp").forward(request, response); 
        		   }
          		  
  }
          
           
	
	
	public void init() throws ServletException {
		// Put your code here
	}

}
