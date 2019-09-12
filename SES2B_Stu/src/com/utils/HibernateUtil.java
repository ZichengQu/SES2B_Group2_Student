package com.utils;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;



public class HibernateUtil {
	@Resource(name="sessionFactory")
	private static SessionFactory sessionFactory;
//	static {
//		Configuration configuration = new Configuration();
//		configuration.configure();
//		sessionFactory = configuration.buildSessionFactory();
//	}
	public static Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}
	public static void main(String[] args) {
		System.out.println("Success");
	}
	
}
