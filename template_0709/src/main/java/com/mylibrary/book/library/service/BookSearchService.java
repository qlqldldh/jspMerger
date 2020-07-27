package com.mylibrary.book.library.service;

import java.util.List;

import com.mylibrary.book.library.vo.BookSearchVO;

public interface BookSearchService {
	public List<BookSearchVO>searchBook(String title);
	public List<BookSearchVO> showList();
//	public BookSearchVO getBooklist(String title);
}
