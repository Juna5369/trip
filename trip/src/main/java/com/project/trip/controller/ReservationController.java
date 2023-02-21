package com.project.trip.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.project.trip.dto.ResDataDTO;
import com.project.trip.mapper.IMemberMapper;
import com.project.trip.mapper.IReservationMapper;
import com.project.trip.mapper.ProductMapper;
import com.project.trip.vo.MemberVO;
import com.project.trip.vo.ProductVO;
import com.project.trip.vo.ReserVO;

@Controller
public class ReservationController {
	
	@Autowired
	ProductMapper prod_mapper;
	
	@Autowired
	IMemberMapper mem_mapper;
	
	@Autowired
	IReservationMapper res_mapper;

	/*
	@GetMapping("/res_data")
	public String reservation_page(@RequestParam Map<String, Object> param, Model model) {
		model.addAttribute("resMap",param);
		System.out.println(param.get("res_price"));
		return "reservation_page";
	}
*/
	
	@PostMapping("/reservation_page")
	public void reservation_page(ResDataDTO resdto, Model model) {
		ProductVO prodvo = prod_mapper.getListOne(resdto.getProd_pno());
		MemberVO memvo = mem_mapper.selectOne(resdto.getRes_id());
		model.addAttribute("memvo",memvo);
		model.addAttribute("resdto",resdto);
		model.addAttribute("prodvo",prodvo);
		System.out.println(resdto.getRes_id());
	//	resdto.getTotal();
	}
	
	@PostMapping("/pay")
	public void res_go(ReserVO reservation, Model model) {
		model.addAttribute("reser", reservation);
		int result = res_mapper.reg_reservation(reservation);
		System.out.println(reservation.getId());
		System.out.println(reservation.getRes_price());
		System.out.println(result);

	}
	
	
	
}
