package com.service;

import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Hibernate;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.transaction.annotation.Transactional;

import com.bean.SkillSet;
import com.bean.WorkShop;
import com.dao.SelectWPDao;

@Transactional
public class SelectWPService {
	@Resource(name="selectWPDao")
	private SelectWPDao selectWPDao;
	
	public List<SkillSet> find() {
		List<SkillSet> skillSets = selectWPDao.findSkillSet();
		Iterator<SkillSet> iterator = skillSets.iterator();
		while (iterator.hasNext()) {
			SkillSet skillSet = (SkillSet) iterator.next();
			if(skillSet.getWorkShops().size()==0) {
				//skillSets.remove(skillSet);
				iterator.remove();
			}
		}
		return skillSets;
	}
	public List<WorkShop> findSpecific(String type) {
		
		return selectWPDao.findSpecificWorkShops(type);
		
	}

}
