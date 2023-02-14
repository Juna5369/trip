package com.project.trip.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.trip.service.KakaoPayService;
import com.project.trip.vo.KakaoApproveResponse;
import com.project.trip.vo.KakaoReadyResponse;

import lombok.RequiredArgsConstructor;
@Controller
@RequiredArgsConstructor
public class payController {
	
	@Autowired
	private final KakaoPayService kakaoPayService;
	/**
	 * 결제요청
	 */
	@GetMapping("/payment/ready")
	public @ResponseBody KakaoReadyResponse readyToKakaoPay() {
	
	    return kakaoPayService.kakaoPayReady();
	}
	
	/**
	 * 결제 성공
	 */
	@GetMapping("/payment/success")
	public String afterPayRequest(@RequestParam("pg_token") String pgToken) {
	
	    KakaoApproveResponse kakaoApprove = kakaoPayService.approveResponse(pgToken);
	
	    return "redirect:/success";
	}
	
	/**
	 * 결제 진행 중 취소
	 */
	@GetMapping("/payment/cancel")
	public String cancel() {
		return "redirect:/";
	}
	
	/**
	 * 결제 실패
	 */
	@GetMapping("/payment/fail")
	public String fail() {
		return "redirect:/";
	}
}
