package com.project.trip.vo;

import lombok.Data;

@Data
public class ProductVO {

	private int prod_no;	//상품번호
	private String prod_name;	//상품이름
	private int prod_price_adult;	//상품가격
	private int prod_price_child;	//상품가격
//	private int prod_price_baby;	//상품가격
	private String prod_hash;	//해쉬태그
	private String prod_city;	//주요도시
	private String prod_img;	//상품이미지
	private String prod_detail;	//상품설명
	private String prod_theme;	//상품테마
	private int prod_max_person;	//최대인원
	private int prod_min_person;	//최소인원
	private int prod_cur_person;	//현재인원
	private String prod_start_date;	//여행출발날짜
	private String prod_end_date;	//귀가날짜
	private String prod_category; // 카테고리
	private String prod_hotel;
	private String prod_plane;
}
