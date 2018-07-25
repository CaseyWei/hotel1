package com.qy.hotel.biz;

import com.qy.hotel.dao.UserDao;
import com.qy.hotel.dto.Person;

public class UserBiz {
	public Person login(String userName,int password)
	{
		UserDao dao=new UserDao();
			return  dao.login(userName,password);
		
		  
	}
	
	
}
