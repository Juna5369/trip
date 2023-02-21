package com.project.trip.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.project.trip.vo.ReserVO;

@Mapper
public interface IReservationMapper {
	
	public int reg_reservation(ReserVO res);
	
}
