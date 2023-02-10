package com.project.trip.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.project.trip.vo.MemberVO;

@Mapper
public interface IMemberMapper {
	public int insertMember(MemberVO mv);
	public int idOverCheck(@Param("mid")String id);
	public int login(@Param("mid")String id,@Param("mpw")String pw);
	public String findId();
	public String findPw();
}
