package com.project.trip.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class PayVO {
	private int pay_no;
	private int order_no;
	private Date pay_date;
	private int pay_price;
}
