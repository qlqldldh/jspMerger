package com.mylibrary.book.admin.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mylibrary.book.admin.service.booklist.BooklistService;
import com.mylibrary.book.admin.vo.BooklistVO;

@Controller
@RequestMapping("/admin")
public class BooklistController {

    @Autowired
    BooklistService booklistService;

    // ================================LIST=======================================
    @RequestMapping("/booklistMain")
    public ModelAndView showMain() {
	ModelAndView mav = new ModelAndView();
	System.out.println("About to show the list of books....");
	mav.addObject("booklist", booklistService.showList());
	mav.setViewName("admin/library-main");
	return mav;
    }

    // ================================UPDATE=======================================

    @RequestMapping("/booklistUpdate")
    public ModelAndView booklistUpdate(@RequestParam String bid, Model model) {
	List<BooklistVO> listVO = booklistService.showList();

	ModelAndView mav = new ModelAndView();

	for (int i = 0; i < listVO.size(); i++) {
	    if (listVO.get(i).getBid().equals(bid)) {
		mav.addObject("item", listVO.get(i));
		break;
	    }
	}
	System.out.println("Controller: booklistUpdate");
	mav.setViewName("admin/library-update");
	return mav;
    }

    @RequestMapping("/booklistUpdatedo")
    public String booklistUpdatedo(@RequestParam Map<String, String> map) {
	booklistService.updateBooklist(map);
	System.out.println("booklist updated successfully!");
	return "redirect:booklistMain";
    }

//================================INSERT=======================================

    @RequestMapping("/booklistInsert")
    public String booklistInsert() {
	return "admin/library-insert";
    }

    @RequestMapping("/booklistInsertdo")
    public String booklistInsertdo(@ModelAttribute BooklistVO vo) {
	System.out.println("booklist- inserting...controller!");
	booklistService.insertBooklist(vo);
	System.out.println("book inserted successfully!");
	return "redirect:booklistMain";
    }

    // ================================DELETE=======================================

    @RequestMapping("/booklistDelete")
    public String booklistDelete(@RequestParam String bid) {
	booklistService.deleteBooklist(bid);
	System.out.println("book deleted successfully!");
	return "redirect:booklistMain";
    }
    
    // ====================================Detail===================================
    @RequestMapping("/booklistDetail")
    public ModelAndView booklistDetail(@RequestParam String bid, Model model) {
	List<BooklistVO> listVO = booklistService.showList();

	ModelAndView mav = new ModelAndView();

	for (int i = 0; i < listVO.size(); i++) {
	    if (listVO.get(i).getBid().equals(bid)) {
		mav.addObject("item", listVO.get(i));
		break;
	    }
	}
	System.out.println("Controller: booklistDetail");
	mav.setViewName("admin/library-detail");
	return mav;
    }
    
}
