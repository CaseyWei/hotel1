package com.qy.hotel.control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import com.qy.hotel.biz.AdminBiz;

public class AModifyMima extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public AModifyMima() {
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
		
		//int object=Integer.valueOf( (String) request.getSession().getAttribute("user.id"));
	//	String object=request.getSession().getAttribute("user").getClass().getName(id);
		String id=request.getParameter("uname");
		System.out.println("uuu="+id);
		int pwd=Integer.valueOf(request.getParameter("pwd"));
		//int repwd=Integer.valueOf(request.getParameter("repwd"));
		System.out.println("repwd="+pwd);
		AdminBiz biz=new AdminBiz();
		boolean user=biz.updateAPwd(id,pwd);
		if(user=true){
			JOptionPane.showMessageDialog(null,"修改成功!");
			request.getRequestDispatcher("roommessageSvl").forward(request, response);
		}else{
			JOptionPane.showMessageDialog(null,"修改失败！");
			request.getRequestDispatcher("right/admin.jsp").forward(request, response);
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
