package com.mylibrary.book.library.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mylibrary.book.library.service.UserNoticeService;

@Controller
@RequestMapping("/user")
public class UserNoticeController {

	@Autowired
	UserNoticeService userNoticeService;

	// ================================LIST=======================================
	@RequestMapping("/userNoticeMain")
	public ModelAndView showMain() {
		ModelAndView mav = new ModelAndView();
		System.out.println("User notice list view!");
		mav.addObject("usernoticelist", userNoticeService.showList());
		mav.setViewName("library/news-events-list-view");
		return mav;
	}

	// ===================================DETAIL===================================
	@RequestMapping("/userNoticeDetail")
	public ModelAndView userNoticeDetail(@RequestParam String nid, Model model) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("itm",userNoticeService.getNoticeInfo(nid));
		System.out.println("Controller: userNotice Detail");
		mav.setViewName("library/news-events-detail");
		return mav;
	}

}
