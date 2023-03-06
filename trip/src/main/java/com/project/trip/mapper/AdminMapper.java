package com.project.trip.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.project.trip.vo.FAQVO;
import com.project.trip.vo.NoticeVO;
import com.project.trip.vo.ProductVO;
import com.project.trip.vo.QNAVO;
@Mapper
public interface AdminMapper {
	public void insertNotice();
	public List<NoticeVO> getNoticeList();
	public NoticeVO getNoticeOne(@Param("not_no")int not_no);
	public List<FAQVO> getFAQList();
	public List<QNAVO> getQNAList();
	
	public int insertProd(ProductVO vo);
	public List<ProductVO> getAdminProductList();
	public ProductVO getProductOne(@Param("prod_no")int prod_no);
	public int updateProd(ProductVO vo);
	public int deleteProd(@Param("prod_no")int prod_no);
	
	public List<ProductVO> getWeeklyList();
}
