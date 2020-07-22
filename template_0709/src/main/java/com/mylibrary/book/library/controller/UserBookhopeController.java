package com.mylibrary.book.library.controller;

import java.io.IOException;

import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.mylibrary.book.admin.vo.BookhopeVO;
import com.mylibrary.book.library.service.UserBookhopeService;

@Controller
@RequestMapping("/user")
//@SessionAttributes({ "email" })
public class UserBookhopeController {

    @Autowired
    UserBookhopeService userBookhopeService;

//================================INSERT=======================================

    @RequestMapping("/bookhopeInsert")
    public String bookhopeInsert(@ModelAttribute BookhopeVO vo, Model model, HttpServletRequest request,
	    HttpServletResponse response) throws IOException {

	HttpSession session = request.getSession();
	if (session.getAttribute("email") == null) {
	    System.out.println("Not logged in! Redirecting to log in form!");
	    return "redirect:login";
	} else {
	    System.out.println("Logged in! Redirecting to request book form!");
	    System.out.println("inserted successfully!");
	    return "library/hopebook";
	}
    }

    @RequestMapping("/bookhopeInsertdo")
    public String bookhopeInsertdo(@ModelAttribute BookhopeVO vo, Model model, HttpServletRequest request,
	    HttpServletResponse response) throws IOException {

	HttpSession session = request.getSession();
	vo.setUemail((String)session.getAttribute("email"));
	userBookhopeService.bookhopeInsert(vo);
	System.out.println("inserted successfully!");
	return "redirect:BbooklistMain";

    }

}
