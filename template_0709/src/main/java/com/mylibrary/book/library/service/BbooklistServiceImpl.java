package com.mylibrary.book.library.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mylibrary.book.library.mapper.BbooklistMapper;
import com.mylibrary.book.admin.vo.BooklistVO;

@Service
public class BbooklistServiceImpl implements BbooklistService {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<BooklistVO> bshowList() {
		BbooklistMapper booklistMapper = sqlSession.getMapper(BbooklistMapper.class);
		return booklistMapper.bshowList();
	}

	@Override
	public BooklistVO getBooklist(String bid) {
		BbooklistMapper booklistMapper = sqlSession.getMapper(BbooklistMapper.class);
		return booklistMapper.getBooklist(bid);
	}

}
