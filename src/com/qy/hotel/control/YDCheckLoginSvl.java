package com.qy.hotel.control;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

@SuppressWarnings("serial")
public class YDCheckLoginSvl extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public YDCheckLoginSvl() {
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
		request.setCharacterEncoding("UTF-8");//编码格式
		response.setCharacterEncoding("UTF-8");//编码格式
		
		Object object=request.getSession().getAttribute("uname");
		if(object==null){
		JOptionPane.showMessageDialog(null, "请登录！");
		request.getRequestDispatcher("front/main.jsp").forward(request, response);
		}else{
			String fangxing=request.getParameter("fangxing");
			int price=Integer.parseInt(request.getParameter("price"));
			request.setAttribute("fangxing",fangxing);
			request.setAttribute("price",price);
			
			request.getRequestDispatcher("house/wmf02.jsp").forward(request, response);
		}

}
	public void init() throws ServletException {
		// Put your code here
	}

}
