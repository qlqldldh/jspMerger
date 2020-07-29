package com.mylibrary.book.library.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mylibrary.book.library.service.BookSearchService;

@Controller
@RequestMapping("/user")
public class BookSearchController {

	@Autowired
	BookSearchService bookSearchService;

	// ===================================SEARCH
	// BOOK===================================
	@RequestMapping("/searchBook")
	public ModelAndView searchBook(@RequestParam String title, Model model) {

		ModelAndView mav = new ModelAndView();

		mav.addObject("bbooklist", bookSearchService.searchBook(title));
		System.out.println("List of searched books completed!");
		mav.setViewName("library/books-media-list-view");
		return mav;
	}
}
