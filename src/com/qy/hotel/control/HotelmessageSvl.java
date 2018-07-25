package com.qy.hotel.control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.qy.hotel.biz.AdminBiz;
import com.qy.hotel.dto.Fenye;
import com.qy.hotel.dto.Hotel;

public class HotelmessageSvl extends HttpServlet {

/*	private String p_page;
	private String p_size;*/


	/**
	 * 总管理员查看酒店信息
	 * Constructor of the object.
	 */
	public HotelmessageSvl() {
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
		if(request.getSession().getAttribute("user")!=null){
			//分页
			String p_page=request.getParameter("p_page");
			System.out.println("page="+p_page);
			String p_size=request.getParameter("p_size");
			System.out.println("page="+p_size);
			if(p_page==null||"".equals(p_page.trim())){
				p_page="1";
				System.out.println("page="+p_page);
			}
			if(p_size==null||"".equals(p_size.trim())){
				p_size="5";
			}
			int page=Integer.parseInt(p_page);
			int size=Integer.parseInt(p_size);
			int rowcount=admin.rowCount();//总记录数
			int totalPage=rowcount%size==0?rowcount/size:rowcount/size+1;//计算总页数
			int pageNow=page>totalPage?totalPage:page;
			if(pageNow<1){
				pageNow=1;
			}
			int star=(pageNow-1)*size;//开始位置
			int end=star+size;//结束位置
			
			Fenye fenye=new Fenye();
			fenye.setPageNow(pageNow);
			fenye.setSize(size);
			fenye.setStar(star);
			fenye.setEnd(end);
			fenye.setRowcount(rowcount);
			fenye.setTotalPage(totalPage);
			List<Hotel> list=admin.listHotel(star,size);
			request.setAttribute("fenye",fenye);
			request.setAttribute("list",list);
			if(list!=null){
				request.getSession().setAttribute("hotel",list);
				request.getRequestDispatcher("Manage/muser.jsp").forward(request,response);
			}else{
				request.getRequestDispatcher("error.jsp").forward(request,response);
			}
			}else{
				request.getRequestDispatcher("Manage/Login.jsp").forward(request,response);
			}
		
		
	}
	
	
	
	
	
/*	if(p_page==null||"".equals((p_page).trim())){
		p_page="1";//默认值
	}else{
		this.p_page=p_page;
	}
	if(p_size==null||"".equals((p_size).trim())){
		p_size="5";//默认大小
	}else{
		this.p_size=p_size;
	}
		if(list.size()>0){
			request.setAttribute("list",list);
			request.getRequestDispatcher("Manage/muser.jsp").forward(request, response);
		}
	*/
	public void init() throws ServletException {
		// Put your code here
	}

}
