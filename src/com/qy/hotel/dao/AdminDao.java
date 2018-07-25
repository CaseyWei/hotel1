package com.qy.hotel.dao;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import com.qy.hotel.dto.Admin;
import com.qy.hotel.dto.Apply;
import com.qy.hotel.dto.Fenye;
import com.qy.hotel.dto.Hotel;
import com.qy.hotel.dto.Order;
import com.qy.hotel.dto.Person;
import com.qy.hotel.dto.Pojo;
import com.qy.hotel.dto.roommessage;
public class AdminDao extends BaseDao{
	//管理员登录
	public Admin loginAdmin(String id,String apwd){
		Admin am = null;
		openconnection();
		String sql = "select * from admin where id=? and apwd=?";	
		try {			
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2, apwd);
			rs = ps.executeQuery();
			if( rs != null){
				while(rs.next()){
					am = new Admin();
					am.setId(id);
					am.setHnumber(rs.getInt("hnumber"));
					System.out.println("hId="+rs.getInt("hnumber"));
					am.setApwd(rs.getString("apwd"));
					am.setRole(rs.getString("role"));
					break;
				}
				rs.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			closeResource();
		}
		return am;		
	}
	//用户登录
	public Admin loginUser2(String id,String apwd){
		Admin admin = null;
		System.out.println("$$$$="+id);
		openconnection();
		String sql = "select * from admin where id ='" + id + "' and apwd='" + apwd + "'";
		try {			
			st = con.createStatement();		
			rs = st.executeQuery(sql);
			if( rs != null){
				while(rs.next()){
					admin = new Admin();					
					admin.setAname(rs.getString("id"));
					admin.setApwd(rs.getString("pwd"));	
				}
				rs.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			closeResource();
		}
		return admin;		
	}
//查询房间信息
	public List<roommessage> getAllPrice() {
		ArrayList<roommessage> list=null;
		String sql="select rnumber,fangxing,position,price,ficilitiesgoods from roommessage";
		this.openconnection();
		try {
			ps=con.prepareStatement(sql);
			rs=ps.executeQuery();
			if(rs!=null){
				list=new ArrayList<roommessage>(6);
				while(rs.next()){
					roommessage	room=new roommessage();
					room.rnumber=rs.getInt("rnumber");
					room.fangxing=rs.getString("fangxing");
					room.position=rs.getString("position");
					room.price=rs.getInt("price");
					room.ficilitiesgoods=rs.getString("ficilitiesgoods");
					list.add(room);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			this.closeResource();
		}
		return list;
	}
	
//添加房间信息
	public roommessage addmessage(int rnumber, int hnumber, String fangxing,
			String position, int price, String ficilitiesgoods) {
		roommessage room=null;
		this.openconnection();
			String sql="insert into roommessage(rnumber,hnumber,fangxing,position,price,ficilitiesgoods) values (?,?,?,?,?,?)";
			try {
				ps=con.prepareStatement(sql);
				ps.setInt(1, rnumber);
				ps.setInt(2,hnumber);
				ps.setString(3, fangxing);
				ps.setString(4, position);
				ps.setInt(5, price);
				ps.setString(6, ficilitiesgoods);
				ps.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			}finally{
				this.closeResource();
			}
		return room;
	}
//查询酒店的所有订单
	public List<Hotel> getAllOrders() {
		ArrayList<Hotel> list=null;
		/*Order order;*/
		String sql="select onumber, uname,hname,fangxing,ordermessage.phone,email,shenfenzheng,startime,endtime,price from ordermessage,hotel where ordermessage.hnumber=hotel.hnumber";
		this.openconnection();
		try {
			ps=con.prepareStatement(sql);
			rs=ps.executeQuery();
			if(rs!=null){
				list=new ArrayList<Hotel>(10);
				while(rs.next()){
					Hotel hotel=new Hotel();
					hotel.onumber=rs.getInt("onumber");
					hotel.uname =rs.getString("uname");
					hotel.hname=rs.getString("hname");
					hotel.fangxing=rs.getString("fangxing");
					hotel.phone=rs.getInt("phone");
					
					hotel.shenfenzheng=rs.getString("shenfenzheng");
					hotel.startime=rs.getDate("startime");
					hotel.endtime=rs.getDate("endtime");
					hotel.price=rs.getInt("price");
				//	hotel.account=rs.getInt("account");
					list.add(hotel);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			this.closeResource();
		}
		return list;
	}
//判断是否注册
	public boolean  isSameUser(String uname,int repwd) {
		boolean bb = false;
		ArrayList<Person> list = null;
		this.openconnection();
		try {
			String sql="select * from person where uname=? and upwd=?";
			ps=con.prepareStatement(sql);
			ps.setString(1, uname);
			ps.setInt(2, repwd);
			rs=ps.executeQuery();
			if(rs!=null){
				list =new ArrayList<Person>();
				while(rs.next()){
					Person user=new Person();
					user.uname=rs.getString("uname");
					user.upwd=rs.getInt("upwd");
					user.sex=rs.getString("sex");
					user.tele=rs.getString("tele");
					user.addr=rs.getString("addr");
					user.email=rs.getString("email");
					list.add(user);
					bb=true;
				}
			}else{
				 bb=false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			this.closeResource();
		}
		return bb;
	}

	public boolean insertUcomment() {
		
		return false;
	}
//查询用户订单
	public List<Hotel> getOrders(String object) {
		this.openconnection();
		System.out.println("222="+object);
		ArrayList<Hotel> list=null;
		String sql="select onumber,fangxing,price,phone,startime,endtime from ordermessage where uname=?";
		System.out.println("sqlq="+sql);
		try {
			ps=con.prepareStatement(sql);
			ps.setString(1, object);
			rs=ps.executeQuery();
			list=new ArrayList<Hotel>();
			if(rs!=null){
				while(rs.next()){
					Hotel hotel=new Hotel();
					hotel.onumber=rs.getInt("onumber");
					hotel.fangxing=rs.getString("fangxing");
					hotel.startime=rs.getDate("startime");
					hotel.endtime=rs.getDate("endtime");
					hotel.phone=rs.getInt("phone");
					hotel.price=rs.getInt("price");
					list.add(hotel);
					System.out.println("onumber11="+rs.getInt("onumber"));
				}
			}
			System.out.println("listqq="+list.size());
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			this.closeResource();
		}
		return list;
	}
	//修改用户订单
	public int upDataOrder(int oId,String fangxing){
		int result=0;
		this.openconnection();
		String sql="update ordermessage set fangxing=? where onumber=?";
		try {
			ps=con.prepareStatement(sql);
			ps.setString(1, fangxing);
			ps.setInt(2,oId);
			result=ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
//删除订单
	public boolean delOrders(int id) {
		boolean bol=false;
		this.openconnection();
		String sql="delete from ruzhumessage where onumber=?";
		try {
			ps=con.prepareStatement(sql);
			ps.setInt(1,id);
			ps.executeUpdate();
			bol=true;
			if(bol){
				String sql2="delete from ordermessage where onumber=?";
				ps=con.prepareStatement(sql2);
				ps.setInt(1,id);
				ps.executeUpdate();
				bol=true;
		}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			this.closeResource();
		}
		return bol;
	}
//添加用户订单(预定房间)
	public int insertOrder(Order order){
		int result=0;
		int	id=0;
    	int number=0;
		this.openconnection();
		String sql1="select * from ordermessage where onumber =(select max(onumber)from ordermessage)";
        try {
        	st=con.createStatement();
			rs=st.executeQuery(sql1);
			 if(rs!=null){
		        	while(rs.next()){
		        	id=rs.getInt("onumber")+1;
						System.out.println("id="+id);
		        	}
		        }
		} catch (SQLException e) {
			e.printStackTrace();
		}
       
     //插入订单表
     String sql="insert into ORDERMESSAGE (onumber,uname,fangxing,phone,email,shenfenzheng,startime,endtime,price) values('"+id+"','"+order.uname+"','"+order.fangxing+"','"+order.phone+"','"+order.email+"','"+order.shenfenzheng+"','"+order.startime+"','"+order.endtime+"','"+order.price+"')";
     try {
		st.executeUpdate(sql);
		result=1;
		if(result==1){
			String sql2="select * from ruzhumessage where id=(select max(id)from ruzhumessage)";
			st=con.createStatement();
			rs=st.executeQuery(sql2);
			if(rs!=null){
				while(rs.next()){
					number=rs.getInt("id")+1;
					System.out.println("number="+number);
				}
			}
		}
	} catch (SQLException e) {
		e.printStackTrace();
	}
	//插入ruzhumessage表
	String sql3="insert into ruzhumessage (id,uname,onumber,startime,endtime)values('"+number+"','"+order.uname+"','"+id+"','"+order.startime+"','"+order.endtime+"')";
	try {
		st.executeUpdate(sql3);
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return result;
	}
//修改用户密码
	public boolean updatePwd(String object, int pwd) {
		boolean bol=false;
		this.openconnection();
		String sql="update person set upwd=? where uname=?";
		try {
			ps=con.prepareStatement(sql);
			ps.setInt(1,pwd);
			ps.setString(2,object);
			ps.executeUpdate();
			bol=true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return bol;
	}
//修改管理员密码
	public boolean updateAPwd(String id, int pwd) {
		boolean bol=false;
		this.openconnection();
		System.out.println("mima="+pwd);
		System.out.println("xingming="+id);
		String sql="update admin set apwd=? where id=?";
		try {
			ps=con.prepareStatement(sql);
			ps.setInt(1,pwd);
			ps.setString(2,id);
			ps.executeUpdate();
			bol=true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return bol;
	}
//查询所有的加盟酒店的信息
	public List<Hotel> getAllHotel() {
		ArrayList<Hotel> list=null;
		Hotel hotel=null;
		this.openconnection();
		String sql="select * from hotel";
		try {
			ps=con.prepareStatement(sql);
			rs=ps.executeQuery();
			if(rs!=null){	
				list = new ArrayList<Hotel>();
				while(rs.next()){
					hotel=new Hotel();
					hotel.hnumber=rs.getInt("hnumber");
					hotel.hname=rs.getString("hname");
					hotel.fuzeren=rs.getString("fuzeren");
					hotel.addr=rs.getString("addr");
					hotel.tele=rs.getString("tele");
					hotel.jointime=rs.getDate("jointime");
					hotel.companyxingzhi=rs.getString("companyxingzhi");
					list.add(hotel);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			this.closeResource();
		}
		return list;
	}
//删除酒店信息
	public boolean delHotel(int hnumber) {
		boolean bol=false;
		this.openconnection();
		String sql="delete from ruzhutable where hnumber=?";
		try {
			ps=con.prepareStatement(sql);
			ps.setInt(1,hnumber);
			ps.executeUpdate();
			bol=true;
			if(bol){
				String sql1="delete from ordermessage where hnumber=?";
				ps=con.prepareStatement(sql1);
				ps.setInt(1,hnumber);
				ps.executeUpdate();
				bol=true;
			}
			String sql2="delete from roommessage where hnumber=?";
			ps=con.prepareStatement(sql2);
			ps.setInt(1,hnumber);
			ps.executeUpdate();
			bol=true;	
			if(bol){
				String sql3="delete from hotel where hnumber=?";
				ps=con.prepareStatement(sql3);
				ps.setInt(1,hnumber);
				ps.executeUpdate();
				bol=true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			this.closeResource();
		}
		return false;
	}
	//分页查询酒店房间信息
	//查询酒店房间信息
	public List<Pojo> select() {
		this.openconnection();
		List<Pojo> listPojo=new ArrayList<Pojo>();
		String sql1="select hnumber,hname,addr from hotel";
		try {
			ps=con.prepareStatement(sql1);
			rs=ps.executeQuery();
			if(rs!=null){
				while(rs.next()){
					//System.out.println("1");
					Pojo p=new Pojo();
					p.addr=rs.getString("addr");
					p.hname=rs.getString("hname");
					//System.out.println("hname:"+rs.getString("hname"));
					String sql2="select * from roommessage where hnumber='"+rs.getInt("hnumber")+"' ";
						ps=con.prepareStatement(sql2);
						ResultSet  rs1=ps.executeQuery();
						if(rs1!=null){
							List<roommessage> listRmsg=new ArrayList<roommessage>();
							while(rs1.next()){
								roommessage rMsg=new roommessage();
								rMsg.fangxing=rs1.getString("fangxing");
								rMsg.position=rs1.getString("position");
								rMsg.price=rs1.getInt("price");
								rMsg.img=rs1.getString("img");
								listRmsg.add(rMsg);	
							}
							p.setList(listRmsg);
						}
					listPojo.add(p);
				}
			}
			System.out.println("------"+listPojo.size()+"!!!!!!!!!!!!!");
		} catch (SQLException e1) {
			e1.printStackTrace();
		}finally{
			this.closeResource();
		}
		
		return listPojo;
	}
	//插入申请信息
	public int insertApplyMessage(Apply apply) {
		int result=0;
		int id=0;
		this.openconnection();
		String sql="select * from applymessage";
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
			  if(rs!=null){
              	while(rs.next()){
              	String sql1="select * from applymessage where id=(select max(id) from applymessage)";
   				 rs=st.executeQuery(sql1);
   				 	while(rs.next()){
   	   				 System.out.println("id="+rs.getInt("id"));
   	              	id=rs.getInt("id")+1;
   							System.out.println("id="+id);
   				 	}
              	}
              }else{ //如果表中没有数据就插入一条
				String sql2="insert into applymessage(id,hname,fuzeren,fuzerenqingkuang,phone,addr,jointime,statu)values('"+1+"','"+apply.getHname()+"','"+apply.getFuzeren()+"','"+apply.getFuzerenqingkuang()+"','"+apply.getPhone()+"','"+apply.getAddr()+"','"+apply.getJointime()+"','待审')";
				result=st.executeUpdate(sql2);
				return result;
			  }
			  String sql3="insert into applymessage(id,hname,fuzeren,fuzerenqingkuang,phone,addr,jointime,statu)values('"+id+"','"+apply.getHname()+"','"+apply.getFuzeren()+"','"+apply.getFuzerenqingkuang()+"','"+apply.getPhone()+"','"+apply.getAddr()+"','"+apply.getJointime()+"','待审')";
			  result=st.executeUpdate(sql3);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	//显示所有的加盟信息
	public List<Apply> selApply() {
		List<Apply> list=null;
		Apply app=null;
		this.openconnection();
		String sql="select id,hname,fuzeren,fuzerenqingkuang,phone,addr,jointime,statu from applymessage where statu='待审'";
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
			list=new ArrayList<Apply>();
			
			while(rs.next()){
				app=new Apply();
				app.id=rs.getInt("id");
				app.hname=rs.getString("hname");
				app.fuzeren=rs.getString("fuzeren");
				app.fuzerenqingkuang=rs.getString("fuzerenqingkuang");
				app.phone=rs.getString("phone");
				app.addr=rs.getString("addr");
				app.jointime=rs.getDate("jointime");
				app.statu=rs.getString("statu");
				list.add(app);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	//审核
	public int shenHeTongYi(int id) {
		int result=0;//在apply中进行修改的返回值并在Hotel表中插入数据时的返回值
		int hId=0;
		Apply ap=null;
		this.openconnection();
		String sql="update applymessage set statu=? where id=?";
		try {
			ps=con.prepareStatement(sql);
			ps.setString(1,"审核通过");
			ps.setInt(2,id);
			result=ps.executeUpdate();
			
			String sql4="select hname,fuzeren,fuzerenqingkuang,phone,addr,jointime from applymessage where id="+id;
			st=con.createStatement();
			rs=st.executeQuery(sql4);
			while(rs.next()){
				ap=new Apply();
				ap.hname=rs.getString("hname");
				ap. phone=rs.getString("phone");
				ap.jointime=rs.getDate("jointime");
				ap. addr=rs.getString("addr");
				ap. fuzeren=rs.getString("fuzeren");
				ap. fuzerenqingkuang=rs.getString("fuzerenqingkuang");
			}
			String sql1="select * from hotel where hnumber=(select max(hnumber) from hotel)";
			ps=con.prepareStatement(sql1);
			rs=ps.executeQuery();
			if(rs!=null){
				while(rs.next()){
					hId=rs.getInt("hnumber")+1;
				}
				String sql2="insert into hotel(hname,hnumber,tele,jointime,addr,fuzeren,companyxingzhi)values('"+ap.getHname()+"','"+hId+"','"+ap.getPhone()+"','"+ap.getJointime()+"','"+ap.getAddr()+"','"+ap.getFuzeren()+"','"+ap.getFuzerenqingkuang()+"')";
				ps=con.prepareStatement(sql2);
				result=ps.executeUpdate();
			}else{
				String sql3="insert into hotel(hname,hnumber,tele,jointime,addr,fuzeren,companyxingzhi)values('"+ap.getHname()+"','"+hId+"','"+ap.getPhone()+"','"+ap.getJointime()+"','"+ap.getAddr()+"','"+ap.getFuzeren()+"','"+ap.getFuzerenqingkuang()+"')";
				ps=con.prepareStatement(sql3);
				result=ps.executeUpdate();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	//分页
	public int rowCount() {
		int count=0;
		String sql="select count(*) from hotel";
		this.openconnection();
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
			while(rs.next()){
				count=rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return count;
	}
//分页显示加盟酒店列表
	public List<Hotel> listHotel(int star, int size){
		List<Hotel> list=null;
		this.openconnection();
		String sql="select * from hotel hnumber limit "+star+","+size+"";
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
			list=new ArrayList<Hotel>();
			while(rs.next()){
				Hotel hotel=new Hotel();
				hotel.hnumber=rs.getInt("hnumber");
				hotel. hname=rs.getString("hname");
				hotel. tele=rs.getString("tele");
				hotel. jointime=rs.getDate("jointime");
				hotel.addr=rs.getString("addr");
				hotel.fuzeren=rs.getString("fuzeren");
				hotel.companyxingzhi=rs.getString("companyxingzhi");
				list.add(hotel);
			}
			System.out.println("list="+list.size());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	public int selHtoel() {
		this.openconnection();
		int result=0;
		String sql="select count(*) from hotel";
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
			while(rs.next()){
				result=rs.getInt(1);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	//分页查看房间信息
	public List<Pojo> selselSplit(int star, int size) {
		List<Pojo> list=null;
		list=new ArrayList<Pojo>();
		List<roommessage> listRoom=null;
		this.openconnection();
		String sql="select hname,hnumber,addr from hotel limit "+star+","+size+"";
		try {
			st=con.createStatement();
			rs=st.executeQuery(sql);
			if(rs!=null){
				while(rs.next()){
					Pojo p=new Pojo();
					p.hname=rs.getString("hname");
					p.hnumber=rs.getInt("hnumber");
					p.addr=rs.getString("addr");
					String sql1="select fangxing,position,price,img from roommessage where hnumber='"+rs.getInt("hnumber")+"'";
					st=con.createStatement();
					ResultSet rs1=st.executeQuery(sql1);
					if(rs1!=null){
						listRoom=new ArrayList<roommessage>();
						while(rs1.next()){
							roommessage room=new roommessage();
							room.fangxing=rs1.getString("fangxing");
							room.position=rs1.getString("position");
							room.price=rs1.getInt("price");
							room.img=rs1.getString("img");
							listRoom.add(room);
						}
						p.setList(listRoom);
					}
					list.add(p);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}
	public int delApply(int id) {
		int result=0;
		this.openconnection();
		String sql="delete from applymessage where id="+id;
		try {
			st=con.createStatement();
			result=st.executeUpdate(sql);
			return result;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
}
