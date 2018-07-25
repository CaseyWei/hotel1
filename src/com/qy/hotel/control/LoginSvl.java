package com.qy.hotel.control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.qy.hotel.biz.UserBiz;
import com.qy.hotel.dto.Person;

public class LoginSvl extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public LoginSvl() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/*public void service  
	(HttpServletRequest request,HttpServletResponse response)
	throws ServletException,IOException{
		response.setContentType("text/html");
		String userName=request.getParameter("userName");
		int password=Integer.valueOf(request.getParameter("password"));
		UserBiz biz=new UserBiz();
		Person user=biz.login(userName,password);
		if(user !=null){
			request.getSession().setAttribute("user", user);
			//if(user.getRole().equals("1")){
				request.getRequestDispatcher("front/main.jsp").forward(request,response);
			}
			//else if(user.getRole().equals("2")){
				request.getRequestDispatcher("branch/main.jsp").forward(request, response);
			}
			//else if(user.getRole().equals("3")){
				//request.getRequestDispatcher("jinru.jsp").forward(request,response);
			}
			//else{
				System.out.println("role 数据异常，请检查");
				
			}
			}
			else{  request.setAttribute("msg", "用户名密码为空");
			       request.getRequestDispatcher("login.jsp").forward(request, response);
				
			
			
		}
		
		
	}
	*/
	
	public void init() throws ServletException {
		// Put your code here
	}

}
