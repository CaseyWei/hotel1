package com.qy.hotel.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.qy.hotel.biz.AdminBiz;
import com.qy.hotel.dto.Apply;

public class ApplyMessageSvl extends HttpServlet {

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
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
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");
			
			Date jointime=null;
			String hname=request.getParameter("hname");
			String fuzeren=request.getParameter("name");
			String fuzerenqingkuang=request.getParameter("fuzerenqingkuang");
			String tele=request.getParameter("tele");
			String addr=request.getParameter("addr");
			String time=request.getParameter("time");
			SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			
			try {
				jointime=format.parse(time);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			Apply apply=new Apply();
			apply.setHname(hname);
			apply.setFuzeren(fuzeren);
			apply.setFuzerenqingkuang(fuzerenqingkuang);
			apply.setPhone(tele);
			apply.setAddr(addr);
			apply.setJointime(new java.sql.Date(jointime.getTime()));
			AdminBiz biz=new AdminBiz();
			int result=biz.insertApplyMessage(apply);
			if(result==0){
				request.setAttribute("msg","提交失败请重新申请！");
			}else{
				request.setAttribute("msg","提交成功,请注意查看！");
			}
			request.getRequestDispatcher("front/jm.jsp").forward(request, response);
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
