package com.service;

import javax.annotation.Resource;

import org.springframework.transaction.annotation.Transactional;

import com.bean.Student;
import com.bean.StudentProfile;
import com.dao.StudentDao;
import com.utils.CombineAttr;

@Transactional
public class StudentService {

	@Resource(name="studentDao")
	private StudentDao studentDao;
	
	public Student login(Integer studentId, String password) {
		Student student = studentDao.login(studentId,password);
		if(student!=null) {
			noProfile(student);
		}
		return student;
	}
	
	public boolean saveProfile(StudentProfile sourceProfile, StudentProfile targetProfile) {
		sourceProfile.setEduBgMark("["+sourceProfile.getEduBgMark()+"]");
		targetProfile = (StudentProfile) CombineAttr.combineSydwCore(sourceProfile, targetProfile);
		return studentDao.saveProfile(targetProfile);
	}
	
	private StudentProfile newProfile(Student student) {
		return studentDao.newProfile(student);
	}
	
	private void noProfile(Student student) {
		StudentProfile studentProfile = student.getStudentProfile();
		if(studentProfile==null) {
			studentProfile = this.newProfile(student);
			studentProfile.setEduBgMark("[-1,-1,-1]");
		}
	}
	
}
