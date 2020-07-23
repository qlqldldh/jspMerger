package com.mylibrary.book.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mylibrary.book.admin.service.badmin.BadminService;
import com.mylibrary.book.admin.vo.BadminVO;

@Controller
@RequestMapping("/admin")
public class BadminController {

	@Autowired
	private BadminService badminService;
	
	@RequestMapping("/badminMain")
	public ModelAndView showMain() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("badminlist", badminService.showAll());
		mav.setViewName("admin/admin-main");
		return mav;
	
	}
	
	@RequestMapping("/badminDelete")
	public String badminDelete (@RequestParam String email) {
		
		badminService.deleteBadmin1(email);
		badminService.deleteBadmin2(email);
		return "redirect:badminMain";
		
	}
	@RequestMapping("/badminInsert")
	public String badminInsert() {
		return "admin/admin-insert";
	}
	
	@RequestMapping("/badminInsertdo")
	public String badminInsertdo(@ModelAttribute BadminVO vo) {
		badminService.insertBadmin1(vo);
		badminService.insertBadmin2(vo);
		return "redirect:badminMain";
	}
	
	@RequestMapping("/badminUpdate")
	public String badminUpdate(@RequestParam String email, Model model) {
		BadminVO vo = badminService.getBadmin(email);
		model.addAttribute("itm", vo);
		return "admin/admin-update";
	}
	
	@RequestMapping("/badminDetail")
	public String badminDetail(@RequestParam String email, Model model) {
		BadminVO vo = badminService.getBadmin(email);
		model.addAttribute("itm", vo);
		return "admin/admin-detail";
	}
	
	@RequestMapping("/badminUpdatedo")
	public String badminUpdatedo(@ModelAttribute BadminVO vo) { // 형님 여기서 이러시면 곤란합니다 .. @ModelAttribute or @RequestParam //
		badminService.updateBadmin1(vo);
		badminService.updateBadmin2(vo);
		return "redirect:badminMain";
	}
	
	
	
	
}
