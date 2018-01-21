package com.specszone_mart.DaoImpl;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.specszone_mart.model.Billingaddress;


@Repository("Billingdao")
@Transactional
public class Billingdaoimpl {

	@Autowired
	SessionFactory sessionFactory;
		public void saveOrUpdate(Billingaddress billingAddress) {
			sessionFactory.getCurrentSession().saveOrUpdate(billingAddress);
			
		}
}
