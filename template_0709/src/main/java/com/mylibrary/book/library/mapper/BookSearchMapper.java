package com.mylibrary.book.library.mapper;

import java.util.List;

import com.mylibrary.book.library.vo.BookSearchVO;

public interface BookSearchMapper {
	public List<BookSearchVO> showList();
	public BookSearchVO getBooklist(String title);
}
