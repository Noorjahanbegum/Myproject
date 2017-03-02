package com.watchshop.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.watchshop.model.Product;
import com.watchshop.model.Productlist;

@Repository
public class Prodlistdao {
	@Autowired
	 SessionFactory sessionFactory;
	public void saveproduct(Productlist product)
	{
		Session session= sessionFactory.openSession();
		System.out.println("insert method called");
		session.beginTransaction();
		session.save(product);
		session.getTransaction().commit();
			session.close();
		
		
	}
	public List listpro()
	{
		Session session=sessionFactory.openSession();
		System.out.println("insert called method");
		session.beginTransaction();
		List prolist=session.createQuery("FROM Product").list();
		System.out.println("values enter");
		session.getTransaction().commit();
		session.close();
		return prolist;
	}
	public Product infoPro(int pid)
	{
		Session session=sessionFactory.openSession();
		System.out.println("insert called method");
		session.beginTransaction();
		
		Product infop=(Product)session.get(Product.class,pid);
		
		session.getTransaction().commit();
		session.close();
		
		return infop;
	}
	
}
