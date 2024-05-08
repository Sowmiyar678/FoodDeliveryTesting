package com.fdms.dao;

import java.util.ArrayList;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.fdms.bean.Food;
import com.fdms.util.FoodUtil;

public class FoodDAO {

	public int insertfood(Food emp) {
		int n=0;
		try {
			Session session=FoodUtil.getSession();
			Transaction tran=session.beginTransaction();
			session.persist(emp);
			tran.commit();
			n=1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return n;
	}
//========
	
	@SuppressWarnings("unchecked")
	public ArrayList<Integer> getIds(){
		ArrayList<Integer>idList = new ArrayList<Integer>();
			
			Session session=FoodUtil.getSession();
			idList=(ArrayList<Integer>) session.createQuery("select id from Food").list();
			session.close();
			return idList;
		
	}


	//==========
	public boolean deletefood(Food fdm) {
	
		try {
			Session session=FoodUtil.getSession();
			Transaction tran=session.beginTransaction();
			session.remove(fdm);
			tran.commit();
			session.close();
			return true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
//=========================UPDATE
		public boolean updatefood(Food fdm) {
			Session session=FoodUtil.getSession();
			Food e=session.get(Food.class,fdm.getHotelID());
			if(e!=null) {
				Transaction tran=session.beginTransaction();
				e.setHotelName(fdm.getHotelName());
				e.setAddress(fdm.getAddress());
				e.setHotelID(fdm.getHotelID());
				e.setPhoneNo(fdm.getPhoneNo());
				e.setEmail(fdm.getEmail());
				e.setRating(fdm.getRating());
				session.update(e);
				tran.commit();
				return true;
			}
			return false;
		}
		
		
		public Food getfood(Food e) {
			try {
				Session session=FoodUtil.getSession();
				Food fdm=session.get(Food.class,e.getHotelID());
				session.close();
				return fdm;
			} catch (Exception e1) {
				e1.printStackTrace();
			}
			return null;
		}
		//========================================FindAll
		public ArrayList<Food> getfoodList(){
			ArrayList<Food> list=new ArrayList<Food>();
			Session session=FoodUtil.getSession();
			list=(ArrayList<Food>) session.createQuery("from Food").list();
			session.close();
			return list;
		}
}
