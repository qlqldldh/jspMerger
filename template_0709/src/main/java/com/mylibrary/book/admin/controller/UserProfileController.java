package com.mylibrary.book.admin.controller;

import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mylibrary.book.user.dao.UserDAO;


// summary methods for panning pages
@Controller
@RequestMapping("/admin")
public class UserProfileController {
	
	@Inject
	UserDAO userDao;
	
	/* Page-Panning Controller */
	@RequestMapping("/userProf")
	public String userProf(HttpServletRequest request) {
		HttpSession session = request.getSession();
		Map<String, Object> user = userDao.selectUserNoAs((String) session.getAttribute("email"));
		System.out.println(user);
		request.setAttribute("user", user);
		return "admin/user-profile";
	}
}


