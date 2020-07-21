package com.mylibrary.book.library.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mylibrary.book.library.service.BbooklistService;

@Controller
@RequestMapping("/user")
public class BbooklistController {

	@Autowired
	BbooklistService Bbooklistservice;
	
	@RequestMapping("/BbooklistMain")
	public ModelAndView showMain() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("bbooklist", Bbooklistservice.bshowList());
		System.out.println(Bbooklistservice.bshowList());
		mav.setViewName("library/books-media-list-view");
		return mav;
	    }
}
