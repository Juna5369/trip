package com.project.trip.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class ReserVO {
	private int res_no;
	private String id;
	private int prod_no;
	private Date res_date;
	private int res_child;
	private int res_adult;
	private int res_price;
}
