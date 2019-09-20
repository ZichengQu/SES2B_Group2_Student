package com.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import com.bean.Student;
import com.bean.StudentProfile;
import com.bean.WorkShop;

import jdk.nashorn.internal.ir.Flags;

public class StudentDao extends HibernateDaoSupport{
	@Resource  
    public void setSessionFacotry(SessionFactory sessionFacotry) {  
        super.setSessionFactory(sessionFacotry);  
    }
	
	@Resource(name="studentProfile")
	private StudentProfile studentProfile;
	
	public Student login(Integer studentId, String password) {
		Student student = null;
		try {
			List<Student> students = (List<Student>)this.getHibernateTemplate().find("from Student s where s.studentId = ? and s.password = ?",studentId,password);
			if(students!=null&&students.size()>0) {
				student = students.get(0);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return student;
	}
	
	public boolean saveProfile(StudentProfile targetProfile) {
		try {
			this.getHibernateTemplate().setCheckWriteOperations(false);
			this.getHibernateTemplate().saveOrUpdate(targetProfile);
		}catch (Exception e) {
			System.out.println(e);
			return false;
		}
		return true;
	}
	public StudentProfile newProfile(Student student) {
		student.setStudentProfile(studentProfile);
		studentProfile.setStudent(student);
		this.getHibernateTemplate().saveOrUpdate(student);
		this.getHibernateTemplate().saveOrUpdate(studentProfile);
		return studentProfile;
	}

	public boolean delWorkShop(Student student,WorkShop workshop) {
		try {
			student.getWorkShops().remove(workshop);
			workshop.getStudents().remove(student);
			this.getHibernateTemplate().saveOrUpdate(student);
			this.getHibernateTemplate().saveOrUpdate(workshop);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
		
	}
}
