package com.project.trip.controller;

import java.util.ArrayList;
import java.util.Date;
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
import com.project.trip.vo.OrderVO;
import com.project.trip.vo.PayVO;
import com.project.trip.vo.ProductVO;
import com.project.trip.vo.QNAVO;
import com.project.trip.vo.ReserVO;
import com.project.trip.vo.ReviewVO;

@Controller
public class MyPageController {
	@Autowired
	IMemberMapper mapper;

	@GetMapping("/mypage")

	public void mypage(Model model,String id) {


	MemberVO mv = mapper.selectOne(id);

	List<ReviewVO> reviewList= mapper.getReview(id);

	List<ReserVO> rlist = mapper.getReservation(id);

	List<QNAVO> qlist =mapper.getQnA(id);

	List<LikeVO> likeList = mapper.getLike(id);

	List<ProductVO> plist = new ArrayList<>() ;

	for(int i =0;i<likeList.size();i++) {

	int product_no=likeList.get(i).getProd_no();

	ProductVO pv = mapper.getProduct(product_no);


	plist.add(pv);

	}

	model.addAttribute("reviewList",reviewList);

	model.addAttribute("plist",plist);

	model.addAttribute("rlist", rlist);

	model.addAttribute("qlist",qlist);

	model.addAttribute("mv",mv);


	}

	@GetMapping("/update")
	public void update(Model model, String id) {
		MemberVO mv = mapper.selectOne(id);
		String email = mv.getEmail();
		String[] email_ = email.split("@");
		mv.setEmail(email_[0]);

		model.addAttribute("mv", mv);
	}

	@PostMapping("/update.do")
	public String update_do(MemberVO mv) {
		mv.setEmail(mv.getEmail() + "@" + mv.getEmail2());
		mapper.updateMember(mv);

		return "index";
	}

	@PostMapping("/deleteMember")

	public @ResponseBody String deleteMember(String id, HttpServletRequest request, String contents) {

		mapper.deleteMember(id);

		HttpSession session = request.getSession();

		session.invalidate();

		String out = "<script>alert('회원탈퇴 완료');location.href='/';</script>";

		return out;

	}

	@GetMapping("/deleteMember")

	public String delejsp(String id, Model model) {

		MemberVO mv = mapper.selectOne(id);

		model.addAttribute("mv", mv);

		return "withdrawal";

	}

	@GetMapping("/qna_detail")

	public String qnaDetail() {

		return "";
		
	}

	@GetMapping("/reviewBoard")

	public String review(String id ,Model model) {
		
		MemberVO mv= mapper.selectOne(id);
		
		List<OrderVO> ovList = mapper.getOrder(id);
		List<ProductVO> plist = new ArrayList<>() ;
		for(int i =0;i<ovList.size();i++) {

			int product_no=ovList.get(i).getProd_no();

			ProductVO pv = mapper.getProduct(product_no);


			plist.add(pv);
		}
		
		model.addAttribute("ovList",plist);
		model.addAttribute("mv",mv);
		model.addAttribute("id",id);
		
		return"review";
	}
	
	@PostMapping("/reviewBoard")
	public @ResponseBody String reviewdo(ReviewVO rv,HttpServletRequest request,String id) {
		String page = "";
		Date date = new Date();
		ProductVO pv = mapper.getProductByName(request.getParameter("prod_name"));
		System.out.println("상품번호 :"+pv.getProd_no());
		int order_no = mapper.getOrderOne(id,pv.getProd_no());
		System.out.println("주문번호 :"+order_no);
		
		PayVO payv = mapper.getPay(order_no);
		
		long timeInMilliSeconds = date.getTime();
        java.sql.Date now = new java.sql.Date(timeInMilliSeconds);
        
		rv.setProd_no(pv.getProd_no());//상품번호
		rv.setId(id);//아이디
		rv.setPay_no(payv.getPay_no());//결제번호
		rv.setRev_date(now);//리뷰 날짜
		rv.setRev_img(pv.getProd_img()); // 상품 이미지
		
		System.out.println("리뷰 :" +rv.toString());
		if(mapper.regReview(rv) == 1) {
			page= "<script>alert('리뷰등록 완료');location.href='/';</script>";
		}else {
			page= "<script>alert('리뷰실패');location.href='/';</script>";
		}
		
		
		
		return page;
	}

}
