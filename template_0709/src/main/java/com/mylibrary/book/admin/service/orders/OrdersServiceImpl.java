package com.mylibrary.book.admin.service.orders;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.code.ssm.api.ReadThroughAssignCache;
import com.google.code.ssm.api.ReturnDataUpdateContent;
import com.google.code.ssm.api.UpdateAssignCache;
import com.mylibrary.book.admin.dao.orders.OrdersDAO;
import com.mylibrary.book.admin.vo.OrdersVO;

@Service
public class OrdersServiceImpl implements OrdersService {

	@Autowired
	OrdersDAO ordersDAO;
	
	@Override
	@ReadThroughAssignCache(namespace="admin", assignedKey="orderslist")
	public List<OrdersVO> showAll(){
		return ordersDAO.showAll();
	}
	@Override
	@ReturnDataUpdateContent
	@UpdateAssignCache(namespace="admin", assignedKey="orderslist")
	public List<OrdersVO> insertOrders(OrdersVO vo) {
		ordersDAO.insertOrders(vo);
		return ordersDAO.showAll();
	}
	@Override
	public int updateOrders(OrdersVO vo) {
		return ordersDAO.updateOrders(vo);
	}
	@Override
	public int deleteOrders(OrdersVO vo) {
		return ordersDAO.deleteOrders(vo);
	}
	@Override
	public OrdersVO getOrders(int ordernum) {
		return ordersDAO.getOrders(ordernum);
	}

}
