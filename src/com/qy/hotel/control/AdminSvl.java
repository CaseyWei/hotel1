package com.qy.hotel.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import com.qy.hotel.biz.AdminBiz;
import com.qy.hotel.dto.Admin;
import com.qy.hotel.dto.roommessage;

public class AdminSvl extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public AdminSvl() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}



	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		String id=request.getParameter("userid");
		String apwd=request.getParameter("userpss");
		String type=request.getParameter("type");
		String exchange=request.getParameter("exchange");
			AdminBiz admin=new AdminBiz();
			Admin am=admin.loginAdmin(id, apwd);
			if(am!= null){
				request.getSession().setAttribute("user", am);
				System.out.println(am.getId());
				if(am.getRole().equals("a")){
					request.getRequestDispatcher("admin.jsp").forward(request, response);
					
				}else if(am.getRole().equals("b")){
					request.getRequestDispatcher("manage.jsp").forward(request, response);
				}
				
			}else{
				JOptionPane.showMessageDialog(null,"用户名或密码错误，请重新输入!");
				//request.setAttribute("msg", "用户名或密码错误，请重新输入!");
				request.getRequestDispatcher("front/index.jsp").forward(request, response);
			}
			
		
		
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
