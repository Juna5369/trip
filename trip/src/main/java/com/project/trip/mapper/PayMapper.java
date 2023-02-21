package com.project.trip.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.project.trip.vo.PayVO;

@Mapper
public interface PayMapper {

	public void insertPay(PayVO pay);
	
	public List<PayVO> getPayList();
	
	public PayVO getPayOne(@Param("pay_no")int pay_no);
	
	public void deletePay(@Param("pay_no")int pay_no);
}
