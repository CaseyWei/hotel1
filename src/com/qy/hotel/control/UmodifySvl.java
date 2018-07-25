package com.qy.hotel.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.jms.Session;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.qy.hotel.biz.AdminBiz;
import com.qy.hotel.dto.Person;

public class UmodifySvl extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public UmodifySvl() {
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
		System.out.println("aaaa");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		//PrintWriter out=response.getWriter();
		int pwd=Integer.valueOf(request.getParameter("pass"));
		int repwd=Integer.valueOf(request.getParameter("repwd"));
		/*AdminBiz biz=new AdminBiz();
		boolean  list=biz.isSameUser(object,repwd);*/
		String responseText="";
		if(pwd==repwd){
			responseText = "密码正确！";
		}else{
			responseText = "密码不匹配，请重新输入！";
		}
		
		
	//	out.print(responseText);
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
