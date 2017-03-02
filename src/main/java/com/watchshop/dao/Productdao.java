package com.watchshop.dao;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.watchshop.model.Product;

@Repository
public class Productdao {
	@Autowired
	 SessionFactory sessionFactory;
	public void saveproduct(Product product)
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
	public Product getP(int proid)
	{
		Session session=sessionFactory.openSession();
		System.out.println("insert method called");
		session.beginTransaction();
		
		Product pro = (Product)session.get(Product.class,proid); 
		
		session.getTransaction().commit();
		session.close();
		return pro;
	}
	public void updateProd(Product pr)
	{
		Session session=sessionFactory.openSession();
		System.out.println("insert method called");
		session.beginTransaction();
		
		session.saveOrUpdate(pr); 
		
		session.getTransaction().commit();
		session.close();
	}
	public Product deleteProd(int prid)
	{
		Session session=sessionFactory.openSession();
		System.out.println("insert method called");
		session.beginTransaction();
		
		Product p = (Product)session.get(Product.class,prid);
		
		session.delete(p);
		session.getTransaction().commit();
		session.close();
		return p;
				
	}
}
