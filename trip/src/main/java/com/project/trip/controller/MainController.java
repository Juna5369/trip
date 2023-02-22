package com.project.trip.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.trip.mapper.CustomerCenterMapper;
import com.project.trip.mapper.IMemberMapper;
import com.project.trip.mapper.IReservationMapper;
import com.project.trip.vo.MemberVO;
import com.project.trip.vo.NoticeVO;
import com.project.trip.vo.ResQNAVO;
import com.project.trip.vo.ReserVO;

@Controller
public class MainController {

	@Autowired
	CustomerCenterMapper cMapper;
	@Autowired
	IMemberMapper mMapper;
	@Autowired
	IReservationMapper rMapper;
	
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
	public String qna(HttpServletRequest request, Model model) {
		
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		
		MemberVO member = mMapper.selectOne(id);
		String name = member.getName();
		
		model.addAttribute("name", name);
		
		return "/cust_center/qna";
	}
	
	@GetMapping("/getResInfo")
	public @ResponseBody List<ReserVO> getResInfo(@RequestParam String id) {

		return rMapper.getResInfoById(id);
	}
	
	@PostMapping("/postQna")
	public @ResponseBody String postQna(ResQNAVO rq) {
		
		cMapper.insertQNA(rq);
		
		return "";
	}
	
	@GetMapping("/res_qna_list")
	public String res_qna_list() {
		return "cust_center/res_qna_list";
	}
	
	@GetMapping("/res_qna_post")
	public String res_qna_post(@RequestParam String res_qna_no, Model model) {
		int no = Integer.parseInt(res_qna_no);
		
		model.addAttribute("post", cMapper.getResQNAOne(no));
		
		return "/cust_center/res_qna_post";
	}
	
	@GetMapping("/getQNAList")
	public @ResponseBody List<ResQNAVO> getQNAList(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");

		return cMapper.getResQNAList(id);
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
