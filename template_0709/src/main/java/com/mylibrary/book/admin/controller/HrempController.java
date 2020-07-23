package com.mylibrary.book.admin.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mylibrary.book.admin.service.hremp.HrempService;
import com.mylibrary.book.admin.vo.HrempVO;

@Controller
@RequestMapping("/admin")
public class HrempController {
	@Autowired
	HrempService hrempService;
	
	// page-panning methods //
	@RequestMapping("/hrMain")
	public ModelAndView showMain() {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("hrlist",hrempService.showAll());
		mav.setViewName("admin/hr-main");
		return mav;
	}
	
	@RequestMapping("/hrUpdate")
	public ModelAndView hrUpdate(@RequestParam String tel, Model model) {
		List<HrempVO> lhv = hrempService.showAll();
		
		ModelAndView mav = new ModelAndView();
		for(int i=0;i<lhv.size();i++) {
			if(lhv.get(i).getTel().equals(tel)) {
				mav.addObject("hrItem",lhv.get(i));
				break;
			}
		}
		
		mav.setViewName("admin/hr-update");
		return mav;
	}
	
	@RequestMapping("/hrInsert")
	public String hrInsert(Model model) {
		return "admin/hr-insert";
	}
	// ------------------------- //
	
	@RequestMapping("/hrInsertdo")
	public String hrInsertdo(@ModelAttribute HrempVO hv) {
		hrempService.insertHR(hv);
		System.out.println("insert HR data successfully");
		return "redirect:hrMain";
	}
	
	@RequestMapping("/hrDelete")
	public String hrDelete(@RequestParam String tel) {
		hrempService.deleteHR(tel);
		System.out.println("delete HR data successfully");
		return "redirect:hrMain";
	}
	
	@RequestMapping("/hrUpdatedo")
	public String hrUpdatedo(@RequestParam HashMap<String,String> hmp) {
		hrempService.updateHR(hmp);
		System.out.println("update HR data successfully");
		return "redirect:hrMain"; 
	}
}
