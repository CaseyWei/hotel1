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
import com.qy.hotel.dto.Hotel;

public class CheckLoginSvl extends HttpServlet {

	/**
	 * 显示用户订单
	 * Constructor of the object.
	 */
	public CheckLoginSvl() {
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
		if(object==null){
			JOptionPane.showMessageDialog(null, "请登录！");
			request.getRequestDispatcher("front/main.jsp").forward(request, response);
		}else{
			AdminBiz biz=new AdminBiz();
			List<Hotel> order=(List)biz.getOrders(object);
			if(order.size()==0){
				request.setAttribute("msg","该用户尚未下单！");
			}else{
			request.setAttribute("msg",order);
			}
			request.getRequestDispatcher("house/roomMessage.jsp").forward(request, response);
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
