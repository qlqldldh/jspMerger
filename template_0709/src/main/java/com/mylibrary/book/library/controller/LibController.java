package com.mylibrary.book.library.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/library")
public class LibController {
	@RequestMapping("/index")
	public String index(Model model) {
		return "library/index";
	}
}
