package com.project.trip.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.trip.mapper.IReservationMapper;
import com.project.trip.mapper.OrderMapper;
import com.project.trip.mapper.PayMapper;
import com.project.trip.mapper.ProductMapper;
import com.project.trip.service.KakaoPayService;
import com.project.trip.vo.KakaoApproveResponse;
import com.project.trip.vo.KakaoReadyResponse;
import com.project.trip.vo.OrderVO;
import com.project.trip.vo.PayVO;
import com.project.trip.vo.ProductVO;
import com.project.trip.vo.ReserVO;

import lombok.RequiredArgsConstructor;
@Controller
@RequiredArgsConstructor
public class PayController {
	
	@Autowired
	private final KakaoPayService kakaoPayService;
	
	@Autowired
	OrderMapper mapper;
	
	@Autowired
	PayMapper pmapper;
	
	@Autowired
	ProductMapper prmapper;
	
	@Autowired
	IReservationMapper res_mapper;
	/**
	 * 결제요청
	 */
	@GetMapping("/payment/ready")
	public @ResponseBody KakaoReadyResponse readyToKakaoPay(ReserVO res, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		session.setAttribute("id", res.getId());
		String order_no = res.getId()+"-"+res.getProd_no();
		session.setAttribute("order_no", order_no);
		String strPrice = Integer.toString(res.getRes_price());
		session.setAttribute("price", strPrice);
		
		OrderVO order = new OrderVO();
		order.setProd_no(res.getProd_no());
		order.setId(res.getId());
		order.setOrder_no(order_no);
		
		mapper.insertOrder(order);
		
	    return kakaoPayService.kakaoPayReady(res);
	}
	
	/**
	 * 결제 성공
	 */
	@GetMapping("/payment/success")
	public String afterPayRequest(@RequestParam("pg_token") String pgToken, HttpServletRequest request, RedirectAttributes re) {
	
		HttpSession session = request.getSession();
		String order_no = (String)session.getAttribute("order_no");
		int pay_price = Integer.parseInt((String)session.getAttribute("price"));
		String se_id = (String)session.getAttribute("id");
		
	    KakaoApproveResponse kakaoApprove = kakaoPayService.approveResponse(pgToken, order_no);
	    
	    PayVO pay = new PayVO();
	    
	    pay.setOrder_no(order_no);
	    pay.setPay_price(pay_price);
	    
	    pmapper.insertPay(pay);
	    
	    session.removeAttribute("order_no");
	    session.removeAttribute("price");
	    if(res_mapper.non_idCheck(se_id) == 1) {
	    	System.out.println(res_mapper.non_idCheck(se_id));
	    	session.removeAttribute("id");
	    }
	    
	    String[] order_no_str = order_no.split("-");
    	String prod_no_str = order_no_str[1];
    	int prod_no = Integer.parseInt(prod_no_str);
    	ProductVO product = prmapper.getListOne(prod_no);
	    
	    re.addFlashAttribute("prod", product);
	    re.addFlashAttribute("pay", pay);
	    
	    return "redirect:/success";
	}
	
	/**
	 * 결제 진행 중 취소
	 */
	@GetMapping("/payment/cancel")
	public String cancel(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		String order_no = (String)session.getAttribute("order_no");
		mapper.deleteOrder(order_no);
		
		session.removeAttribute("order_no");
		session.removeAttribute("price");
		return "redirect:/list";
	}
	
	/**
	 * 결제 실패
	 */
	@GetMapping("/payment/fail")
	public String fail(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		String order_no = (String)session.getAttribute("order_no");
		mapper.deleteOrder(order_no);
		
		session.removeAttribute("order_no");
		session.removeAttribute("price");
		return "redirect:/list";
	}
}
