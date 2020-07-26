package com.mylibrary.book.admin.service.index;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mylibrary.book.admin.mapper.IndexMapper;
import com.mylibrary.book.admin.vo.IncomeVO;
import com.mylibrary.book.admin.vo.IndexVO;

@Service
public class IndexServiceImpl implements IndexService {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<IndexVO> showAll() {
		IndexMapper IndexMapper = sqlSession.getMapper(IndexMapper.class);
		return IndexMapper.selectAll();
	}

}
