package com.project.trip.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.project.trip.vo.ProductVO;

@Mapper
public interface ProductMapper {

	public List<ProductVO> getList();
	public ProductVO getListOne(int prod_no);
	
	public int reg_like(@Param("id") String id, @Param("prod_no") int prod_no);
	public int remove_like(@Param("id") String id, @Param("prod_no") int prod_no);
	public int search_like(@Param("id") String id, @Param("prod_no") int prod_no);

}
