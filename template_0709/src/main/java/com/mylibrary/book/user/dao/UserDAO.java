package com.mylibrary.book.user.dao;

import java.util.Map;

public interface UserDAO {
	//회원가입 처리
	public int insertUser(Map<String,String> map);
	public int updatePassword(Map<String,String> map);
	public int updateUser(Map<String,String> map);
	//로그인 처리
	public Map<String,Object> selectUser(String email);
	public Map<String, Object> selectUserNoAs(String email);
	
}
