package com.project.trip.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.project.trip.vo.OrderVO;

@Mapper
public interface OrderMapper {
	
	public void insertOrder(OrderVO order);
	
	public List<OrderVO> getOrderList();
	
	public OrderVO getOrderOne(@Param("order_no")String order_no);
	
	public void deleteOrder(@Param("order_no")String order_no);
}
