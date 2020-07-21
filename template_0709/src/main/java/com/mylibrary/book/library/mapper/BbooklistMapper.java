package com.mylibrary.book.library.mapper;

import java.util.List;

import com.mylibrary.book.admin.vo.BooklistVO;

public interface BbooklistMapper {
	public List<BooklistVO> bshowList();
	public BooklistVO getBooklist(String bid);	// 특정레코드보기
}
