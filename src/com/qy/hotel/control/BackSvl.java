package com.qy.hotel.control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;
import com.qy.hotel.biz.AdminBiz;

public class BackSvl extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public BackSvl() {
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
		
		
		String orderId=request.getParameter("id");
		int id=Integer.parseInt(orderId);
		//String object=(String)request.getSession().getAttribute("uname");
		AdminBiz biz=new AdminBiz();
		boolean bol=biz.delOrders(id);
		if(bol==true){
			request.setAttribute("msg_info","退单成功！");
		}else{
			request.setAttribute("msg_info","退单失败！");
			
		}
		request.getRequestDispatcher("/TuDanCheckLoginSvl").forward(request, response);
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
