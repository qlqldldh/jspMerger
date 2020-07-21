package com.mylibrary.book.library.service;

import java.util.List;

import com.mylibrary.book.admin.vo.BooklistVO;

public interface BbooklistService {
	public List<BooklistVO> bshowList();
	public BooklistVO getBooklist(String bid);	// 특정레코드보기
}
