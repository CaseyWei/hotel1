package com.qy.hotel.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.qy.hotel.biz.AdminBiz;
import com.qy.hotel.dto.Fenye;
import com.qy.hotel.dto.Hotel;
import com.qy.hotel.dto.Pojo;
public class KeFangmessageSvl extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public KeFangmessageSvl() {
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
		AdminBiz biz=new AdminBiz();
		String p_page=request.getParameter("p_page");
		String p_size=request.getParameter("p_size");
		int rowcount=biz.selHtoel();//总记录数
		if(p_page==null||"".equals(p_page.trim())){
			p_page="1";
		 }
		if(p_size==null||"".equals(p_size.trim())){
			p_size="1";
		 }
		 int pageNow=Integer.parseInt(p_page);
		 int size=Integer.parseInt(p_size);
		 pageNow=pageNow<1?1:pageNow;//判断页数是否小于1
		 int totalPage=rowcount%size==0?rowcount/size:rowcount%size+1;//计算总页数
		 System.out.println("totalPage="+totalPage);
		 pageNow=pageNow>totalPage?totalPage:pageNow;
		 int star=(pageNow-1)*size;//开始位置
		 int end=star+size;//结束位置
		 Fenye fenye=new Fenye();
		 fenye.setPageNow(pageNow);
		 fenye.setSize(size);
		 fenye.setTotalPage(totalPage);
		 fenye.setEnd(end);
		 List<Pojo> list=biz.selSplit(star,size);
		/*Fenye fenye=new Fenye(p_page, p_size, rowcount);
		List<Pojo> list=biz.selSplit(fenye.getStar(),fenye.getSize());
		fenye.setList(list);
		request.setAttribute("rooms",fenye);*/
		 request.setAttribute("rooms",list);
		 request.setAttribute("fenye", fenye);
		request.getRequestDispatcher("house/housemessage.jsp").forward(request,response);
		//List<Pojo> list=biz.select();
		/*if(list!=null){
			request.setAttribute("rooms",list);
			request.getRequestDispatcher("house/housemessage.jsp").forward(request,response);
		}else{
			request.getRequestDispatcher("error.jsp").forward(request,response);
		}*/
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
