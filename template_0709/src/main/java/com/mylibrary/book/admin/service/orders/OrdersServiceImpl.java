package com.mylibrary.book.admin.service.orders;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mylibrary.book.admin.dao.orders.OrdersDAO;
import com.mylibrary.book.admin.vo.OrdersVO;

@Service
public class OrdersServiceImpl implements OrdersService {

	@Autowired
	OrdersDAO OrdersDAO;
	
	
	public List<OrdersVO> showAll(){
		return OrdersDAO.showAll();
	}

	public void insertOrders(OrdersVO vo) {
		OrdersDAO.insertOrders(vo);
	}

	public int updateOrders(OrdersVO vo) {
		return OrdersDAO.updateOrders(vo);
	}

	public int deleteOrders(OrdersVO vo) {
		return OrdersDAO.deleteOrders(vo);
	}

	public OrdersVO getOrders(int ordernum) {
		return OrdersDAO.getOrders(ordernum);
	}

}
