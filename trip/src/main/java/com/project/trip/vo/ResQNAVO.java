package com.project.trip.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class ResQNAVO {

	private int res_qna_no;
	private String id;
	private int res_no;
	private String res_qna_title;
	private String res_qna_contents;
	private Date res_qna_date;
	private String res_qna_ean;
}
