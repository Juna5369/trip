package com.project.trip.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.trip.dto.QnaBoardDTO;
import com.project.trip.dto.ReviewBoardDTO;
import com.project.trip.mapper.IBoardMapper;
import com.project.trip.mapper.ProductMapper;
import com.project.trip.vo.ProductVO;
import com.project.trip.vo.QNAVO;
import com.project.trip.vo.ReviewVO;

@Controller
public class ProductController {

	@Autowired
	ProductMapper mapper;
	
	@Autowired
	IBoardMapper b_mapper;
	
	@GetMapping("/list")
	public String japanList(@RequestParam("prod_category")String prod_category, Model model) {
		List<ProductVO> list = mapper.getListCategory(prod_category);
		System.out.println("리스트 : "+list.toString());
		model.addAttribute("list", list);
	return "prod_list/japan_hongkong";
	}

	@GetMapping("/list2")
	public String seasiaList(@RequestParam("prod_category")String prod_category, Model model) {
		List<ProductVO> list = mapper.getListCategory(prod_category);
		System.out.println("리스트 : "+list.toString());
		model.addAttribute("list", list);
	return "prod_list/seasia";
	}
	
	@GetMapping("/list3")
	public String euafreecaList(@RequestParam("prod_category")String prod_category, Model model) {
		List<ProductVO> list = mapper.getListCategory(prod_category);
		System.out.println("리스트 : "+list.toString());
		model.addAttribute("list", list);
	return "prod_list/eu_afreeca";
	}
	@GetMapping("/list4")
	public String auList(@RequestParam("prod_category")String prod_category, Model model) {
		List<ProductVO> list = mapper.getListCategory(prod_category);
		System.out.println("리스트 : "+list.toString());
		model.addAttribute("list", list);
	return "prod_list/au";
	}
	@GetMapping("/list5")
	public String usaList(@RequestParam("prod_category")String prod_category, Model model) {
		List<ProductVO> list = mapper.getListCategory(prod_category);
		System.out.println("리스트 : "+list.toString());
		model.addAttribute("list", list);
	return "prod_list/usa";
	}
	@GetMapping("/list6")
	public String krList(@RequestParam("prod_category")String prod_category, Model model) {
		List<ProductVO> list = mapper.getListCategory(prod_category);
		System.out.println("리스트 : "+list.toString());
		model.addAttribute("list", list);
		return "prod_list/kr";
	}
	@GetMapping("/list7")
	public String honeyList(@RequestParam("prod_theme")String prod_theme, Model model) {
		List<ProductVO> list = mapper.getListTheme(prod_theme);
		System.out.println("리스트 : "+list.toString());
		model.addAttribute("list", list);
		return "prod_list/honey";
	}
	@GetMapping("/list8")
	public String golfList(@RequestParam("prod_theme")String prod_theme, Model model) {
		List<ProductVO> list = mapper.getListTheme(prod_theme);
		System.out.println("리스트 : "+list.toString());
		model.addAttribute("list", list);
		return "prod_list/golf";
	}
	@GetMapping("/list9")
	public String cruiseList(@RequestParam("prod_theme")String prod_theme, Model model) {
		List<ProductVO> list = mapper.getListTheme(prod_theme);
		System.out.println("리스트 : "+list.toString());
		model.addAttribute("list", list);
		return "prod_list/cruise";
	}
	@GetMapping("/list10")
	public String natList(@RequestParam("prod_category")String prod_category, Model model) {
		List<ProductVO> list = mapper.getListCategory(prod_category);
		System.out.println("리스트 : "+list.toString());
		model.addAttribute("list", list);
		return "prod_list/nat";
	}

	
	@RequestMapping("/prod_detail")
	public String prod_detail(@RequestParam("no") String prod_nol, @RequestParam(value="pageNum_review", required=false) String pageNum_review, @RequestParam(value="start_review", required=false) String start_review, Model model) {
		System.out.println("상품디테일 : " + prod_nol);
		int prod_no = Integer.parseInt(prod_nol);
		ProductVO vo = mapper.getListOne(prod_no);
		List<ProductVO> list = new ArrayList<>();
		list.add(vo);
		model.addAttribute("list", list);
		int review_count = b_mapper.count_review(prod_no);
		model.addAttribute("count_review", review_count);
		System.out.println(review_count);

	//	List<ReviewBoardDTO> review_prod = b_mapper.review_selectProduct(prod_no);
	//	model.addAttribute("reviews", review_prod);
		List<QNAVO> qna_prod = b_mapper.qna_selectProduct(prod_no);
		model.addAttribute("qnas", qna_prod);
		
		if(start_review == null) {
			model.addAttribute("start_review", 1);
		}else {
			model.addAttribute("start_review", Integer.parseInt(start_review));
		}
		
		if(pageNum_review == null) {
			model.addAttribute("pageNum_review", 1);
			List<ReviewBoardDTO> review_prod = b_mapper.review_firstProduct(prod_no);
	//		List<ReviewBoardDTO> review_prod = b_mapper.review_selectProduct(map);
			model.addAttribute("reviews", review_prod);
			System.out.println("여긴"+review_prod.toString());
		}else {
			Map<String,Object>map = new HashMap<String,Object>();
			map.put("no", prod_no);
//			int param_review = Integer.parseInt(pageNum_review) * 10 - 10;
			int param_review = (Integer.parseInt(pageNum_review) - 1) * 5;
			map.put("startnum_review", param_review);
			List<ReviewBoardDTO> review_prod = b_mapper.review_selectProduct(map);
			System.out.println(review_prod.toString());
			model.addAttribute("pageNum_review", pageNum_review);
			model.addAttribute("reviews", review_prod);
		}
	return "prod_list/prod_detail";
	}
	
	@GetMapping("/board1")
	public @ResponseBody List<ReviewBoardDTO> getboard(int rev_no){
		List<ReviewBoardDTO> p1 = b_mapper.review_selectOne(rev_no);
		return p1;
	}
	@GetMapping("/board2")
	public @ResponseBody List<QnaBoardDTO> getQna(int qna_no){
		int result = b_mapper.count_reply(qna_no);
		System.out.println("결과는 : "+result);
		if(result == 0) {
			List<QnaBoardDTO> q1 = b_mapper.qna_reply1(qna_no);
			return q1;
		}else {
			List<QnaBoardDTO> q2 = b_mapper.qna_reply2(qna_no);
			return q2;
		}
	}
	@GetMapping("/board3")
	public @ResponseBody int reply_exist(int qna_no){
		int result = b_mapper.count_reply(qna_no);
		System.out.println("결과는 : "+result);
		return result;
	}
	
	
	@PostMapping("/reg_review")
	public @ResponseBody int reviewReg(ReviewVO rev) {
		int result = b_mapper.insert_review(rev);
		return result;
		
	}
	
	@GetMapping("/like_prod")
	public @ResponseBody String product_liked(@RequestParam("id") String id, @RequestParam("prod_no") int prod_no, @RequestParam("like") int like) {
		int result = 0;
		String msg = null;
		if(like == 0) {
			result = mapper.reg_like(id, prod_no);
			msg = "등록 완료";
			
		}else if(like == 1){
			result = mapper.remove_like(id, prod_no);
			msg = "제거 완료";
		}
		return msg;
	}
	@GetMapping("/like_search")
	public @ResponseBody int search_like(@RequestParam("id") String id, @RequestParam("prod_no") int prod_no) {
		int result = mapper.search_like(id, prod_no);
		return result;
	}
	
	@GetMapping("/payno")
	public @ResponseBody int show_payNo(@RequestParam("id") String id, @RequestParam("prod_no") int prod_no) {
	//	String prodName = mapper.search_prodName(id, prod_no);
	//	return prodName;
		int payNo = b_mapper.pay_no_one(id, prod_no);
		return payNo;
	}
	
	@GetMapping("/prod_list2")
	public @ResponseBody List<ProductVO> show_prodName2(@RequestParam("id") String id) {
		List<ProductVO> prodNames = mapper.search_prodName2(id);
		return prodNames;
	}
	
	@GetMapping("/prod_info")
	public @ResponseBody ProductVO show_prodInfo(@RequestParam("prod_no") int prod_no) {
		ProductVO pro1 = mapper.getListOne(prod_no);
		return pro1;
	}
	
	@GetMapping("/no_prod_info")
	public @ResponseBody ProductVO show_no_prodInfo(@RequestParam("id") String id, @RequestParam("pw") String pw) {
		// 예약목록에서 검색후 상품번호 도출 - 단일 상품이다
		ProductVO no_prod = mapper.search_no_prod(id, pw);
		return no_prod;
	}

}
