package com.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import com.bean.WorkShop;

public class SelectWPDao extends HibernateDaoSupport{
 
	@Resource  
    public void setSessionFacotry(SessionFactory sessionFacotry) {  
        super.setSessionFactory(sessionFacotry);  
    }

	public List<WorkShop> findWorkShops() {
		List<WorkShop> WPList=(List<WorkShop>) this.getHibernateTemplate().find("from WorkShop");
	System.out.println(WPList);
		return WPList;
	}
	
	public List<WorkShop> findSpecificWorkShops(String type){
		DetachedCriteria criteria=DetachedCriteria.forClass(WorkShop.class);
		criteria.add(Restrictions.like("name", "%"+type+"%"));
		List<WorkShop> list = (List<WorkShop>) this.getHibernateTemplate().findByCriteria(criteria);
		return list;
	}
}
