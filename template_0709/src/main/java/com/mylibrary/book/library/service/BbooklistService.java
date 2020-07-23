package com.mylibrary.book.library.service;

import java.util.List;

import com.mylibrary.book.admin.vo.BooklistVO;
import com.mylibrary.book.library.vo.PagingVO;

public interface BbooklistService {
	public List<BooklistVO> bshowList();
	public BooklistVO getBooklist(String bid);	// 특정레코드보기
	
	// 게시물 총 갯수
	public int countBoard();

	// 페이징 처리 게시글 조회
	public List<BooklistVO> selectBoard(PagingVO vo);
}
