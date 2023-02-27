package com.project.trip.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.project.trip.dto.QnaBoardDTO;
import com.project.trip.dto.ReviewBoardDTO;
import com.project.trip.vo.QNAVO;
import com.project.trip.vo.ReviewVO;

@Mapper
public interface IBoardMapper {
	
	public List<ReviewBoardDTO> review_selectAll();
//	public List<ReviewBoardDTO> review_selectProduct(@Param("prod_no") int prod_no, @Param("startnum_review") int startnum_review);
	public List<ReviewBoardDTO> review_selectProduct(Map<String, Object> map);
	public List<ReviewBoardDTO> review_firstProduct(@Param("prod_no") int prod_no);
	
	public List<ReviewBoardDTO> review_selectOne(int rev_no);
	public int insert_review(ReviewVO rev);
	public int pay_no_one(@Param("id") String id, @Param("prod_no") int prod_no);
	public int count_review(int prod_no);
	//public List<UserDTO> getList2(@Param("startnum_review") int startnum_review);
	
	public List<QNAVO> qna_selectAll();
	public List<QNAVO> qna_selectProduct(int prod_no);
	public List<QNAVO> qna_selectOne(int qna_no);
	public List<QnaBoardDTO> qna_reply1(int qna_no);
	public List<QnaBoardDTO> qna_reply2(int qna_no);
	public int count_reply(int qna_no);
	public int count_qna(int prod_no);

}
