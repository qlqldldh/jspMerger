package com.mylibrary.book.library.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mylibrary.book.library.service.BookSearchService;
import com.mylibrary.book.library.vo.BookSearchVO;

@Controller
@RequestMapping("/user")
public class BookSearchController {

    @Autowired
    BookSearchService bookSearchService;

//    // ================================SEARCH LIST=======================================
//    @RequestMapping("/searchList")
//    public ModelAndView showMain() {
//	ModelAndView mav = new ModelAndView();
//	System.out.println("title search list");
//	
//	mav.addObject("usernoticelist", userNoticeService.showList());
//	mav.setViewName("library/news-events-list-view");
//	return mav;
//    }
    
    // ===================================SEARCH BOOK===================================
    @RequestMapping("/searchBook")
    public ModelAndView searchBook(@RequestParam String title, Model model) {
	List<BookSearchVO> listVO = bookSearchService.showList();

	ModelAndView mav = new ModelAndView();

	for (int i = 0; i < listVO.size(); i++) {
	    if (listVO.get(i).getTitle().equals(title)) {
		mav.addObject("booklist", listVO.get(i));
		break;
	    }
	}
	System.out.println("List of searched books completed!");
	mav.setViewName("library/news-events-detail");
	return mav;
    }
    
}
