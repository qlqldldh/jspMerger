package com.mylibrary.book.admin.service.income;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mylibrary.book.admin.mapper.IncomeMapper;
import com.mylibrary.book.admin.vo.IncomeVO;

@Service
public class IncomeServiceImpl implements IncomeService {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<IncomeVO> showAll() {
		IncomeMapper incomeMapper = sqlSession.getMapper(IncomeMapper.class);
		return incomeMapper.selectAll();
	}

	@Override
	public void incomeInsert(IncomeVO vo) {
		IncomeMapper incomeMapper = sqlSession.getMapper(IncomeMapper.class);
		incomeMapper.incomeInsert(vo);
	}

	@Override
	public void incomeDelete(int incomenum) {
		IncomeMapper incomeMapper = sqlSession.getMapper(IncomeMapper.class);
		incomeMapper.incomeDelete(incomenum);
	}

	@Override
	public void incomeUpdate(IncomeVO vo) {
		IncomeMapper incomeMapper = sqlSession.getMapper(IncomeMapper.class);
		incomeMapper.incomeUpdate(vo);
	}

	@Override
	public IncomeVO getIncome(int incomenum) {
		IncomeMapper incomeMapper = sqlSession.getMapper(IncomeMapper.class);
		return incomeMapper.getIncome(incomenum);
		
	}
}
