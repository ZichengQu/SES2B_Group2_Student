package com.dao;

import java.util.List;

import javax.annotation.Resource;
import javax.mail.Flags.Flag;

import org.hibernate.SessionFactory;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import com.bean.SkillSet;
import com.bean.Student;
import com.bean.WorkShop;

public class SelectWPDao extends HibernateDaoSupport {

	@Resource
	public void setSessionFacotry(SessionFactory sessionFacotry) {
		super.setSessionFactory(sessionFacotry);
	}

	public List<SkillSet> findSkillSet() {
		List<SkillSet> WPList = (List<SkillSet>) this.getHibernateTemplate().find("from SkillSet");
		System.out.println(WPList);
		return WPList;
	}

	public SkillSet fSkillSet(Integer id) {
		SkillSet skillSet = null;

		try {
			List<SkillSet> WPList = (List<SkillSet>) this.getHibernateTemplate().find("from SkillSet where id=?", id);
			if (WPList != null && WPList.size() > 0) {
				skillSet = WPList.get(0);
			}

		} catch (Exception e) {
			e.printStackTrace();// TODO: handle exception
		}
		return skillSet;
	}

	// public List<WorkShop> findWorkShops() {
	// List<WorkShop> list = (List<WorkShop>) this.getHibernateTemplate().find("from
	// WorkShop");
	// return list;
	//
	// }

	public List<WorkShop> findSpecificWorkShops(String type) {
		DetachedCriteria criteria = DetachedCriteria.forClass(WorkShop.class);
		criteria.add(Restrictions.like("name", "%" + type + "%"));
		List<WorkShop> list = (List<WorkShop>) this.getHibernateTemplate().findByCriteria(criteria);
		return list;
	}

	public WorkShop findDetail(Integer id) {
		WorkShop workShop = null;

		try {
			List<WorkShop> WP = (List<WorkShop>) this.getHibernateTemplate().find("from WorkShop where id=?", id);
			if (WP != null && WP.size() > 0) {
				workShop = WP.get(0);
			}

		} catch (Exception e) {
			e.printStackTrace();// TODO: handle exception
		}
		return workShop;
	}
	
	public boolean bookWorkShop(Student student, WorkShop workShop) {
		boolean flag = true;
		try {
			student.getWorkShops().add(workShop);
			this.getHibernateTemplate().update(student);
			//this.getHibernateTemplate().saveOrUpdate(studentProfile);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			flag = false;
		}
		return flag;
	}

}