package com.mylibrary.book.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mylibrary.book.admin.service.index.IndexService;
import com.mylibrary.book.admin.vo.IndexVO;

@Controller
@RequestMapping("/admin")
public class IndexController {
	
	@Autowired
	private IndexService indexService;
	
	@RequestMapping("/index")
	public ModelAndView showMain() {
		ModelAndView mav = new ModelAndView();
		List<IndexVO> indexList = indexService.showAll();
		System.out.println(indexList);
		mav.addObject("indexList",indexList);
		mav.setViewName("admin/index");
		return mav;
	}
	
}
