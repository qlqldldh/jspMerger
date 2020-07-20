package com.mylibrary.book.admin.service.badmin;

import java.util.List;

import com.mylibrary.book.admin.vo.BadminVO;

public interface BadminService {
	public List<BadminVO> showAll();	  //목록보기
	
	public BadminVO getBadmin(String email);
	
	public void insertBadmin1(BadminVO vo); //쓰기
	public void insertBadmin2(BadminVO vo);
	
	public int updateBadmin1(BadminVO vo);
	public int updateBadmin2(BadminVO vo);
	
	public int deleteBadmin1(String email);  //삭제
	public int deleteBadmin2(String email);  //삭제
}
