package com.mylibrary.book.user.controller;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.mylibrary.book.user.dao.UserDAO;
import com.mylibrary.book.user.service.ShaEncoder;

@RestController // 컨트롤러 빈
@RequestMapping("/user")
public class UserRestController {

	@Inject
	ShaEncoder shaEncoder; // 암호화 빈

	@Inject
	UserDAO userDao;

	@Autowired
	private JavaMailSender mailSender;

	// 비밀번호 reset
	@RequestMapping(value="/passwordReset", method = RequestMethod.POST, produces="text/plain;charset=UTF-8") // password reset
	public ResponseEntity<String> passwordReset(HttpServletRequest request, @RequestParam String passwd, @RequestParam String passwdre) {
		HttpSession session = request.getSession();
		String hashPassword = "";
		String status = "";
		
		if ((!passwd.equals(passwdre)) || (passwd.equals("") && passwdre.equals(""))) {
			System.out.println("패스워드를 잘 못 입력하셨습니다.");
			status = "비밀번호를 잘 못 입력하셨습니다.";
		} else if (passwd.equals(passwdre)) {
			hashPassword = shaEncoder.saltEncoding(passwd, (String) session.getAttribute("email"));
			System.out.println("패스워드 잘 입력함." + hashPassword);
			Map<String, String> map = new HashMap<String, String>();
			map.put("email", (String) session.getAttribute("email"));
			map.put("passwd", hashPassword);
			// affected rows, 영향을 받은 행의 수가 리턴됨
			int result = userDao.updatePassword(map);
			System.out.println(result + "개 계정의 비밀번호가 변경되었습니다.");
			status = "비밀번호가 변경되었습니다.";
		} else {
			status = "비밀번호 수정 오류";
		}
		System.out.println(status);
		return new ResponseEntity<String>(status, HttpStatus.OK);
	}

	@RequestMapping(value="/udpateInform", method = RequestMethod.POST, produces="text/plain;charset=UTF-8") // inform reset
	public ResponseEntity<String> udpateInform(HttpServletRequest request, @RequestParam String name, @RequestParam String birth,
			@RequestParam String phone, @RequestParam String address) {
		HttpSession session = request.getSession();
		String status = "";
		
		if ((name.equals("") || birth.equals("") || phone.equals("") || address.equals(""))) {
			System.out.println("데이터를 잘 못 입력하셨습니다.");
			status = "데이터를 잘 못 입력하셨습니다.";
		} else {
			System.out.println("데이터 잘 입력함");
			Map<String, String> map = new HashMap<String, String>();
			map.put("email", (String) session.getAttribute("email"));
			map.put("name", name);
			map.put("birth", birth);
			map.put("phone", phone);
			map.put("address", address);
			// affected rows, 영향을 받은 행의 수가 리턴됨
			int result = userDao.updateUser(map);
			System.out.println(result + "개 계정의 정보가 변경되었습니다.");
			status = "정보가 변경되었습니다.";
		}
		return new ResponseEntity<String>(status, HttpStatus.OK);
	}

	// mailSending 코드
	@SuppressWarnings("finally")
	@RequestMapping(value="/mailSending", method = RequestMethod.POST, produces="text/plain;charset=UTF-8")
	public ResponseEntity<String> mailSending(@RequestParam String email) {
		System.out.println(email);
		String setfrom = "3team200th@gmail.com";
		String tomail = email; // 받는 사람 이메일
		String title = "임시 비밀번호입니다."; // 제목
		String content = ""; // 내용
		String resetPassword = "";
		String hashPassword = "";
		String status = "";
		
		if(userDao.selectUser(email)!=null) {
			System.out.println("존재하는 이메일입니다.");
			for (int i = 0; i < 7; i++) {
				double dValue = Math.random();
				if(i%2==0)
					resetPassword += (char) ((dValue * 26) + 65); // 대문자
				else
					resetPassword += (int)(dValue * 10);
			}
			content = "임시비밀번호는 "+resetPassword+" 입니다.";
			hashPassword = shaEncoder.saltEncoding(resetPassword, email);
			System.out.println("패스워드 잘 입력함." + hashPassword);
			Map<String, String> map = new HashMap<String, String>();
			map.put("email", email);
			map.put("passwd", hashPassword);
			// affected rows, 영향을 받은 행의 수가 리턴됨
			int result = userDao.updatePassword(map);
			System.out.println(result+"개 아이디 비밀번호 초기화 했습니다.");
			try {
				MimeMessage message = mailSender.createMimeMessage();
				MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");

				messageHelper.setFrom(setfrom); // 보내는사람 생략하면 정상작동을 안함
				messageHelper.setTo(tomail); // 받는사람 이메일
				messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
				messageHelper.setText(content); // 메일 내용

				mailSender.send(message);
				status = result+"개 아이디 비밀번호 초기화 했습니다.";
			} catch (Exception e) {
				System.out.println(e);
				status = e.getMessage();
			} finally {
				return new ResponseEntity<String>(status, HttpStatus.OK);
			}
		} else {
			System.out.println("존재하지 않는 이메일입니다.");
			status = "존재하지 않는 이메일입니다.";
		}
		return new ResponseEntity<String>(status, HttpStatus.OK);
	}

}
