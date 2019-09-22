package com.service;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Hibernate;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.transaction.annotation.Transactional;

import com.bean.WorkShop;
import com.dao.SelectWPDao;

@Transactional
public class SelectWPService {
	@Resource(name="selectWPDao")
	private SelectWPDao selectWPDao;
	
	public List<WorkShop> find() {
		
		
		return selectWPDao.findWorkShops();
	}
	public List<WorkShop> findSpecific(String type) {
		
		return selectWPDao.findSpecificWorkShops(type);
		
	}

}
