package com.mylibrary.book.library.service;

import java.util.List;

import com.mylibrary.book.admin.vo.BooklistVO;

public interface BookSearchService {
	public List<BooklistVO>searchBook(String title);
	public List<BooklistVO> showList();
}
