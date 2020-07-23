package com.mylibrary.book.admin.service.borrowed;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mylibrary.book.admin.mapper.BorrowedMapper;
import com.mylibrary.book.admin.vo.BorrowedVO;

@Service
public class BorrowedServiceImpl implements BorrowedService {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<BorrowedVO> showAll() {
		BorrowedMapper borrowedMapper = sqlSession.getMapper(BorrowedMapper.class);
		return borrowedMapper.selectAll();
	}

	@Override
	public void borrowedDelete(String rentid) {
		BorrowedMapper borrowedMapper = sqlSession.getMapper(BorrowedMapper.class);
		borrowedMapper.borrowedDelete(rentid);
		
	}
	
	

}
