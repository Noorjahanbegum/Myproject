package com.watchshop.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.watchshop.model.CartModel;
import com.watchshop.model.UserDetails;

@Repository
public class CartDao {
	@Autowired
	 SessionFactory sessionFactory;
	
	public CartModel getP(int proid)
	{
		Session session=sessionFactory.openSession();
		System.out.println("insert method called");
		session.beginTransaction();
	
		CartModel cart = (CartModel)session.get(CartModel.class,proid); 
		
		session.getTransaction().commit();
		session.close();
		return cart;
	}
	public void savecart(CartModel c)
	{
		Session session= sessionFactory.openSession();
		System.out.println("insert method called");
		session.beginTransaction();
		session.save(c);
		session.getTransaction().commit();
			session.close();
		
		
	}
	public List listcat(String n)
	{
		Session session=sessionFactory.openSession();
		System.out.println("insert called method");
		session.beginTransaction();
		
		List cat=session.createQuery("FROM CartModel where cartuser='"+n+"'").list();
		
		session.getTransaction().commit();
		session.close();
		
		return cat;
	}
	
	public int maxId()
	{
		Session session=sessionFactory.openSession();
		System.out.println("insert called method");
		session.beginTransaction();
		
		String SQL_QUERY="select max(cartid) from CartModel";
		List cat=session.createQuery(SQL_QUERY).list();
		session.getTransaction().commit();
		session.close();
		if(cat==null)
		{
		System.out.println("if"+cat);
		return 0;
		}
		else
		{
			System.out.println("else"+cat);
			return (Integer)cat.get(0);
		}
	}
		
	public CartModel removeCart(int acart)
	{
		Session session=sessionFactory.openSession();
		System.out.println("insert called method");
		session.beginTransaction();
		 CartModel cm=(CartModel)session.get(CartModel.class, acart);
		 session.delete(cm);
			session.getTransaction().commit();
				session.close();
				return cm;
	}
	public CartModel checkout(int crd)
	{
		Session session=sessionFactory.openSession();
		System.out.println("insert method called");
		session.beginTransaction();
		
		CartModel ck = (CartModel)session.get(CartModel.class,crd);
		
		session.getTransaction().commit();
		session.close();
		return ck;
				
	}
	@Transactional
	public List<UserDetails> getUser(String id) {
		//creating session object    
				Session session=sessionFactory.openSession();    
				    
				//creating transaction object    
				Transaction t=session.beginTransaction();    
		String hql = "from"+" UserDetails "+" where userName=" +"'"+id+"'";
		@SuppressWarnings("rawtypes")
		Query query = session.createQuery(hql);
		
		@SuppressWarnings("unchecked")
		List<UserDetails> listCategory = (List<UserDetails>) query.list();
		
		if (listCategory != null && !listCategory.isEmpty()) {
			
			/*Gson gson = new Gson();
			
			String jsoncartlist=gson.toJson(listCategory);
			return jsoncartlist;
			*/
			return listCategory;
		}
		t.commit();//transaction is commited    
		session.close();  
		
		return null;
	}

}