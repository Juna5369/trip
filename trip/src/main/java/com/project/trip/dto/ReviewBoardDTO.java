package com.project.trip.dto;

import java.sql.Date;

import lombok.Data;

@Data
public class ReviewBoardDTO {
	private int rev_no;
	private int prod_no;
	private String id;
	private int pay_no;
	private String rev_title;
	private String rev_type;
	private Date rev_date;
	private String rev_contents;
	private String rev_img;
	private int rev_rating;
	private String prod_start_date;
	private String prod_end_date;
	private String prod_hotel;
	private String prod_plane;
}
