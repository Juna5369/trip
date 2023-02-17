package com.project.trip.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.trip.mapper.IMemberMapper;
import com.project.trip.vo.LikeVO;
import com.project.trip.vo.MemberVO;
import com.project.trip.vo.ProductVO;
import com.project.trip.vo.QNAVO;
import com.project.trip.vo.ReserVO;

@Controller
public class MyPageController {
	@Autowired
	IMemberMapper mapper;
	
	@GetMapping("/mypage")
	public void mypage(Model model,String id) {
		
		MemberVO mv = mapper.selectOne(id);
		List<ReserVO> rlist = mapper.getReservation(id);
		List<QNAVO> qlist =mapper.getQnA(id);
		List<LikeVO> likeList = mapper.getLike(id);
		List<ProductVO> plist = new ArrayList<>() ;
		for(int i =0;i<likeList.size();i++) {
			int product_no=likeList.get(i).getProd_no();
			ProductVO pv = mapper.getProduct(product_no);
			
			plist.add(pv);
		}
		model.addAttribute("plist",plist);
		model.addAttribute("rlist", rlist);
		model.addAttribute("qlist",qlist);
		model.addAttribute("mv",mv);
		
	}
	@GetMapping("/update")
	public void update(Model model, String id) {
		MemberVO mv = mapper.selectOne(id);
		String email = mv.getEmail();
		String[] email_= email.split("@");
		mv.setEmail(email_[0]);
		
		model.addAttribute("mv",mv);
	}
	@PostMapping("/update.do")
	public String update_do(MemberVO mv) {
		mv.setEmail(mv.getEmail() + "@" + mv.getEmail2());
		mapper.updateMember(mv);
		
		return "index";
	}
	
	@GetMapping("/deleteMember")
	public @ResponseBody String deleteMember(String id,HttpServletRequest request ) {
		mapper.deleteMember(id);
		HttpSession session = request.getSession();
		session.invalidate();
		String out = "<script>alert('회원탈퇴 완료');location.href='/';</script>";
		return out;
	}
	@GetMapping("/qna_detail")
	public String qnaDetail() {
		
		
		return"";
	}
	
	
}
