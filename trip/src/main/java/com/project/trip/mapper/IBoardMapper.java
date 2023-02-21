package com.project.trip.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.project.trip.dto.ReviewBoardDTO;
import com.project.trip.vo.QNAVO;

@Mapper
public interface IBoardMapper {
	
	public List<ReviewBoardDTO> review_selectAll();
	public List<ReviewBoardDTO> review_selectOne(int rev_no);
	
	
	public List<QNAVO> qna_selectAll();
	public List<QNAVO> qna_selectOne(int qna_no);

}
