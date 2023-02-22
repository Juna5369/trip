package com.project.trip.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.project.trip.vo.ReserVO;

@Mapper
public interface IReservationMapper {
	
	public int reg_reservation(ReserVO res);
	
	public List<ReserVO> getResInfoById(@Param("id") String id);
	
}
