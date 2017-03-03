package com.watchshop.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.watchshop.model.CartModel;


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
	public List listcat()
	{
		Session session=sessionFactory.openSession();
		System.out.println("insert called method");
		session.beginTransaction();
		
		List cat=session.createQuery("FROM CartModel").list();
		
		session.getTransaction().commit();
		session.close();
		
		return cat;
	}
}
