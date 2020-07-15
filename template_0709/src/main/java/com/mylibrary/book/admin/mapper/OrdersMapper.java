package com.mylibrary.book.admin.mapper;

import java.util.List;

import com.mylibrary.book.admin.vo.OrdersVO;

public interface OrdersMapper {
	public List<OrdersVO> showAll();	  //목록보기
	public OrdersVO getOrders(int ordernum);	// 특정레코드보기
	public void insertOrders(OrdersVO vo); //쓰기
	public int updateOrders(OrdersVO vo);  //수정
	public int deleteOrders(OrdersVO vo);  //삭제
}
