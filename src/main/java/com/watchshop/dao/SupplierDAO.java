package com.watchshop.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.watchshop.model.Supplier;

@Repository
public class SupplierDAO {
	@Autowired
	 SessionFactory sessionFactory;
	public void saveSupplier(Supplier supp)
	{
		Session session= sessionFactory.openSession();
		System.out.println("insert method called");
		session.beginTransaction();
		session.save(supp);
		session.getTransaction().commit();
			session.close();
		
		
	}
	public List listSupplier()
	{
		Session session=sessionFactory.openSession();
		System.out.println("insert called method");
		session.beginTransaction();
		List supplist=session.createQuery("FROM Supplier").list();
		session.getTransaction().commit();
		session.close();
		return supplist;
	}
	public Supplier DispRecord(int sid)
	{
		Session se=sessionFactory.openSession();
		 se.beginTransaction();
		Supplier sup=(Supplier)se.get(Supplier.class,sid);
		return sup;
		
	}
	public void UpRecord(Supplier sup)
	{
		Session se=sessionFactory.openSession();
		 se.beginTransaction();
		 int sid=sup.getSuppId();
		Supplier supobj=(Supplier)se.get(Supplier.class,sid);
		supobj.setSuppName(sup.getSuppName());
		supobj.setContactNo(sup.getContactNo());
		supobj.setSuppAdd(sup.getSuppAdd());

		 se.update(supobj);
		 se.getTransaction().commit();
	
		 se.close();
		
		
	}
	public void deleteSupplier(int sid)
	{
		Session se=sessionFactory.openSession();
		 se.beginTransaction();
		Supplier sup=(Supplier)se.get(Supplier.class,sid);
		se.delete(sup);
		se.getTransaction().commit();
		se.close();
		
	}
}
