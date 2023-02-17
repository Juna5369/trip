package com.project.trip.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.trip.mapper.CustomerCenterMapper;
import com.project.trip.mapper.ProductMapper;
import com.project.trip.vo.NoticeVO;
import com.project.trip.vo.ProductVO;

@Controller
public class MainController {

	@Autowired
	CustomerCenterMapper cMapper;
	
	@GetMapping("/")
	public String root() {
		return "index";
	}
	
	@GetMapping("/pay")
	public void pay() {
		
	}
	
	@GetMapping("/success")
	public void success() {
		
	}
	
	@GetMapping("/cust_center")
	public String customer_center() {
		return "/cust_center/center_main";
	}
	
	@GetMapping("/faq")
	public String faq() {
		return "/cust_center/faq";
	}
	
	@GetMapping("/notice")
	public String notice() {
		return "/cust_center/notice";
	}
	
	@GetMapping("/qna")
	public String qna() {
		return "/cust_center/qna";
	}
	
	@GetMapping("/getNoticeList.do")
	public @ResponseBody List<NoticeVO> getList() {
		
		return cMapper.getNoticeList();
	}
}
