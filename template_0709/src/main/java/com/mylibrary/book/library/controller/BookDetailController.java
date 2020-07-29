package com.mylibrary.book.library.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.ModelAndView;

import com.mylibrary.book.admin.service.borrowed.BorrowedService;
import com.mylibrary.book.admin.service.reserved.ReservedService;
import com.mylibrary.book.admin.vo.BorrowedVO;
import com.mylibrary.book.admin.vo.ReservedVO;
import com.mylibrary.book.library.service.BooklistDetailService;

@Controller
@RequestMapping("/user")
public class BookDetailController {

	@Autowired
	BooklistDetailService BooklistDetailservice;

	@Autowired
	BorrowedService borrowedService;

	@Autowired
	ReservedService reservedService;
	
	
	// action to put in data table //
	void lendingWhenReturn(String bid) { // have to do 'returnDelete" first, then do this method
		int mn = 1000000000; ReservedVO rsv=null;
		List<ReservedVO> temp = reservedService.showAll();
		
		for(ReservedVO rv:temp) {
			if(rv.getResbid().equals(bid)) {
				if(Integer.parseInt(rv.getResid())<mn) {
					mn=Integer.parseInt(rv.getResid());
					rsv=rv;
				}
			}
		}
		
		if(rsv==null) return;
		
		Map<String,String> mp = new HashMap<String,String>();
		mp.put("renemail",rsv.getResemail());
		mp.put("renbid",rsv.getResbid());
		
		BooklistDetailservice.insertLending(mp); // put the reserver automatically when someone return the book
		mp.clear();	
		mp.put("resemail",rsv.getResemail());
		mp.put("resbid",rsv.getResbid());		
		BooklistDetailservice.reservedDelete(mp);
	}
	
	String checkExist(String bid, String email){
        for(BorrowedVO br: borrowedService.showAll()){
            if(br.getRenbid().equals(bid)){
                if(br.getRenemail().equals(email)){
                	if(br.getIsExpanded() == 0)		{
                		return "return";
                	}
                	else {
                		return "expanded";
                	}
                } else {
                	for(ReservedVO rv:reservedService.showAll()){
            			if(rv.getResbid().equals(bid)){
            				if(rv.getResemail().equals(email)) return "reserved cancel";
            				else return "reserved";
            			}
            		}
                }
                return "reserved";
            }
        }
        return "lending";
    }

	@RequestMapping("/bbookDetail")
	public ModelAndView bshowDetail(HttpServletRequest request, @RequestParam String bid) {
//		System.out.println(checkExist(bid, "email"));
		ModelAndView mav = new ModelAndView();
		mav.addObject("booklist", BooklistDetailservice.bshowDetail(bid));

		HttpSession session = request.getSession();
		System.out.println(session);
		if (session.getAttribute("email") == null) {
			mav.addObject("out", checkExist(bid, (String) session.getAttribute("email")));
			System.out.println(checkExist(bid, "email"));
		} else {
			mav.addObject("in", checkExist(bid, (String) session.getAttribute("email")));
		}
		
		mav.setViewName("library/books-media-detail-v2");
		return mav;
	}

	@RequestMapping("/lendinginsertdo")
	public String lendinginsertdo(@RequestParam String bid, @SessionAttribute String email) {

		Map<String, String> map = new HashMap<String, String>();
		map.put("renemail", email);
		map.put("renbid", bid);
		BooklistDetailservice.insertLending(map);
		BooklistDetailservice.updatebcount(bid);
		return "redirect:BbooklistMain";
	}

	@RequestMapping("/exdateupdatedo")
	public String exdateupdatedo(@RequestParam String bid, @SessionAttribute String email) {
		Map<String, String> map = new HashMap<String, String>();
		
		map.put("renemail", email);
		map.put("renbid", bid);
		BooklistDetailservice.exdateupdate(map);
		
		return "redirect:BbooklistMain";
	}
	
	@RequestMapping("/returndeletedo")
	public String returndeletedo(@RequestParam String bid, @SessionAttribute String email) {
		System.out.println("returndeletedo" + bid);
		Map<String, String> map = new HashMap<String, String>();
		map.put("renemail", email);
		map.put("renbid", bid);
		BooklistDetailservice.returnDelete(map);
		
		lendingWhenReturn(bid);
		
		return "redirect:BbooklistMain";
	}

	@RequestMapping("/reservedinsertdo")
	public String reservedinsertdo(@RequestParam String bid, @SessionAttribute String email) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("resemail", email);
		map.put("resbid", bid);
		BooklistDetailservice.reservedInsert(map);
		return "redirect:BbooklistMain";
	}

	@RequestMapping("/reserveddeletedo")
	public String reserveddelete(@RequestParam String bid, @SessionAttribute String email) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("resemail", email);
		map.put("resbid", bid);		
		BooklistDetailservice.reservedDelete(map);
		return "redirect:BbooklistMain";
	}
}
