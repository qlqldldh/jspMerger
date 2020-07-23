package com.mylibrary.book.admin.service.balance;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mylibrary.book.admin.mapper.IncomeMapper;
import com.mylibrary.book.admin.mapper.OrdersMapper;
import com.mylibrary.book.admin.vo.BalanceVO;
import com.mylibrary.book.admin.vo.IncomeVO;
import com.mylibrary.book.admin.vo.OrdersVO;

@Service
public class BalanceServiceImpl implements BalanceService{
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<BalanceVO> showBalance() {
		IncomeMapper incomeMapper = sqlSession.getMapper(IncomeMapper.class);
		OrdersMapper ordersMapper = sqlSession.getMapper(OrdersMapper.class);
		
		List<IncomeVO> incomes = incomeMapper.selectAll();
		List<OrdersVO> orders = ordersMapper.showAll();
		
		
		
		// TODO Auto-generated method stub
		return null;
	}
	
}
