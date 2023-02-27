package com.project.trip.dto;

import lombok.Data;

@Data
public class QnaBoardDTO {
	
	private int qna_no;
	private String id;
	private int prod_no;
	private String qna_title;
	private String qna_contents;
	private String qna_date;
	
	private int reply_no;
	private String reply_title;
	private String reply_contents;
	private String reply_date;
	

}
