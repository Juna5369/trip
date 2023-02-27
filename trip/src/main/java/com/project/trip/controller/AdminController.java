package com.project.trip.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.trip.mapper.AdminMapper;
import com.project.trip.mapper.ProductMapper;
import com.project.trip.vo.NoticeVO;
import com.project.trip.vo.ProductVO;

import lombok.extern.slf4j.Slf4j;
@Slf4j
@Controller
public class AdminController {

	
	@Autowired
	AdminMapper adMapper;

	@Autowired
	ProductMapper pdMapper;
	
	@GetMapping("/admin")
	public String admin_main() {
		
		return "/admin/admin_main";
	}
	
	@GetMapping("/notice.do")
	public @ResponseBody List<NoticeVO> getNotice() {
		
		return adMapper.getNoticeList();
	}
	
	@GetMapping("/admin_notice")
	public String adminnotice() {
		return "/admin/notice";
	}
	@GetMapping("/notice_detail")
	public String notice_post(@RequestParam("not_no") String not_no, Model model) {
		
		int no = Integer.parseInt(not_no);
		
		model.addAttribute("post", adMapper.getNoticeOne(no));
		
		return "/admin/notice_detail";
	}
	
	
	@GetMapping("/prodform")
	public String prodinsert() {
		
		return"/admin/admin_prod_form";
	}
	@PostMapping("/insertProd.do")
	public @ResponseBody String insertProd(ProductVO vo, @RequestParam("prod_iii")MultipartFile uploadFile,HttpServletRequest request, Model model) {
		String fileName = uploadFile.getOriginalFilename();
		log.info(fileName);
		vo.setProd_img(fileName);
	      ServletContext ctx = request.getServletContext();
	      String uploadFolder = "/img";
	      String path = ctx.getRealPath(uploadFolder);
	      log.info("path : " +path);
	         File saveFile = new File(path, uploadFile.getOriginalFilename());
	         try {
	            uploadFile.transferTo(saveFile);
	         } catch (IllegalStateException | IOException e) {
	            log.error(e.getMessage());
	         }
	         // }//end for
		
		int result = adMapper.insertProd(vo);
		System.out.println(vo.getProd_no());
		String url ="";
		if(result==1) {
			url="<script>alert('완료'); location.href='/admin_prod_list';</script> ";
		}else {
			url="<script>alert('실패'); location.back()</script>";
		}
		return url;
	}
	
	
	@GetMapping("/admin_prod_list")    //목록
	public String prodlist(Model model) {

		return "/admin/admin_prod_list";
	}
	
	
	@GetMapping("/admin_prod_list.do")  //동작
	public @ResponseBody List<ProductVO> getAdminProductList() {
		
		return adMapper.getAdminProductList();
	}
	
	@GetMapping("/admin_prod_detail")
	public String prod_detail(@RequestParam("prod_no") String prod_no, Model model) {
		
		int no = Integer.parseInt(prod_no);
		
		model.addAttribute("post", adMapper.getProductOne(no));
		
		return "/admin/admin_prod_detail";
	}
	
	@GetMapping("/admin_prod_update")
	public String prodUpdate(@RequestParam("prod_no") String prod_no, Model model) {
		int no = Integer.parseInt(prod_no);
		model.addAttribute("post", adMapper.getProductOne(no));
		return "/admin/admin_prod_update";
	} 
	
	@PostMapping("/admin_prod_update.do")
	public String prodUpdate2(ProductVO vo, @RequestParam("prod_iii")MultipartFile uploadFile,HttpServletRequest request, Model model, RedirectAttributes rs) {
		String fileName = uploadFile.getOriginalFilename();
		log.info(fileName);
		vo.setProd_img(fileName);
	      ServletContext ctx = request.getServletContext();
	      String uploadFolder = "/img";
	      String path = ctx.getRealPath(uploadFolder);
	      log.info("path : " +path);
	         File saveFile = new File(path, uploadFile.getOriginalFilename());
	         try {
	            uploadFile.transferTo(saveFile);
	         } catch (IllegalStateException | IOException e) {
	            log.error(e.getMessage());
	         }
	         // }//end for
		String url = "redirect:/admin_prod_detail";
		adMapper.updateProd(vo);
		System.out.println(vo.getProd_no());
		rs.addAttribute("prod_no",vo.getProd_no());  //redirect값에 attribute를 하기위해 redirectAttribute사용
		return url;

	}
	
	@GetMapping("/admin_prod_delete")
	public String deleteProd(int prod_no) {
		adMapper.deleteProd(prod_no);
		return "admin/admin_prod_list";
	}
}



