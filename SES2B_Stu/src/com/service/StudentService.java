package com.service;

import javax.annotation.Resource;

import com.bean.Student;
import com.dao.StudentDao;

public class StudentService {

	@Resource(name="studentDao")
	private StudentDao studentDao;
	
	public Student login(Integer studentId, String password) {
		Student student = studentDao.login(studentId,password);
		return student;
	}
}
