package com.mylibrary.book.admin.dao.hremp;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mylibrary.book.admin.mapper.IncomeMapper;
import com.mylibrary.book.admin.vo.IncomeVO;

@Repository
public class IncomeDAOImpl implements IncomeDAO {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public ArrayList<IncomeVO> getIncome() {
		ArrayList<IncomeVO> lists = new ArrayList<IncomeVO>();
		IncomeMapper mapper = sqlSession.getMapper(IncomeMapper.class);
		
		lists = mapper.getIncome();
		
		return lists;
	}

}
