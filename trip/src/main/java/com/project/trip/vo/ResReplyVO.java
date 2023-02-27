package com.project.trip.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class ResReplyVO {

	private int res_reply_no;
	private int res_qna_no;
	private String res_reply_title;
	private String res_reply_contents;
	private Date res_reply_date;
}
