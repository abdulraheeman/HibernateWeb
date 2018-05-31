package com.ar.hibernate;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class UserDao {
	
	
	public static int register(User u) {
		
		Session session=new Configuration().configure().buildSessionFactory().openSession();
		
		Transaction tx=session.beginTransaction();
		tx.begin();
		  int i=(Integer)session.save(u);
		  
		  tx.commit();
		  session.close();
		  System.out.println("Save Successfully");
		  return i;
	}

}
