package com.qy.hotel.control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import com.qy.hotel.biz.AdminBiz;

public class ModifyMima extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public ModifyMima() {
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
		String object=(String)request.getSession().getAttribute("uname");
		System.out.println(request.getParameter("pwd"));
		int pwd=Integer.valueOf(request.getParameter("pwd"));
		//int repwd=Integer.valueOf(request.getParameter("repwd"));
		System.out.println("repwd="+pwd);
		AdminBiz biz=new AdminBiz();
		boolean user=biz.updatePwd(object,pwd);
		if(user=true){
			JOptionPane.showMessageDialog(null,"修改成功！");
			request.getRequestDispatcher("front/main.jsp").forward(request, response);
		}else{
			JOptionPane.showMessageDialog(null,"修改失败！");
			request.getRequestDispatcher("house/umodify.jsp").forward(request, response);
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
