package com.mylibrary.book.user.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import com.mylibrary.book.user.vo.UserDTO;

public class UserLoginSuccessHandler 
	implements AuthenticationSuccessHandler {
	
//로그인 처리가 성공했을 때의 코드
	@Override
	public void onAuthenticationSuccess(
			HttpServletRequest request, 
			HttpServletResponse response,
			Authentication auth) 
					throws IOException, ServletException {
		System.out.println("success");
		HttpSession session = request.getSession(true);// true : 세션이 없을경우 생성, false : 세션이 없을경우 생성안함
		session.setMaxInactiveInterval(60); //1분간 유지 (default : 30분)
		if(session !=null) session.setAttribute("email", auth.getName()); // key : name, value : 홍길동
		response.sendRedirect("index");
		
	}

}









