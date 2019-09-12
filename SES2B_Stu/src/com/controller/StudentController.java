package com.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.bean.Student;
import com.service.StudentService;

@Controller
@RequestMapping("/student")
@SessionAttributes(value = {"currentStudent"})
public class StudentController {

	@Resource(name="studentService")
	private StudentService studentService;
	
	@RequestMapping("/login")
    public String stuLogin(Integer username, String password,Model model){
        Student student = studentService.login(username,password);
        model.addAttribute("currentStudent",student);
        return "redirect:/test.jsp";
    }
}
