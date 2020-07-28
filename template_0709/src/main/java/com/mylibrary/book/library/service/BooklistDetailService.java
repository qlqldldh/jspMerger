package com.mylibrary.book.library.service;

import java.util.Map;

import com.mylibrary.book.admin.vo.BooklistVO;

public interface BooklistDetailService {
	public BooklistVO bshowDetail(String bid);

	public void insertLending(Map<String,String> map);		// 쓰기
	public void returnDelete(Map<String,String> map);		// 반납
	public void reservedInsert(Map<String,String> map);		// 예약
	public void reservedDelete(Map<String,String> map);		// 예약 취소
	public void updatebcount(String bid);					// 대여 횟수 증가
	public void exdateupdate(Map<String,String> map);		// 연장
}
