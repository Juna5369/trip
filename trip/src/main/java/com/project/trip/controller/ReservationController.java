package com.project.trip.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.trip.dto.Non_resDTO;
import com.project.trip.dto.ResDataDTO;
import com.project.trip.dto.Res_noDTO;
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
	public void reservation_page(ResDataDTO resdto, Res_noDTO resno, Model model) {
//		System.out.println("비회원"+resno.getNo_prod_no());
//		System.out.println("회원"+resdto.getProd_pno());
			
		if(resdto.getProd_pno() == 0) {
//			System.out.println("비회원");
			ProductVO prodvo = prod_mapper.getListOne(resno.getNo_prod_no());
			MemberVO no_mem = new MemberVO();
			no_mem.setId(resno.getNo_id());
			no_mem.setPw(resno.getNo_pw());
			no_mem.setName(resno.getNo_name());
			no_mem.setTel(resno.getNo_tel());
			no_mem.setAuthority("g");
//			mem_mapper.insertMember(no_mem);
			res_mapper.non_insertMember(no_mem);
			model.addAttribute("resno",resno);
			model.addAttribute("prodvo",prodvo);
		}else if(resno.getNo_prod_no() == 0) {
//		}else{
//			System.out.println("회원");
			ProductVO prodvo = prod_mapper.getListOne(resdto.getProd_pno());
			MemberVO memvo = mem_mapper.selectOne(resdto.getRes_id());
			model.addAttribute("memvo",memvo);
			model.addAttribute("resdto",resdto);
			model.addAttribute("prodvo",prodvo);
//			System.out.println(resdto.getRes_id());
			//	resdto.getTotal();
			
		}
	}
	
	@PostMapping("/pay")
	public void res_go(ReserVO reservation, Model model) {
		model.addAttribute("reser", reservation);
		int result = res_mapper.reg_reservation(reservation);
		System.out.println(reservation.getId());
		System.out.println(reservation.getRes_price());
		System.out.println(reservation.getRes_desc());
		System.out.println("동의"+reservation.getRes_third());
		System.out.println(result);

	}
	
//	@PostMapping("/res_no")
//	public void res_non(Res_noDTO resno, Model model) {
		
//	}
	
	@GetMapping("/res_no_check")
	public @ResponseBody String no_idcheck(String no_id) {
		int result = mem_mapper.idOverCheck(no_id);
		String msg = null;
		if(result == 0) {
			msg = "ok";
		}else {
			msg = "no";
		}
		System.out.println(no_id);
		System.out.println(msg);
		return msg;
	}
	
	@GetMapping("/no_res")
	public @ResponseBody List<Non_resDTO> get_noRes(@RequestParam("id") String id, @RequestParam("pw") String pw, Model model){
		int result = res_mapper.non_idCheck(id);
		if(result == 1) {
			List<Non_resDTO> no_list = res_mapper.getResNonMember(id, pw);
			return no_list;
		}else{
			return null;
		}
	}
	
}
