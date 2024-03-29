package com.controller;

import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.bean.SkillSet;
import com.bean.Student;
import com.bean.WorkShop;
import com.service.SelectWPService;
import com.service.StudentService;
import com.utils.MailUtils;
import com.utils.SESEmail;

@Controller
@RequestMapping("/workshop")
@SessionAttributes(value = { "skillSets", "specificWorkshop", "ssWorkshop", "detailWorkshop", "student" })
public class SelectWPController {
	@Resource(name = "selectWPService")
	private SelectWPService selectWPService;
	
	@Resource(name = "studentService")
	private StudentService studentService;

	@RequestMapping("/select")
	public String selection(Model model) {
		List<SkillSet> skillSets = selectWPService.find();
		model.addAttribute("skillSets", skillSets);
		return "redirect:/select_WP.jsp";
	}

	@RequestMapping("/selectss")
	public String ssWorkshop(Model model, Integer skillsetId) {
		SkillSet skillSets = selectWPService.findssWShops(skillsetId);
		Set<WorkShop> ssWorkShops = ((SkillSet) skillSets).getWorkShops();
		model.addAttribute("ssWorkshop", ssWorkShops);
		// model.addAttribute("specificWorkshop",null);
		return "redirect:/workshopList.jsp";
	}

	@RequestMapping("/click")
	public String specificWorkshop(String type, Model model) {
		List<WorkShop> workShops = selectWPService.findSpecific(type);
		model.addAttribute("ssWorkshop", workShops);
		// model.addAttribute("ssWorkshop",null);
		return "redirect:/workshopList.jsp";
	}

	@RequestMapping("/detailWorkshop")
	public @ResponseBody String detailWorkshop(Integer workshop_id, Model model) {
		System.out.println("Test: id="+workshop_id);
		WorkShop detailWorkshop = selectWPService.finddetailWP(workshop_id);
		System.out.println("Test: Workshop="+detailWorkshop);
		if (detailWorkshop != null) {
			model.addAttribute("detailWorkshop", detailWorkshop);
			return "success";
		} else {
			return "fail";
		}

	}
	
	@RequestMapping("/book")
	public @ResponseBody String book(String workshopName,  ModelMap modelMap) {
			Student student = (Student) modelMap.get("student");
			WorkShop workShop = (WorkShop) modelMap.get("detailWorkshop");
			boolean flag = selectWPService.bookWorkShop(student, workShop);
			System.out.println(flag);
			if(flag) {
				try {
					String toEmail = student.getStudentId()+"@student.uts.edu.au";
					//MailUtils.sendMail(toEmail, "Book Successfully!");
					SESEmail.sendMail("SES2B UTSHelps", "Book Successfully!", toEmail);
				} catch (Exception e) {
					e.printStackTrace();
				}
				return "success";
			}else {
				return "false";
			}
		
		}

}

