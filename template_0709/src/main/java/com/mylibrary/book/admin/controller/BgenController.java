package com.mylibrary.book.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mylibrary.book.admin.service.bgenerals.BgenService;
import com.mylibrary.book.admin.service.borrowed.BorrowedService;
import com.mylibrary.book.admin.service.reserved.ReservedService;
import com.mylibrary.book.admin.vo.BgenVO;

@Controller
@RequestMapping("/admin")
public class BgenController {
	@Autowired
	BgenService bgenService;
	
	@Autowired
	BorrowedService borrowedService;
	
	@Autowired
	ReservedService reservedService;
	
	@RequestMapping("/genMain")
	public String usersMain(Model model) {
		model.addAttribute("genlist",bgenService.showAll());
		return "admin/users-main";
	}
	
	@RequestMapping("/genDelete")
	@Transactional
	public String userDelete(@RequestParam String email, Model model) {
		borrowedService.borrowedDeleteByEmail(email);
		reservedService.deleteReservedByEmail(email);
		bgenService.deleteUserInfo(email);
		System.out.println("delete one user info");
		return "redirect:genMain";
	}
	
	@RequestMapping("/genUpdate")
	public ModelAndView usersUpdate(@RequestParam String email) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("bgen",bgenService.getBgen(email));
		
		mav.setViewName("admin/users-update");
		return mav;
	}
	
	@RequestMapping("/genDetail")
	public ModelAndView usersDetail(@RequestParam String email) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("bgen",bgenService.getBgen(email));
		
		mav.setViewName("admin/users-detail");
		return mav;
	}
	
	@RequestMapping("/genUpdatedo")
	public String usersUpdatedo(@ModelAttribute BgenVO bgenvo, Model model) {
		bgenService.modifyUserInfo(bgenvo);
		
		return "redirect:genMain";
	}
}
