package com.project.trip.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.trip.mapper.ProductMapper;
import com.project.trip.vo.ProductVO;

@Controller
public class ProductController {

	@Autowired
	ProductMapper mapper;
	
	@GetMapping("/list")
	public String japanList(Model model) {
		List<ProductVO> list = mapper.getList();
		model.addAttribute("list", list);
	return "prod_list/japan_hongkong";
	}

	
	@GetMapping("/prod_detail")
	public String prod_detail(@RequestParam("no") String prod_nol, Model model) {
		System.out.println("상품디테일 : " + prod_nol);
		int prod_no = Integer.parseInt(prod_nol);
		ProductVO vo = mapper.getListOne(prod_no);
		List<ProductVO> list = new ArrayList<>();
		list.add(vo);
		model.addAttribute("list", list);
	return "prod_list/prod_detail";
	}
	
	
}
