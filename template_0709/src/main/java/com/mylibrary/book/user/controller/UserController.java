package com.mylibrary.book.user.controller;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mylibrary.book.user.dao.UserDAO;
import com.mylibrary.book.user.service.ShaEncoder;

@Controller //컨트롤러 빈
@RequestMapping("/user")
public class UserController {

	@Inject
	ShaEncoder shaEncoder; //암호화 빈
	
	@Inject
	UserDAO userDao; 
	
	@RequestMapping("/index") //시작 페이지
	public String home(Model model) {
		return "library/index"; //home.jsp로 이동
	}
	//로그인 페이지로 이동
	@RequestMapping("/login")
	public String login() {
		return "library/signin";
	}
	//회원가입 페이지로 이동
	@RequestMapping("/join")
	public String join() {
		return "library/signup";
	}
	//회원가입 페이지로 이동
	@RequestMapping("/email")
	public String email() {
		return "library/EMAIL-pwdrequest";
	}
	@RequestMapping("/mypage")
	public String mypage(HttpServletRequest request) {
		HttpSession session = request.getSession();
		Map<String,Object> user=userDao.selectUserNoAs((String)session.getAttribute("email"));
		System.out.println(user);
		request.setAttribute("user", user);
		return "library/mypage";
	}
	//회원가입 처리 	
	@RequestMapping("/insertUser")
	public String insertUser(@RequestParam String email, 
			@RequestParam String passwd,
			@RequestParam String passwdre,
			@RequestParam String name, 
			@RequestParam String birth, 
			@RequestParam String phone, 
			@RequestParam String address, 
			@RequestParam String authority) {
		//비밀번호 암호화
		if(!(passwd.equals(passwdre)) || (userDao.selectUser(email)!=null)) {
			System.out.println("password가 다르거나 이미 존재하는 이메일입니다.");
			 return "redirect:join";
		}
		String dbpw=shaEncoder.saltEncoding(passwd, email);
		Map<String,String> map=new HashMap<String, String>();
		map.put("email", email);
		map.put("passwd", dbpw);
		map.put("name", name);
		map.put("birth", birth);
		map.put("phone", phone);
		map.put("address", address);
		map.put("authority", authority);
		// affected rows, 영향을 받은 행의 수가 리턴됨
		int result=userDao.insertUser(map);
		return "library/signin"; // login.jsp로 이동
	}
}












