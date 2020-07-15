package com.mylibrary.book.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mylibrary.book.admin.service.borrowed.BorrowedService;
import com.mylibrary.book.admin.vo.BorrowedVO;

@Controller
@RequestMapping("/admin")
public class BorrowedController {
	
	@Autowired
	private BorrowedService borrowedService;
	
	@RequestMapping("/borrowedMain")
	public ModelAndView showMain() {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("borrowedlist", borrowedService.showAll());
		mav.setViewName("admin/borrowed-main");
		return mav;
	}
	
	@RequestMapping("/borrowedDelete")
	public String borrwedDelete(@RequestParam String rentid) {
		borrowedService.borrowedDelete(rentid);
		return "redirect:borrowedMain";
		
	}

}
