package com.qy.hotel.control;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import com.qy.hotel.biz.AdminBiz;
import com.qy.hotel.dto.Order;

public class UserReserveOrder extends HttpServlet {

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,response);
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
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		Date date1 = null;
		Date date2=null;
	    String fangxing=request.getParameter("fangxing") ;
	    String uname=request.getParameter("uname");
	    String uid=request.getParameter("uid");
	    String tel=request.getParameter("tel");
	    String email=request.getParameter("email");
	    String time01=request.getParameter("time01");
	    String time02=request.getParameter("time02");
	    String price=request.getParameter("price");
	   SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd");//用format来转换日期类型，输入的格式要与format的格式一样
	   try {
		date1=format.parse(time01);
		date2=format.parse(time02);
		} catch (ParseException e) {
			e.printStackTrace();
			} 
		if(uname==null){
			request.setAttribute("msg","请登录！");
			request.getRequestDispatcher("house/wmd02.jsp").forward(request, response);
			return;
		}
		Order order=new Order();
		order.setUname(uname);
		order.setFangxing(fangxing);
		order.setShenfenzheng(uid);
		order.setPhone(Integer.parseInt(tel));
		order.setEmail(email);
		order.setStartime(new java.sql.Date(date1.getTime()));
		order.setEndtime(new java.sql.Date(date2.getTime()));
		order.setPrice(Integer.parseInt(price));
		AdminBiz biz=new AdminBiz();
		int result=biz.insertUserOrder(order);
		if(result!=0){
			JOptionPane.showMessageDialog(null,"预定成功！请及时到店验证。"); 
            request.getRequestDispatcher("front/main.jsp").forward(request,response);
		}else{
			request.setAttribute("msg","预定失败！");
			request.getRequestDispatcher("house/wmd02.jsp").forward(request, response);
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
