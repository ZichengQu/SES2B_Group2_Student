package com.controller;

import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.bean.SkillSet;
import com.bean.WorkShop;
import com.service.SelectWPService;

@Controller
@RequestMapping("/workshop")
@SessionAttributes(value = {"skillSets", "specificWorkshop","ssWorkshop"})
public class SelectWPController {
	@Resource(name="selectWPService")
	private SelectWPService selectWPService;
	
	@RequestMapping("/select")
	public String selection(Model model) {
		List<SkillSet> skillSets = selectWPService.find();
		model.addAttribute("skillSets", skillSets);
		return "redirect:/select_WP.jsp";
	}
	
	@RequestMapping("/selectss")
	public String ssWorkshop(Model model, Integer skillsetId) {
		SkillSet skillSets=selectWPService.findssWShops(skillsetId);
		Set<WorkShop> ssWorkShops = ((SkillSet) skillSets).getWorkShops();
		model.addAttribute("ssWorkshop",ssWorkShops);
		//model.addAttribute("specificWorkshop",null);
		return "redirect:/workshopList.jsp";	
	}
	
	
	@RequestMapping("/click")
	public String specificWorkshop(String type, Model model) {
		List<WorkShop> workShops=selectWPService.findSpecific(type);
		model.addAttribute("ssWorkshop",workShops);
		//model.addAttribute("ssWorkshop",null);
		return "redirect:/workshopList.jsp";	
	}
}
