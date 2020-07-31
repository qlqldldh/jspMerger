package com.mylibrary.book.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mylibrary.book.admin.service.income.IncomeService;
import com.mylibrary.book.admin.vo.IncomeVO;

@Controller
@RequestMapping("/admin")
public class IncomeController {
	
	@Autowired
	private IncomeService incomeService;
	
	@RequestMapping("/incomeMain")
	public ModelAndView showMain() {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("incomelist",incomeService.showAll());
		mav.setViewName("admin/income-main");
		return mav;
	}
	
	@RequestMapping("/incomeDelete")
	public String incomeDelete(@RequestParam int incomenum) {
		incomeService.incomeDelete(incomenum);
		return "redirect:incomeMain";
	}
	
	@RequestMapping("/incomeInsert")
	public String incomeInsert() {
		return "admin/income-insert";
	}
	
	@RequestMapping("/incomeInsertdo")
	public String insert(@ModelAttribute IncomeVO vo) {
		System.out.println(vo);
		incomeService.incomeInsert(vo);
		return "redirect:incomeMain";
	}
	
	@RequestMapping("/incomeUpdate")
	public String update(@RequestParam int incomenum, Model model) {
		model.addAttribute("icl",incomeService.getIncome(incomenum));
		return "admin/income-update";
	}
	
	@RequestMapping("/incomeUpdatedo")
	public String update(@ModelAttribute IncomeVO vo) {
		incomeService.incomeUpdate(vo);
		System.out.println("Access income update do method");
		return "redirect:incomeMain";
	}
}
