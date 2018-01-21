package com.specszone_mart.DaoImpl;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.specszone_mart.dao.Userdao;
import com.specszone_mart.model.User;


@Transactional
@Repository
public class Userdaoimpl implements Userdao
{
	@Autowired
	SessionFactory sessionFactory;
	 
		public List<User> getAllUser() { // for listing all existing users
		Session session = sessionFactory.openSession();
		List<User>  allproduct=session.createQuery("from User",User.class).list();
		session.close();
		return  allproduct;
	}
	   
	public User getUserById(int id) { // to list a user by id
		Session session = sessionFactory.openSession();
		Transaction transaction = (Transaction) session.beginTransaction();
		User a=new User();
		a=session.get(User.class, id);
		transaction.commit();
		session.close();
		return  a;

	}
	public void addUser(User user) {// to add a user
		Session session = sessionFactory.openSession();
		Transaction transaction = (Transaction) session.beginTransaction();
		session.saveOrUpdate(user);
		transaction.commit();
		session.close();
        }
	  
	public void updateUser(User user) { // to update a user details
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		session.saveOrUpdate(user);
		transaction.commit();
		session.close();
        
		
	}
	
}


