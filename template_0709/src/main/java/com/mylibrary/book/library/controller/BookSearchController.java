package com.mylibrary.book.library.controller;

import java.util.ArrayList;
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
//	mav.addObject("booksearchlist", bookSearchService.showList());
//	mav.setViewName("library/booksearch-media-list-view");
//	return mav;
//    }
    
    // ===================================SEARCH BOOK===================================
    @RequestMapping("/searchBook")
    public ModelAndView searchBook(@RequestParam String title, Model model) {
	
	List<BookSearchVO> listVO = bookSearchService.showList();
	ArrayList<BookSearchVO> ret = new ArrayList<BookSearchVO>();
	ModelAndView mav = new ModelAndView();

	for (int i = 0; i < listVO.size(); i++) {
	    if (listVO.get(i).getTitle().contains(title)) {
		ret.add(listVO.get(i));
	    }
	}
	mav.addObject("bbooklist", ret);
	System.out.println("List of searched books completed!");
	mav.setViewName("library/books-media-list-view");
	return mav;
    }
    
//    @RequestMapping("/searchBook")
//    public String searchBook(@RequestParam("title") String title, Model model) {
//	System.out.println("stopping by controller....");
//	System.out.println(bookSearchService.searchBook(title).get(0).getBcategory());
//	model.addAttribute("booksearchlist", bookSearchService.searchBook(title));
//	return "redirect:/library/booksearch-media-list-view";
//    }
    
}
