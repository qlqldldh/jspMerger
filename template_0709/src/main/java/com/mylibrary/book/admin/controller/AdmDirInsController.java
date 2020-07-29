package com.mylibrary.book.admin.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mylibrary.book.admin.service.AdmDirInsert.AdmDirInsService;

@Controller
@RequestMapping("/admin")
public class AdmDirInsController {
	@Autowired
	AdmDirInsService adis;
	@RequestMapping("/AdmDirIns")
	public void AdmDirIns(@RequestParam String title, String author, String publisher,String isbn,HttpServletResponse resp) throws Exception{
		System.out.println("AdmDirInsController 왔음.");
		PrintWriter out = null;
		
		if(adis.AdmDirIns(title, author, publisher,isbn)==true) {
			out = resp.getWriter();
			resp.setContentType("text/html; charset=utf-8");
			out.println("<script language='javascript'>");
			out.println("alert('Insert Success.')");
			out.println("location.href='/book/admin/booklistMain';");
			out.print("</script>");
			out.flush();
		}else {
			out = resp.getWriter();
			resp.setContentType("text/html; charset=utf-8");
			out.println("<script language='javascript'>");
			out.println("alert('Insert Failed. Please insert right values')");
			out.println("location.href='/book/admin/booklistInsert';");
			out.print("</script>");
			out.flush();
		}
	}
}
