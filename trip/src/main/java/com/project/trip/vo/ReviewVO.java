package com.project.trip.vo;



import java.sql.Date;

import lombok.Data;

@Data
public class ReviewVO {
	private int rev_no;
	private int prod_no;
	private String id;
	private int pay_no;
	private Date rev_date;
	private String rev_contents;
	private String rev_img;
	private int rev_rating;
}
