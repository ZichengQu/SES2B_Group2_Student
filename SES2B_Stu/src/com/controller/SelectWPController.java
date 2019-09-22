package com.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.bean.WorkShop;
import com.service.SelectWPService;

@Controller
@RequestMapping("/workshop")
@SessionAttributes(value = {"workshop"})
public class SelectWPController {
	@Resource(name="selectWPService")
	private SelectWPService selectWPService;
	
	@RequestMapping("/select")
	public String selection(Model model) {
		List<WorkShop> workShops = selectWPService.find();
		model.addAttribute("workshop", workShops);
		return "redirect:/select_WP.jsp";
	}
	@RequestMapping("/click")
	public String specificWorkshop(String type, Model model) {
		List<WorkShop> workShops=selectWPService.findSpecific(type);
		model.addAttribute("specificWorkshop",workShops);
		return "redirect:/workshopList.jsp";
		
	}
}
