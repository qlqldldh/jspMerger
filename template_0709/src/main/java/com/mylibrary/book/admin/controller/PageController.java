package com.mylibrary.book.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


// summary methods for panning pages
@Controller
@RequestMapping("/admin")
public class PageController {

	/* Page-Panning Controller */
	
	@RequestMapping("/index")
	public String index(Model model) {
		return "admin/index";
	}
	
	@RequestMapping("/adminInsert")
	public String adminInsert(Model model) {
		return "admin/admin-insert";
	}
	
	@RequestMapping("/adminMain")
	public String adminMain(Model model) {
		return "admin/admin-main";
	}
	
	@RequestMapping("/adminUpdate")
	public String adminUpdate(Model model) {
		return "admin/admin-update";
	}
	
	@RequestMapping("/balance")
	public String balance(Model model) {
		return "admin/balance";
	}
	
//	@RequestMapping("/bookhope")
//	public String bookhope(Model model) {
//		return "admin/bookhope";
//	}
	
	@RequestMapping("/circulInsert") // borrowed & reserved
	public String circulInsert(Model model) {
		return "admin/circulation-insert";
	}
	
	@RequestMapping("/circulUpdate")
	public String circulUpdate(Model model) {
		return "admin/circulation-update";
	}
	
	@RequestMapping("/circulMain")
	public String circulMain(Model model) {
		return "admin/circulation-main";
	}
	
//	@RequestMapping("/hrInsert")
//	public String hrInsert(Model model) {
//		return "admin/hr-insert";
//	}
//	
//	@RequestMapping("/hrMain")
//	public String hrMain(Model model) {
//		return "admin/hr-main";
//	}
//	
//	@RequestMapping("/hrUpdate")
//	public String hrUpdate(Model model) {
//		return "admin/hr-update";
//	}
	
//	@RequestMapping("/incomeInsert")
//	public String incomeInsert(Model model) {
//		return "admin/income-insert";
//	}
//	
//	@RequestMapping("/incomeMain")
//	public String incomeMain(Model model) {
//		return "admin/income-main";
//	}
//	
//	@RequestMapping("/incomeUpdate")
//	public String incomeUpdate(Model model) {
//		return "admin/income-update";
//	}
	
//	@RequestMapping("/libraryInsert")
//	public String libraryInsert(Model model) {
//		return "admin/library-insert";
//	}
//	
//	@RequestMapping("/libraryMain")
//	public String libraryMain(Model model) {
//		return "admin/library-main";
//	}
//	
//	@RequestMapping("/libraryUpdate")
//	public String libraryUpdate(Model model) {
//		return "admin/library-update";
//	}
	
//	@RequestMapping("/ordersInsert")
//	public String ordersInsert(Model model) {
//		return "admin/orders-insert";
//	}
//	
//	@RequestMapping("/ordersMain")
//	public String ordersMain(Model model) {
//		return "admin/orders-main";
//	}
//	
//	@RequestMapping("/ordersUpdate")
//	public String ordersUpdate(Model model) {
//		return "admin/orders-update";
//	}
	
	@RequestMapping("/userProf")
	public String userProf(Model model) {
		return "admin/user-profile";
	}
	
	@RequestMapping("/usersInsert")
	public String usersInsert(Model model) {
		return "admin/users-insert";
	}
	
	@RequestMapping("/usersMain")
	public String usersMain(Model model) {
		return "admin/users-main";
	}
	
	@RequestMapping("/usersUpdate")
	public String usersUpdate(Model model) {
		return "admin/users-update";
	}
	
//	@RequestMapping("/borrowedInsert")
//	public String borrowedInsert(Model model) {
//		return "admin/borrowed-insert";
//	}
//	
//	@RequestMapping("/borrowedMain")
//	public String borrowedMain(Model model) {
//		return "admin/borrowed-main";
//	}
//	
//	@RequestMapping("/borrowedUpdate")
//	public String borrowedUpdate(Model model) {
//		return "admin/borrowed-update";
//	}
	
	@RequestMapping("/reservedInsert")
	public String reservedInsert(Model model) {
		return "admin/reserved-insert";
	}
	
	@RequestMapping("/reservedMain")
	public String reservedMain(Model model) {
		return "admin/reserved-main";
	}
	
	@RequestMapping("/reservedUpdate")
	public String reservedUpdate(Model model) {
		return "admin/reserved-update";
	}
}


