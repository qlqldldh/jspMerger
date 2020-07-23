package com.mylibrary.book.library.service;



import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mylibrary.book.library.mapper.BookSearchMapper;
import com.mylibrary.book.library.vo.BookSearchVO;

@Service
public class BookSearchServiceImpl implements BookSearchService {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<BookSearchVO> searchBook(String title) {
	    BookSearchMapper bookSearchMapper = sqlSession.getMapper( BookSearchMapper.class);
		return bookSearchMapper.searchBook(title);
	}

	@Override
	public List<BookSearchVO> showList() {
	    BookSearchMapper bookSearchMapper = sqlSession.getMapper( BookSearchMapper.class);
		return bookSearchMapper.showList();
	}


	}

//	@Override
//	public BookSearchVO getBooklist(String title) {
//	    BookSearchMapper bookSearchMapper = sqlSession.getMapper( BookSearchMapper.class);
//		return bookSearchMapper.getBooklist(title);
//	}

	


