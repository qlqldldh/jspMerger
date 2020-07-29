package com.mylibrary.book.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mylibrary.book.admin.service.orders.OrdersService;
import com.mylibrary.book.admin.vo.OrdersVO;

@Controller
@RequestMapping("/admin")
public class OrdersController {
	@Autowired
	OrdersService ordersService;
	
	@RequestMapping("/ordersMain")
	public ModelAndView showMain() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("orderslist", ordersService.showAll());
		mav.setViewName("admin/orders-main");
		System.out.println("orderscontroller success");
		return mav;
		
	}
	
	@RequestMapping("/ordersInsert")
	public String ordersInsert() {
		return "admin/orders-insert";
	}
	
	@RequestMapping("/ordersInsertdo")
	public String ordersInsertdo(@ModelAttribute OrdersVO vo) {
		ordersService.insertOrders(vo);
		return "redirect:ordersMain";
		
	}
	
	@RequestMapping("/ordersUpdate")
	public String ordersUpdate(@RequestParam int ordernum, Model model) {
		model.addAttribute("itm", ordersService.getOrders(ordernum));	
		return "admin/orders-update";
	}
	
	@RequestMapping("/ordersUpdatedo")
	public String ordersUpdatedo(OrdersVO vo) {
		ordersService.updateOrders(vo);
		return "redirect:ordersMain";
	}

	@RequestMapping("/ordersDeletedo")
	public String ordersDeletedo(OrdersVO vo) {
		ordersService.deleteOrders(vo);
		return "redirect:ordersMain";
	}
	
	@RequestMapping("/ordersDetail")
	public String ordersDetail(@RequestParam int ordernum, Model model) {
		model.addAttribute("itm", ordersService.getOrders(ordernum));	
		return "admin/orders-detail";
	}

}
