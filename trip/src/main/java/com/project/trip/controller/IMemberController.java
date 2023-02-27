package com.project.trip.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.trip.mapper.IMemberMapper;
import com.project.trip.vo.MemberVO;
import com.project.trip.vo.QNAVO;
import com.project.trip.vo.ReserVO;
import com.project.trip.vo.ReviewVO;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class IMemberController {
	@Autowired
	IMemberMapper mapper;

	@GetMapping("/regMember")
	public void regMember1() {

	}

	@PostMapping("/regMember")
	public String regMember(MemberVO mv) {
		mv.setEmail(mv.getEmail() + "@" + mv.getEmail2());
		if(mv.getEmail_check()==null) {
			mv.setEmail_check("No");
		}
		mapper.insertMember(mv);

		return "redirect:/";
	}

	@GetMapping("/idOverCheck")
	public @ResponseBody String idCheck(String id, Model model) {
		String message = "";
		int result = 0;
		result = mapper.idOverCheck(id);
		if (result == 1) {
			message = "<span style='color:red';>사용불가</span>";
			model.addAttribute("message", message);
		} else {
			message = "<span style='color:green';>사용가능</span>";
			model.addAttribute("message", message);
		}
		return message;
	}

	@GetMapping("login")
	public void login() {

	}

	@PostMapping("login.do")
	public @ResponseBody String loginCheck(String id, String pw, HttpServletRequest request,Model model) {
		int result = mapper.login(id, pw);
		HttpSession session = request.getSession();
		String out = "";
		if (result == 1) {
			MemberVO mv = mapper.selectOne(id);
			String name = mv.getName();
			String authority = mv.getAuthority();
			out = "<script>alert('" + mv.getName() + "님 로그인 성공!');location.href='/';</script>";
			session.setAttribute("id", id);
			session.setAttribute("name", name);
			session.setAttribute("authority", authority);
			
		} else{
			out = "<script>alert('아이디 비밀번호를 확인해주세요');location.href='login';</script>";
		}

		return out;
	}

	@GetMapping("logout.do")
	public @ResponseBody String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		String out = "<script>alert('로그아웃!');location.href='/';</script>";
		return out;
	}

	@GetMapping("/header")
	public void header() {

	}

	@GetMapping("/idPop")
	public @ResponseBody String idPop() {
		String out = "<form action=\"findId\" method=\"post\" name=\"frm1\" id=\"form\">\r\n" + "\r\n"
				+ "		<input type=\"text\" name=\"name\" class=\"input2\" placeholder=\"이름을 입력해주세요\">\r\n" + "\r\n"
				+ "	<br><input type=\"text\" name=\"tel\" class=\"input2\" placeholder=\"전화번호를 입력해주세요\">\r\n" + "\r\n"
				+ "	<br><input type=\"submit\" value=\"아이디찾기\" onclick=\"return idCheck()\" class=\"input2\">\r\n" + "</form>";

		return out;
	}

	@GetMapping("/findId")
	public void findId1() {

	}

	@PostMapping("/findId")
	public String findId2(@Param("fname") String name, @Param("ftel") String tel, Model model) {

		String id = mapper.findId(name, tel);
		model.addAttribute("id", id);

		return "findId";
	}

	@GetMapping("/findPw")
	public  void findPw1() {
		
	}


	@PostMapping("/findPw")
	public String findPw2(MemberVO mv, Model model) {
		String view="findPw";
		mv.setEmail(mv.getEmail() + "@" + mv.getEmail2());
		String pw = mapper.findPw(mv.getId(), mv.getEmail());

		model.addAttribute("pw", pw);

		return view;
	}
	@GetMapping("/agree")
	public void agree() {
		
	}
	@PostMapping("/nonMember")
	public void nonMember() {
		
	}
	@GetMapping("/show_reserList")
	public String admin_reserList(Model model) {
		List<ReserVO> list =mapper.show_reservation();
		model.addAttribute("list",list);
		
		return"admin/show_reserList";
	}
	@GetMapping("/show_qna")
	public String admin_qna(Model model) {
		List<QNAVO> list=mapper.getQnAList();
		model.addAttribute("list",list);
		
		return"admin/show_qna";
	}
	@GetMapping("/show_review")
	public String admin_review(Model model) {
		List<ReviewVO> list=mapper.getReviewAll();
		model.addAttribute("list",list);
		
		return"admin/show_review";
	}
	
}
