package com.qy.hotel.dto;

import java.util.List;

public class Fenye {
 public int pageNow;
 public int size;
 public int star;
 public int end;
 public int rowcount;
 public int totalPage;
 //public List<?> list;
 
 String p_page="1";
 String p_size="3";
public int getPageNow() {
	return pageNow;
}
public void setPageNow(int pageNow) {
	this.pageNow = pageNow;
}
public int getSize() {
	return size;
}
public void setSize(int size) {
	this.size = size;
}
public int getStar() {
	return star;
}
public void setStar(int star) {
	this.star = star;
}
public int getEnd() {
	return end;
}
public void setEnd(int end) {
	this.end = end;
}
public int getRowcount() {
	return rowcount;
}
public void setRowcount(int rowcount) {
	this.rowcount = rowcount;
}
public int getTotalPage() {
	return totalPage;
}
public void setTotalPage(int totalPage) {
	this.totalPage = totalPage;
}
/*public void setList(List<?> list) {
	this.list = list;
}
public List<?> getList() {
	return list;
}*/
 /**@
  * p_page:当前页
  * p_size：页面显示的记录数
  * rowcount：总的记录数
  * **/
/* public Fenye(String p_page,String p_size,int rowcount){
	if(p_page==null||"".equals(p_page.trim())){
		p_page="1";
	 }
	if(p_size==null||"".equals(p_size.trim())){
		p_size="3";
	 }
	 pageNow=Integer.parseInt(p_page);
	 size=Integer.parseInt(p_size);
	 pageNow=pageNow<1?1:pageNow;
	 totalPage=rowcount%size==0?rowcount/size:rowcount%size+1;//计算总页数
	 pageNow=pageNow>totalPage?totalPage:pageNow;
	 star=(pageNow-1)*size;//开始位置
	 end=star+size;//结束位置
 }*/

}
