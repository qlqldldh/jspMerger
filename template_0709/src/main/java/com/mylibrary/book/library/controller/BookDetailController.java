package com.mylibrary.book.library.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mylibrary.book.library.service.BooklistDetailService;


@Controller
@RequestMapping("/user")
public class BookDetailController {
	
	@Autowired
	BooklistDetailService BooklistDetailservice;
	
	@RequestMapping("/bbookDetail")
	public ModelAndView bshowDetail(@RequestParam String bid) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("booklist", BooklistDetailservice.bshowDetail(bid));
		System.out.println(BooklistDetailservice.bshowDetail(bid));
		mav.setViewName("library/books-media-detail-v2");
		return mav;
	}
}