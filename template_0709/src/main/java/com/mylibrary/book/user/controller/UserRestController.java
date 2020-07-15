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
import org.springframework.web.bind.annotation.RestController;

import com.mylibrary.book.user.dao.UserDAO;
import com.mylibrary.book.user.service.ShaEncoder;

@RestController //컨트롤러 빈
@RequestMapping("/user")
public class UserRestController {

	@Inject
	ShaEncoder shaEncoder; //암호화 빈
	
	@Inject
	UserDAO userDao; 
	
	//비밀번호 reset
	@RequestMapping("/passwordReset") //password reset
	public void passwordReset(HttpServletRequest request, @RequestParam String passwd, @RequestParam String passwdre) {
		HttpSession session = request.getSession();
		String hashPassword;
		if( (!passwd.equals(passwdre)) || (passwd.equals("") && passwdre.equals(""))) {
			System.out.println("패스워드를 잘 못 입력하셨습니다.");
		} else if(passwd.equals(passwdre)) {
			hashPassword = shaEncoder.saltEncoding(passwd, (String)session.getAttribute("email"));
			System.out.println("패스워드 잘 입력함."+hashPassword);
			Map<String,String> map=new HashMap<String, String>();
			map.put("email", (String)session.getAttribute("email"));
			map.put("passwd", hashPassword);
			// affected rows, 영향을 받은 행의 수가 리턴됨
			int result=userDao.updatePassword(map);
			System.out.println(result+"개 계정의 비밀번호가 변경되었습니다.");
		}
	}
	@RequestMapping("/emailPassword") //password email 전송
	public void emailPassword(HttpServletRequest request, @RequestParam String email) {
		
	}
	@RequestMapping("/udpateInform") //inform reset
	public void udpateInform(HttpServletRequest request, @RequestParam String name, 
			@RequestParam String birth, 
			@RequestParam String phone, 
			@RequestParam String address) {
		HttpSession session = request.getSession();
		if( (name.equals("") || birth.equals("") || phone.equals("") || address.equals(""))) {
			System.out.println("데이터를 잘 못 입력하셨습니다.");
		} else {
			System.out.println("데이터 잘 입력함");
			Map<String,String> map=new HashMap<String, String>();
			map.put("email", (String)session.getAttribute("email"));
			map.put("name", name);
			map.put("birth", birth);
			map.put("phone", phone);
			map.put("address", address);
			// affected rows, 영향을 받은 행의 수가 리턴됨
			int result=userDao.updateUser(map);
			System.out.println(result+"개 계정의 정보가 변경되었습니다.");
		}
	}
	
}












