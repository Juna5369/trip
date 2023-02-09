package com.project.trip.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.project.trip.mapper.ProductMapper;
import com.project.trip.vo.ProductVO;
//prod_list/
@Controller
//@RequestMapping("/prod_list")
public class MyController {
	@Autowired
	ProductMapper mapper;
	
	@GetMapping("/")
		public String japanList(Model model) {
			List<ProductVO> list = mapper.getList();
			model.addAttribute("list", list);
		return "prod_list/japan_hongkong";
	}
	
}
