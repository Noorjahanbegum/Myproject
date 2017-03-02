package com.watchshop.dao;

import org.springframework.stereotype.Repository;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.watchshop.model.Product;

@Repository
public class ViewProduct {
	@Autowired
	SessionFactory sessionFactory;
	
	public void saveProd(Product product)
	{
		Session session=sessionFactory.openSession();
		System.out.println("insert called method");
		session.beginTransaction();
		session.save(product);
		session.getTransaction().commit();
		session.close();
	}
	
	public List listPro()
	{
		Session session=sessionFactory.openSession();
		System.out.println("insert called method");
		session.beginTransaction();
		
		List products=session.createQuery("FROM Product").list();
		
		session.getTransaction().commit();
		session.close();
		
		return products;
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

