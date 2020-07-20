package com.mylibrary.book.admin.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mylibrary.book.admin.service.notice.NoticeService;
import com.mylibrary.book.admin.vo.NoticeVO;

@Controller
@RequestMapping("/admin")
public class NoticeController {

    @Autowired
    NoticeService noticeService;

    // ================================LIST=======================================
    @RequestMapping("/noticeMain")
    public ModelAndView showMain() {
	ModelAndView mav = new ModelAndView();
	mav.addObject("noticelist", noticeService.showList());
	mav.setViewName("admin/notice-main");
	return mav;
    }

    // ================================UPDATE=======================================

    @RequestMapping("/noticeUpdate")
    public ModelAndView noticeUpdate(@RequestParam String nid, Model model) {
	List<NoticeVO> listVO = noticeService.showList();

	ModelAndView mav = new ModelAndView();

	for (int i = 0; i < listVO.size(); i++) {
	    if (listVO.get(i).getNid().equals(nid)) {
		mav.addObject("nitem", listVO.get(i));
		break;
	    }
	}
	System.out.println("Controller: noticeUpdate");
	mav.setViewName("admin/notice-update");
	return mav;
    }

    @RequestMapping("/noticeUpdatedo")
    public String noticeUpdatedo(@RequestParam Map<String, String> map) {
	noticeService.updateNotice(map);
	System.out.println("updated successfully!");
	return "redirect:noticeMain";
    }

//================================INSERT=======================================

    @RequestMapping("/noticeInsert")
    public String noticeInsert() {
	return "admin/notice-insert";
    }

    @RequestMapping("/noticeInsertdo")
    public String noticeInsertdo(@ModelAttribute NoticeVO vo) {
	System.out.println("inserting...controller!");
	noticeService.insertNotice(vo);
	System.out.println("inserted successfully!");
	return "redirect:noticeMain";
    }

    // ================================DELETE=======================================

    @RequestMapping("/noticeDelete")
    public String noticeDelete(@RequestParam String nid) {
	noticeService.deleteNotice(nid);
	System.out.println("deleted successfully!");
	return "redirect:noticeMain";
    }

}
