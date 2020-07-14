package com.mylibrary.book.admin.dao.orders;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mylibrary.book.admin.mapper.OrdersMapper;
import com.mylibrary.book.admin.vo.OrdersVO;

@Repository
public class OrdersDAOImpl implements OrdersDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<OrdersVO> showAll() {
		OrdersMapper ordersMapper = sqlSession.getMapper(OrdersMapper.class);
		System.out.println("ordersdaoimpl success");
		return ordersMapper.showAll();
	}
	
	public void insertOrders(OrdersVO vo) {
		OrdersMapper ordersMapper = sqlSession.getMapper(OrdersMapper.class);
		ordersMapper.insertOrders(vo);
	}

	public int updateOrders(OrdersVO vo) {
		OrdersMapper ordersMapper = sqlSession.getMapper(OrdersMapper.class);
		return ordersMapper.updateOrders(vo);
	}
	
	public OrdersVO getOrders(int ordernum) {
		OrdersMapper ordersMapper = sqlSession.getMapper(OrdersMapper.class);
		return ordersMapper.getOrders(ordernum);
	}
	
	public int deleteOrders(OrdersVO vo) {
		OrdersMapper ordersMapper = sqlSession.getMapper(OrdersMapper.class);
		return ordersMapper.deleteOrders(vo);
	}
}
