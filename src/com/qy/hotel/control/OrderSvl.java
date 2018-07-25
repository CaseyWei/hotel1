package com.qy.hotel.control;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.qy.hotel.biz.AdminBiz;
import com.qy.hotel.dto.Hotel;

@SuppressWarnings("serial")
public class OrderSvl extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public OrderSvl() {
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
			AdminBiz admin=new AdminBiz();
			List <Hotel> allOrders=admin.getAllOrders();
			//Order order=(Order) admin.getAllOrders();
			System.out.println("order="+allOrders);
			for(int i=0;i<allOrders.size(); i++){  
				System.out.print("eeee="+allOrders.get(i)); 
				}
			if(allOrders!=null){
				System.out.println("=======");
				request.setAttribute("order", allOrders);
				System.out.println("=======");
				request.getRequestDispatcher("right/user.jsp").forward(request, response);
				System.out.println("=======");
			}else{
				request.getRequestDispatcher("error.jsp").forward(request, response);
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
