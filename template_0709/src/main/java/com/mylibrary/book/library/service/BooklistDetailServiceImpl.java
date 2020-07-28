package com.mylibrary.book.library.service;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mylibrary.book.admin.vo.BooklistVO;
import com.mylibrary.book.library.mapper.BbooklistMapper;
import com.mylibrary.book.library.mapper.BookdetailMapper;

@Service
public class BooklistDetailServiceImpl implements BooklistDetailService {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public BooklistVO bshowDetail(String bid) {
		BookdetailMapper BookdetailMapper = sqlSession.getMapper(BookdetailMapper.class);
		return BookdetailMapper.BshowDetail(bid);
	}

	@Override
	public void insertLending(Map<String, String> map) {
		BookdetailMapper BookdetailMapper = sqlSession.getMapper(BookdetailMapper.class);
		BookdetailMapper.insertLending(map);
	}

	@Override
	public void reservedInsert(Map<String, String> map) {
		BookdetailMapper BookdetailMapper = sqlSession.getMapper(BookdetailMapper.class);
		BookdetailMapper.reservedInsert(map);
	}

	@Override
	public void returnDelete(Map<String, String> map) {
		BookdetailMapper BookdetailMapper = sqlSession.getMapper(BookdetailMapper.class);
		BookdetailMapper.returnDelete(map);
	}

	@Override
	public void reservedDelete(Map<String, String> map) {
		BookdetailMapper BookdetailMapper = sqlSession.getMapper(BookdetailMapper.class);
		BookdetailMapper.reservedDelete(map);
	}

	@Override
	public void updatebcount(String bid) {
		BookdetailMapper BookdetailMapper = sqlSession.getMapper(BookdetailMapper.class);
		BookdetailMapper.updatebcount(bid);
	}

	@Override
	public void exdateupdate(Map<String, String> map) {
		BookdetailMapper BookdetailMapper = sqlSession.getMapper(BookdetailMapper.class);
		BookdetailMapper.exdateupdate(map);
	}
	
	
}
