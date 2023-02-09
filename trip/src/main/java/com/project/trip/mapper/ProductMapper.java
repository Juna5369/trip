package com.project.trip.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.project.trip.vo.ProductVO;

@Mapper
public interface ProductMapper {

	public List<ProductVO> getList();
}
