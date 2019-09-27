package com.service;

import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.hibernate.Hibernate;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.transaction.annotation.Transactional;

import com.bean.SkillSet;
import com.bean.Student;
import com.bean.WorkShop;
import com.dao.SelectWPDao;
//import com.sun.tools.sjavac.pubapi.PubApi;

@Transactional
public class SelectWPService {
	@Resource(name = "selectWPDao")
	private SelectWPDao selectWPDao;

	public List<SkillSet> find() {
		List<SkillSet> skillSets = selectWPDao.findSkillSet();
		Iterator<SkillSet> iterator = skillSets.iterator();
		while (iterator.hasNext()) {
			SkillSet skillSet = (SkillSet) iterator.next();
			if (skillSet.getWorkShops().size() == 0) {
				// skillSets.remove(skillSet);
				iterator.remove();
			}
		}

		return skillSets;
	}

	public SkillSet findssWShops(Integer id) {

		return selectWPDao.fSkillSet(id);
	}

	public List<WorkShop> findSpecific(String type) {

		return selectWPDao.findSpecificWorkShops(type);

	}

	public WorkShop finddetailWP(Integer id) {

		return selectWPDao.findDetail(id);
	}
	
	public boolean bookWorkShop(Student student, WorkShop workShop) {
		Set<WorkShop> workShops = student.getWorkShops();
		boolean flag = true;
		for(WorkShop ws:workShops) {
			if (workShop==null) {
				flag = false;
				break;
			}else if (workShop.getName().equalsIgnoreCase(ws.getName())) {
				flag = false;
				break;
			}
		}
		if(flag) {
			flag = selectWPDao.bookWorkShop(student, workShop);
		}
		return flag;
	}

}