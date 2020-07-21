package com.mylibrary.book.library.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mylibrary.book.admin.vo.BookhopeVO;
import com.mylibrary.book.library.service.UserBookhopeService;

@Controller
@RequestMapping("/user")
public class UserBookhopeController {

    @Autowired
    UserBookhopeService userBookhopeService;


//================================INSERT=======================================

//    @RequestMapping("/bookhopeInsert")
//    public String bookhopeInsert() {
//	return "library/bookhope";
//    }

    @RequestMapping("/bookhopeInsert")
    public String bookhopeInsert(@ModelAttribute BookhopeVO vo) {
	System.out.println("inserting...controller!");
	userBookhopeService.bookhopeInsert(vo);
	System.out.println("inserted successfully!");
	return "redirect:BbooklistMain";
    }

  

}
