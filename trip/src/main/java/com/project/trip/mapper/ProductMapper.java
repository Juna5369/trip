package com.project.trip.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.project.trip.vo.ProductVO;

@Mapper
public interface ProductMapper {

	public List<ProductVO> getList();
	
	public ProductVO getListOne(int prod_no);
}
