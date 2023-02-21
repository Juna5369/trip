package com.project.trip.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.trip.mapper.CustomerCenterMapper;
import com.project.trip.mapper.IMemberMapper;
import com.project.trip.vo.MemberVO;
import com.project.trip.vo.NoticeVO;

@Controller
public class MainController {

	@Autowired
	CustomerCenterMapper cMapper;
	@Autowired
	IMemberMapper mMapper;
	
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
	
	@GetMapping("/notice_post")
	public String notice_post(@RequestParam("not_no") String not_no, Model model) {
		
		int no = Integer.parseInt(not_no);
		
		model.addAttribute("post", cMapper.getNoticeOne(no));
		
		return "/cust_center/notice_post";
	}
	
	@GetMapping("/getInfo")
	public @ResponseBody MemberVO getInfo(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		
		mMapper.selectOne(id);
		
		return mMapper.selectOne(id);
	}
}
