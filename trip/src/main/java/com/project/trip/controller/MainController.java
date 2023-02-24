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
import com.project.trip.vo.FAQVO;
import com.project.trip.vo.MemberVO;
import com.project.trip.vo.NoticeVO;
import com.project.trip.vo.ResQNAVO;
import com.project.trip.vo.ResReplyVO;
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
	
	@GetMapping("/getFAQList")
	public @ResponseBody List<FAQVO> getFAQList(){
		
		return cMapper.getFAQList();
	}
	
	@GetMapping("/getFAQListByTitle")
	public @ResponseBody List<FAQVO> getFAQListByTitle(@RequestParam String faq_title){
		
		return cMapper.getFAQListByTitle(faq_title);
	}
	
	@GetMapping("/notice")
	public String notice() {
		return "/cust_center/notice";
	}
	
	@GetMapping("/getNoticeSearch")
	public @ResponseBody List<NoticeVO> getNoticeSearch(@RequestParam String not_title) {
		
		return cMapper.getNoticeListByTitle(not_title);
	}
	
	
	@GetMapping("/searchFAQ")
	public String searchFAQ(@RequestParam String keyword , Model model) {
		
		model.addAttribute("keyword", keyword);
		
		return "/cust_center/faq";
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
	public @ResponseBody void postQna(ResQNAVO rq) {
		
		cMapper.insertQNA(rq);
	}
	
	@GetMapping("/res_qna_list")
	public String res_qna_list() {
		
		return "cust_center/res_qna_list";
	}
	
	@GetMapping("/res_qna_post")
	public String res_qna_post(@RequestParam String res_qna_no, Model model) {
		
		int no = Integer.parseInt(res_qna_no);
		model.addAttribute("post", cMapper.getResQNAOne(no));
		model.addAttribute("post2", cMapper.getResReplyOne(no));
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
	
	@GetMapping("/res_qna_admin")
	public String res_qna_admin() {
		
		return "/admin/res_qna_admin";
	}
	
	@GetMapping("/getResQNAListForAdmin")
	public @ResponseBody List<ResQNAVO> getResQNAListForAdmin() {
		
		return cMapper.getResQNAListForAdmin();
	}
	
	@GetMapping("/res_qna_adminpost")
	public String qna_post(@RequestParam("res_qna_no") String res_qna_no, Model model) {
		
		int no = Integer.parseInt(res_qna_no);
		model.addAttribute("post", cMapper.getResQNAOne(no));
		if(cMapper.getResReplyOne(no) != null) {
			model.addAttribute("post2", cMapper.getResReplyOne(no));
		}
		
		return "/admin/res_qna_adminpost";
	}
	
	@PostMapping("/res_qna_reply")
	public @ResponseBody void res_qna_reply(ResQNAVO rq, ResReplyVO rr) {
		cMapper.updateResQNAEan(rq);
		if(rr.getRes_reply_no() != 0) {
			cMapper.updateResReply(rr);
		}else {
			cMapper.insertResReply(rr);
		}
	}
}
