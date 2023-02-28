package com.project.trip.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;

import com.project.trip.dto.Non_resDTO;
import com.project.trip.vo.MemberVO;
import com.project.trip.vo.ReserVO;

@Mapper
public interface IReservationMapper {
	
	public int reg_reservation(ReserVO res);
	
	public List<ReserVO> getResInfoById(@Param("id") String id);
	
	public List<Non_resDTO> getResNonMember(@Param("id") String id, @Param("pw") String pw);

	public int non_idCheck(@Param("id") String id);
	
	public int non_insertMember(MemberVO mv);
}
