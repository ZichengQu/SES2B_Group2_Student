package com.controller;

import java.io.File;
import java.util.Date;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;

import com.alibaba.fastjson.JSON;
import com.bean.Session;
import com.bean.Student;
import com.bean.StudentProfile;
import com.bean.WorkShop;
import com.service.StudentService;
import com.utils.MailUtils;
import com.utils.SESEmail;

@Controller
@RequestMapping("/student")

@SessionAttributes(value = {"student","profile","sessions","workShops","upcoming","past","filename"})

public class StudentController {

	@Resource(name = "studentService")
	private StudentService studentService;
	@Resource(name = "studentProfile")
	private StudentProfile studentProfile;

	private Set<WorkShop> upcoming = null;
	private Set<WorkShop> past = null;

	@RequestMapping("/login")
	public @ResponseBody String stuLogin(@RequestBody String body, Model model) {
		Map map = JSON.parseObject(body);

        Student student = studentService.login((Integer)map.get("username"),(String)map.get("password"));
        if(student!=null) {
        	model.addAttribute("student",student);
        	StudentProfile studentProfile = student.getStudentProfile();
        	model.addAttribute("profile",studentProfile);
        	String filename = student.getStudentId()+".png";
            model.addAttribute("filename", filename);
            //return JSON.parse("{result:'success'}");
            return "success";
        } else {
        	//return JSON.parse("{result:'fail'}");
        	return "fail";

		}
	}

	@RequestMapping("/save")
	public @ResponseBody String stuSave(@RequestBody StudentProfile sourceProfile, Model model, ModelMap modelMap) {
		StudentProfile targetProfile = (StudentProfile) modelMap.get("profile");
		boolean flag = studentService.saveProfile(sourceProfile, targetProfile);
		if (flag) {
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

	@RequestMapping("/querySW")
	public String querySW(Model model, ModelMap modelMap) {
		Student student = (Student) modelMap.get("student");
		Set<Session> sessions = student.getSessions();
		Set<WorkShop> workShops = student.getWorkShops();
		upcomingPast(workShops);
		model.addAttribute("sessions", sessions);
		model.addAttribute("upcoming", upcoming);
		model.addAttribute("past", past);
		return "redirect:/Bookings.jsp";
	}

	@RequestMapping("/delWorkShop")
	public @ResponseBody String delWorkShop(Integer workshop_id, Model model, ModelMap modelMap) {
		Student student = (Student) modelMap.get("student");
		WorkShop workShop = null;
		if (upcoming != null && upcoming.size() > 0) {
			for (WorkShop w : upcoming) {
				if (workshop_id.equals(w.getWorkShopId())) {
					workShop = w;
					upcoming.remove(w);
					break;
				}
			}
		}
		boolean flag = studentService.delWorkShop(student, workShop);
		if (flag) {
			model.addAttribute("upcoming", upcoming);
			try {
				String toEmail = student.getStudentId() + "@student.uts.edu.au";
				//MailUtils.sendMail(toEmail, "Cancel Successfully!");
				SESEmail.sendMail("SES2B UTSHelps", "Cancel Successfully!", toEmail);
			} catch (Exception e) {
				e.printStackTrace();
			}
			return "success";
		} else {
			return "fail";
		}
    }
	
	@RequestMapping("/imgUpload")
	public String imgUpload(HttpServletRequest request,MultipartFile upload,Model model, ModelMap modelMap) throws Exception{
		Student student = (Student)modelMap.get("student");
		String path = request.getSession().getServletContext().getRealPath("/upload/");
		//String path=request.getRealPath("/upload");
		System.out.println("Path: "+path);
		File file = new File(path);
        if(!file.exists()){//�жϣ���·���Ƿ����
            file.mkdirs();//�������ڣ��򴴽����ļ���
        }
        String filename = student.getStudentId()+".png";
        model.addAttribute("filename", filename);
        upload.transferTo(new File(path,filename));//����ļ��ϴ�
        return "redirect:/MyInfo.jsp";
		
	}
	

	private void upcomingPast(Set<WorkShop> workShops) {
		upcoming = new HashSet<WorkShop>();
		past = new HashSet<WorkShop>();
		for (WorkShop workShop : workShops) {
			if (workShop.getEndDate().getTime() < (new Date()).getTime()) {
				past.add(workShop);
			} else {
				upcoming.add(workShop);
			}
		}
	}
}
