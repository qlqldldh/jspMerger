package com.mylibrary.book.admin.controller;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mylibrary.book.admin.service.badmin.BadminService;
import com.mylibrary.book.admin.vo.BadminVO;
import com.mylibrary.book.user.dao.UserDAO;
import com.mylibrary.book.user.service.ShaEncoder;

@Controller
@RequestMapping("/admin")
public class BadminController {

	@Inject
	ShaEncoder shaEncoder; // 암호화 빈
	
	@Inject
	UserDAO userDao;
	
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
//		badminService.insertBadmin1(vo);
		if (userDao.selectUser(vo.getEmail()) != null) {
//			System.out.println("password가 다르거나 이미 존재하는 이메일입니다.");
			System.out.println("This email is already register");
		
			return "redirect:badminInsert";
		}
		String dbpw = shaEncoder.saltEncoding(vo.getPasswd(), vo.getEmail());
		Map<String, String> map = new HashMap<String, String>();
		map.put("email", vo.getEmail());
		map.put("passwd", dbpw);
		map.put("name", vo.getName());
		map.put("birth", vo.getBirth());
		map.put("phone", vo.getPhone());
		map.put("address", vo.getAddress());
		map.put("authority", "ROLE_ADMIN");
		// affected rows, 영향을 받은 행의 수가 리턴됨
		int result = userDao.insertUser(map);
		
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
