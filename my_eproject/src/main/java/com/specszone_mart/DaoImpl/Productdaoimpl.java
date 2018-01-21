package com.specszone_mart.DaoImpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.specszone_mart.dao.Productdao;
import com.specszone_mart.model.Product;

@Transactional
@Repository
public class Productdaoimpl implements Productdao {
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public Product addProduct(Product product) {// to add a product
		Session session = sessionFactory.openSession();
		Transaction transaction = (Transaction) session.beginTransaction();
		session.saveOrUpdate(product);
		transaction.commit();
		session.close();
		return product;
	
	}


	@Override
	public Product getProductById(int id) {// to get a product
		Session session = sessionFactory.openSession();
		Transaction transaction = (Transaction) session.beginTransaction();
		Product a1 = new Product();
		a1 = session.get(Product.class, id);// a1
		session.saveOrUpdate(a1);
		transaction.commit();
		session.close();
		return a1;
	}

	@Override
	public List<Product> getAllProduct() { // to list all products
		Session session = sessionFactory.openSession();
		List<Product> b1 = session.createQuery("from Product", Product.class).list();// b1
		session.close();
		return b1;
	}

	@Override
	public void delete(int id) {// to delete a product
		Session session = sessionFactory.openSession();
		Transaction transaction = (Transaction) session.beginTransaction();
		session.delete(getProductById(id));
		transaction.commit();
		session.close();

	}

}
