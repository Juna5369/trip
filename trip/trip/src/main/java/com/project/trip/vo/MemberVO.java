package com.project.trip.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class MemberVO {
	private String id;
	private String pw;
	private String name;
	private Date birth;
	private String gender;
	private String tel;
	private String email;
	private String email2;
	private String email_check;
	private String address;
	private String address_detail;
	private String postalcode;
}
