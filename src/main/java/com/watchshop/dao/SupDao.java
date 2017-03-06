package com.watchshop.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.watchshop.model.AddCategory;
import com.watchshop.model.SupModel;

@Repository
public class SupDao {
	@Autowired
	SessionFactory sessionFactory;
	
	public void saveSupplier(SupModel supm)
	{
		Session session=sessionFactory.openSession();
		System.out.println("insert method called");
		session.beginTransaction();
		session.save(supm);
		session.getTransaction().commit();
		session.close();
		
		
	}
	public List listsup()
	{
		Session session=sessionFactory.openSession();
		System.out.println("insert called method");
		session.beginTransaction();
		List supplist=session.createQuery("FROM SupModel").list();
		session.getTransaction().commit();
		session.close();
		return supplist;
	}
	public SupModel getSup(int supid)
	{
		Session session=sessionFactory.openSession();
		System.out.println("insert method called");
		session.beginTransaction();
		
		SupModel sup = (SupModel)session.get(SupModel.class,supid); 
		
		session.getTransaction().commit();
		session.close();
		
		
		System.out.println(sup.getName());
		System.out.println("=============================="+sup.getId());
		return sup;
	}
	
	
	public void updateSup(SupModel supobj)
	{
		Session session=sessionFactory.openSession();
		System.out.println("insert method called");
		session.beginTransaction();
		
		session.saveOrUpdate(supobj); 
		
		session.getTransaction().commit();
		session.close();
		
		
		System.out.println(supobj.getName());
		System.out.println("=============================="+ supobj.getName());
		
	}

	public SupModel deleteSup(int supid)
	{
		Session session=sessionFactory.openSession();
		System.out.println("insert method called");
		session.beginTransaction();
		
		SupModel s = (SupModel)session.get(SupModel.class,supid);
		
		session.delete(s);
		session.getTransaction().commit();
		session.close();
		return s;
				
	}
}
