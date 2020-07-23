package com.mylibrary.book.user.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;

public class UserLoginFailureHandler 
	implements AuthenticationFailureHandler {
//로그인이 실패했을 때의 처리
	@Override
	public void onAuthenticationFailure(
			HttpServletRequest request, 
			HttpServletResponse response,
			AuthenticationException exception) 
					throws IOException, ServletException {
		System.out.println("fail");
		//request 영역에 변수 저장
		request.setAttribute("errMsg",
				"The Email and/or Password inserted is not correct.");
		//forward
		request.getRequestDispatcher(
				"/WEB-INF/views/library/signin.jsp")
					.forward(request, response);
	}
}



