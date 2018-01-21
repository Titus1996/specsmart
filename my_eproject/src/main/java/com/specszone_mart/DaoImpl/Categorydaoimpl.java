package com.specszone_mart.DaoImpl;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.specszone_mart.dao.Categorydao;
import com.specszone_mart.model.Category;
@Repository
@Transactional
public class Categorydaoimpl implements Categorydao{
	@Autowired
	private SessionFactory sessionFactory;

	public void addCategory(Category category) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		session.saveOrUpdate(category);
		transaction.commit();
		session.close();

	}
	public List<Category> getAllCategory() {
		Session session = sessionFactory.openSession();
		List<Category> all = session.createQuery("from Category", Category.class).list();
		session.close();//c2
		return all;

	}

	public Category getCategoryById(int id) {

		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		Category allbyid = new Category();//c1
		transaction.commit();
		session.close();
		return allbyid;

	}


	public void delete(int id) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		session.delete(getCategoryById(id));
		transaction.commit();
		session.close();
	}

}
