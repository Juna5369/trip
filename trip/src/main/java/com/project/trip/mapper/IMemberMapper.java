package com.project.trip.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.project.trip.vo.LikeVO;
import com.project.trip.vo.MemberVO;
import com.project.trip.vo.ProductVO;
import com.project.trip.vo.QNAVO;
import com.project.trip.vo.ReserVO;

@Mapper
public interface IMemberMapper {
	public int insertMember(MemberVO mv);
	public int idOverCheck(@Param("mid")String id);
	public int login(@Param("mid")String id,@Param("mpw")String pw);
	public String findId(@Param("fname")String fname,@Param("ftel")String tel);
	public String findPw(@Param("mid")String id,@Param("memail")String email);
	public MemberVO selectOne(@Param("selId")String id);
	public int updateMember(MemberVO mv);
	public int deleteMember(@Param("delId")String id);
	public List<ReserVO> getReservation(@Param("reserId")String id);
	public List<QNAVO> getQnA(@Param("qid")String id);
	public List<LikeVO> getLike(@Param("lid")String id);
	public ProductVO getProduct(@Param("prod_no")int product_no);
}
