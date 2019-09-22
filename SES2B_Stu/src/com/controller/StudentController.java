package com.controller;

import java.io.IOException;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.alibaba.fastjson.JSON;
import com.bean.Student;
import com.bean.StudentProfile;
import com.service.StudentService;

@Controller
@RequestMapping("/student")
@SessionAttributes(value = {"student","profile"})
public class StudentController {

	@Resource(name="studentService")
	private StudentService studentService;
	@Resource(name="studentProfile")
	private StudentProfile studentProfile;
	
	@RequestMapping("/login")
    public @ResponseBody String stuLogin(@RequestBody String body, Model model){
		Map map = JSON.parseObject(body);
        Student student = studentService.login((Integer)map.get("username"),(String)map.get("password"));
        if(student!=null) {
        	model.addAttribute("student",student);
        	StudentProfile studentProfile = student.getStudentProfile();
        	model.addAttribute("profile",studentProfile);
            //return JSON.parse("{result:'success'}");
            return "success";
        } else {
        	//return JSON.parse("{result:'fail'}");
        	return "fail";
		}
    }
	
	@RequestMapping("/save")
    public @ResponseBody String stuSave(@RequestBody StudentProfile sourceProfile,Model model,ModelMap modelMap){
		StudentProfile targetProfile = (StudentProfile) modelMap.get("profile");
		boolean flag = studentService.saveProfile(sourceProfile, targetProfile);
		if(flag) {
			return "success";
		} else {
			return "fail";
		}
    }
	
	@RequestMapping("/logoff")
	public String stuLogoff(SessionStatus status) {
		status.setComplete();
		return "redirect:/stu_login.jsp";
	}
}
