package com.qy.hotel.control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.qy.hotel.biz.AdminBiz;

public class IsSamePwdSvl extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public IsSamePwdSvl() {
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
System.out.println("dddd");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		response.setCharacterEncoding("gbk");
		String uname=request.getParameter("uname");
		int pwd=Integer.valueOf(request.getParameter("upwd"));
		AdminBiz biz=new AdminBiz();
		//boolean bol=biz.isSamePwd(uname,pwd);
		String responseText="";
		//if(bol==true){
			responseText="密码正确";
		//}else{
		//	responseText="用户名密码不匹配，请重新输入！";
		}
	//}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
