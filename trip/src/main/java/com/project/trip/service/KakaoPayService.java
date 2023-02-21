package com.project.trip.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;

import com.project.trip.mapper.ProductMapper;
import com.project.trip.vo.KakaoApproveResponse;
import com.project.trip.vo.KakaoReadyResponse;
import com.project.trip.vo.ProductVO;
import com.project.trip.vo.ReserVO;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
@Transactional
public class KakaoPayService {
	
	static final String cid = "TC0ONETIME"; // 가맹점 테스트 코드
    static final String admin_Key = "ccb4db812e04518cf8360caa1355eb9f"; // 공개 조심! 본인 애플리케이션의 어드민 키를 넣어주세요
    private KakaoReadyResponse kakaoReady;

    @Autowired
    ProductMapper pmapper;
    
    public KakaoReadyResponse kakaoPayReady(ReserVO res) {
    	
    	String price = Integer.toString(res.getRes_price());
    	ProductVO prod = pmapper.getListOne(res.getProd_no());
    	String order_no = res.getId()+"-"+res.getProd_no();
    	
    	System.out.println(price);
    	
        // 카카오페이 요청 양식
        MultiValueMap<String, String> parameters = new LinkedMultiValueMap<>();
        parameters.add("cid", cid);
        parameters.add("partner_order_id", order_no);
        parameters.add("partner_user_id", res.getId());
        parameters.add("item_name", prod.getProd_name());
        parameters.add("quantity", "1");
        parameters.add("total_amount", price);
        parameters.add("tax_free_amount", price);
        parameters.add("approval_url", "http://localhost:8081/payment/success"); // 성공 시 redirect url
        parameters.add("cancel_url", "http://localhost:8081/payment/cancel"); // 취소 시 redirect url
        parameters.add("fail_url", "http://localhost:8081/payment/fail"); // 실패 시 redirect url
        
        // 파라미터, 헤더
        HttpEntity<MultiValueMap<String, String>> requestEntity = new HttpEntity<>(parameters, this.getHeaders());
        
        // 외부에 보낼 url
        RestTemplate restTemplate = new RestTemplate();

        kakaoReady = restTemplate.postForObject(
                "https://kapi.kakao.com/v1/payment/ready",
                requestEntity,
                KakaoReadyResponse.class);
                
        return kakaoReady;
    }
    
    /**
     * 결제 완료 승인
     */
    public KakaoApproveResponse approveResponse(String pgToken, String order_no) {

    	String[] order_noS = order_no.split("-");
    	String id = order_noS[0];
        // 카카오 요청
        MultiValueMap<String, String> parameters = new LinkedMultiValueMap<>();
        parameters.add("cid", cid);
        parameters.add("tid", kakaoReady.getTid());
        parameters.add("partner_order_id", order_no);
        parameters.add("partner_user_id", id);
        parameters.add("pg_token", pgToken);

        // 파라미터, 헤더
        HttpEntity<MultiValueMap<String, String>> requestEntity = new HttpEntity<>(parameters, this.getHeaders());
        
        // 외부에 보낼 url
        RestTemplate restTemplate = new RestTemplate();
        
        KakaoApproveResponse approveResponse = restTemplate.postForObject(
                "https://kapi.kakao.com/v1/payment/approve",
                requestEntity,
                KakaoApproveResponse.class);
                
        return approveResponse;
    }
    
    /**
     * 카카오 요구 헤더값
     */
    private HttpHeaders getHeaders() {
        HttpHeaders httpHeaders = new HttpHeaders();

        String auth = "KakaoAK " + admin_Key;

        httpHeaders.set("Authorization", auth);
        httpHeaders.set("Content-type", "application/x-www-form-urlencoded;charset=utf-8");

        return httpHeaders;
    }
}
