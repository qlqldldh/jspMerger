package com.mylibrary.book.library.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mylibrary.book.library.mapper.BookdetailMapper;
import com.mylibrary.book.admin.vo.BooklistVO;

@Service
public class BooklistDetailServiceImpl implements BooklistDetailService {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public BooklistVO bshowDetail(String bid) {
		BookdetailMapper BookdetailMapper = sqlSession.getMapper(BookdetailMapper.class);
		return BookdetailMapper.BshowDetail(bid);
	}
}
