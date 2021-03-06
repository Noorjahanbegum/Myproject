package com.watchshop.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.watchshop.model.UserCreadential;
import com.watchshop.model.UserDetails;

@Repository
public class InsertDao {
	 @Autowired
		private SessionFactory sessionFactory;

		
		 public void setSessionFactory(SessionFactory sessionFactory) {
		     this.sessionFactory = sessionFactory;
		 }
		public void insertData(UserDetails r1)
		{    
			//creating session object    
			Session session=sessionFactory.openSession();    
			    
			//creating transaction object    
			Transaction t=session.beginTransaction();    
			        
			session.save(r1);//persisting the object    
			    
			t.commit();//transaction is commited    
			session.close();  
				}
		public void insertLogin(UserCreadential r1)
		{
			    
			//creating session object    
			Session session=sessionFactory.openSession();    
			    
			//creating transaction object    
			Transaction t=session.beginTransaction();    
			        
			
			
			session.save(r1);//persisting the object    
			    
			t.commit();//transaction is commited    
			session.close();  
			}
		
		@Transactional
		public UserCreadential getUser(String username) {
			//creating session object    
					Session session=sessionFactory.openSession();    
					    
					//creating transaction object    
					Transaction t=session.beginTransaction();    
			String hql = "from "+" UserCreadential "+" where username=" + "'"+username+"'";
			@SuppressWarnings("rawtypes")
			Query query = session.createQuery(hql);
			
			@SuppressWarnings("unchecked")
			List<UserCreadential> listUser = (List<UserCreadential>) query.list();
			
			if (listUser != null && !listUser.isEmpty()) {
				return listUser.get(0);
			}
			t.commit();//transaction is commited    
			session.close();  
			
			return null;
		}
}

