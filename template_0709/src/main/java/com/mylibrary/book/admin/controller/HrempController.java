package com.mylibrary.book.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mylibrary.book.admin.service.hremp.HrempService;

@Controller
@RequestMapping("/admin")
public class HrempController {
	@Autowired
	HrempService hrempService;
	
	// page-panning methods //
	@RequestMapping("/hrMain")
	public ModelAndView showMain() {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("hrlist",hrempService.showAll());
		mav.setViewName("admin/hr-main");
		return mav;
	}
	
	@RequestMapping("/hrUpdate")
	public String hrUpdate(Model model) {
		return "admin/hr-update";
	}
	
	@RequestMapping("/hrInsert")
	public String hrInsert(Model model) {
		return "admin/hr-insert";
	}
	// ------------------------- //
	
	
}
