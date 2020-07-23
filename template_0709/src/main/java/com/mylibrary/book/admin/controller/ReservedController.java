package com.mylibrary.book.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mylibrary.book.admin.service.reserved.ReservedService;

@Controller
@RequestMapping("/admin")
public class ReservedController {
	@Autowired
	ReservedService reservedService;

	@RequestMapping("/reservedMain")
	public ModelAndView showMain() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("reservedlist", reservedService.showAll());
		mav.setViewName("admin/reserved-main");
		return mav;
	}
	
	@RequestMapping("reservedDeletedo")
	public String reservedDeletedo(@RequestParam String resid) {
		reservedService.deleteReserved(resid);
		return "redirect:reservedMain";
	}
}
